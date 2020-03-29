package com.kh.spring.board.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.Pagination;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.board.model.vo.Search;
import com.kh.spring.member.model.service.MemberService;

@Controller
public class BoardController {
	@Autowired
	private BoardService bService;
	@Autowired
	private MemberService mService;

	@RequestMapping("boardList.bo")
	public ModelAndView viewBoardList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		Integer currentPage = page != null ? page : 1;
		ArrayList<Board> boardList = bService.selectBoardList(currentPage);
		ArrayList<Board> boardAllList = bService.BoardAllList();

		if (boardList != null) {
			Map<Integer, Integer> rLength = new HashMap<>();
			// 공지사항 게시글이 먼저 나오게하기 위함
			// 만약 공지사항이 10개 이상이라면 2페이지부터는 나오지 않음.
			ArrayList<Board> bList = new ArrayList<>();

			if (currentPage == 1) {
				for (Board b : boardAllList) {
					if (b.getType() == 1) {
						bList.add(b);
					}
				}
			}

			int bLength = bList.size();
			for (Board b : boardList) {
				if (bLength >= 10) {
					break;
				}

				if (b.getType() == 1) {
					continue;
				}

				bList.add(b);
				bLength++;
			}

			for (Board boa : bList) {
				rLength.put(boa.getbId(), bService.selectBoardReplyList(boa.getbId()).size());
			}

			mv.addObject("rLength", rLength);
			mv.addObject("boardList", bList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.setViewName("board/list");
		} else {
			mv.setViewName("common/errorPage");
		}

		return mv;
	}

	@RequestMapping("viewBoardInsert.bo")
	public String viewBoardInsert(HttpServletRequest request) {
		return "board/insertBoard";
	}

	@RequestMapping("insertBoard.bo")
	public ModelAndView insertBoard(ModelAndView mv, Board board) {
		int result = bService.insertBoard(board);

		if (result > 0) {
			ArrayList<Board> boardList = bService.BoardAllList();
			Board b = bService.selectBoardOne(boardList.get(0).getbId(), false);

			mv.addObject("msg", "게시글이 성공적으로 등록되었습니다");
			mv.addObject("boardList", boardList);
			mv.addObject("detailBoard", b);
			mv.setViewName("board/detail");
		} else {
			System.out.println("board detail 실패!");
		}

		return mv;
	}

	@RequestMapping("viewBoardUpdate.bo")
	public ModelAndView viewBoardUpdate(ModelAndView mv, int bId) {
		Board b = bService.selectBoardOne(bId, false);
		mv.addObject("detailBoard", b);
		mv.setViewName("board/updateBoard");

		return mv;
	}

	@RequestMapping("updateBoard.bo")
	public ModelAndView updateBoard(ModelAndView mv, Board board) {
		int result = bService.updateBoard(board);
		if (result >= 0) {
			Board b = bService.selectBoardOne(board.getbId(), false);
			ArrayList<Board> bList = bService.selectBoardList(1);
			mv.addObject("msg", "게시판 수정이 완료되었습니다");
			mv.addObject("boardList", bList);
			mv.addObject("detailBoard", b);
			mv.setViewName("board/detail");
		} else {
			mv.setViewName("common/errorPage");
		}

		return mv;
	}

	@RequestMapping("deleteBoard.bo")
	public ModelAndView deleteBoard(ModelAndView mv, int bId) {
		if (!bService.selectBoardReplyList(bId).isEmpty()) {
			ArrayList<Reply> deleteReplyList = bService.selectBoardReplyList(bId);
			for (Reply r : deleteReplyList) {
				bService.deleteBoardReply(r.getrId());
			}
		}
		int result = bService.deleteBoard(bId);

		if (result > 0) {
			viewBoardList(mv, 1);
		} else {
			mv.setViewName("common/errorPage");
		}

		return mv;
	}

	@RequestMapping("detailBoard.bo")
	public ModelAndView detailBoard(ModelAndView mv, int bId,
			@RequestParam(value = "page", required = false) Integer page, HttpServletRequest request,
			HttpServletResponse response) {
		Integer currentPage = page != null ? page : 1;

		Board b = null;

		boolean flag = false;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie c : cookies) {
				if (c.getName().equals("bId" + bId)) {
					flag = true;
				}
			}

			if (!flag) {
				Cookie cookie = new Cookie("bId" + bId, String.valueOf(bId));
				cookie.setMaxAge(1 * 24 * 60 * 60);
				response.addCookie(cookie);
			}

			b = bService.selectBoardOne(bId, flag);
		}

		if (b != null) {
			ArrayList<Board> boardList = bService.BoardAllList();

			mv.addObject("boardList", boardList);
			mv.addObject("detailBoard", b);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("board/detail");
		} else {
			System.out.println("board detail 실패!");
		}

		return mv;
	}

	@RequestMapping("insertBoardReply.bo")
	@ResponseBody
	public String insertBoardReply(Board board, String content, HttpSession session) {
		Reply reply = new Reply();

		reply.setbId(board.getbId());
		reply.setWriterId(board.getReferId());
		reply.setWriterNickname(board.getReferNickname());
		reply.setContent(content);

		int result = bService.insertBoardReply(reply);

		if (result > 0) {
			return "success";
		} else {
			return "error";
		}
	}

	@RequestMapping(value = "selectBoardReplyList.bo", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String selectBoardReplyList(int bId) {
		ArrayList<Reply> rList = bService.selectBoardReplyList(bId);
		for (int i = 0; i < rList.size(); i++) {
			rList.get(i).setProfileimg(mService.selectProfileImg(rList.get(i).getWriterId()));
		}
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		return gson.toJson(rList);
	}

	@RequestMapping("updateBoardReply.bo")
	public ModelAndView updateBoardReply(ModelAndView mv, Board board) {
		return mv;
	}

	@RequestMapping("deleteBoardReply.bo")
	public ModelAndView deleteBoardReply(ModelAndView mv, int rId, int bId) {
		int result = bService.deleteBoardReply(rId);

		Board b = bService.selectBoardOne(bId, false);
		ArrayList<Board> boardList = bService.BoardAllList();
		mv.addObject("boardList", boardList);
		mv.addObject("detailBoard", b);
		mv.setViewName("board/detail");

		return mv;
	}

	@RequestMapping(value = "reportReply.bo")
	@ResponseBody
	public String reportReply(int rId) {
		bService.reportReply(rId);

		return "success";
	}

	@RequestMapping("searchBoard.bo")
	public ModelAndView searchBoard(ModelAndView mv, Search search, @RequestParam(value = "page", required = false) Integer page) {
		Integer currentPage = page != null ? page : 1;
		
		if (search.getSearchContent() != "") {
			if (search.getSearchContent().equals("공지") || search.getSearchContent().equals("단어장")
					|| search.getSearchContent().equals("클래스") || search.getSearchContent().equals("잡담")
					|| search.getSearchContent().equals("전체")) {
				switch (search.getSearchContent()) {
				case "공지":
					search.setType(1);
					break;
				case "단어장":
					search.setType(2);
					break;
				case "클래스":
					search.setType(3);
					break;
				case "잡담":
					search.setType(4);
					break;
				default:
					break;
				}
			}

			ArrayList<Board> searchList = bService.searchList(search, currentPage);
			if (searchList != null) {
				Map<Integer, Integer> rLength = new HashMap<>();
				for (Board boa : searchList) {
					rLength.put(boa.getbId(), bService.selectBoardReplyList(boa.getbId()).size());
				}
				mv.addObject("rLength", rLength);
			}

			mv.addObject("boardList", searchList);
			mv.addObject("pi", Pagination.getPageInfo());
			mv.addObject("search", search);
		}
		
		mv.setViewName("board/list");
		return mv;
	}
}
