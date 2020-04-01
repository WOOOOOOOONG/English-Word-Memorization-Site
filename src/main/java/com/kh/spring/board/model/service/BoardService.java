package com.kh.spring.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.board.model.dao.BoardDao;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.PageInfo;
import com.kh.spring.board.model.vo.Pagination;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.board.model.vo.Search;

@Service("bService")
public class BoardService {
	@Autowired
	private BoardDao bDao;
	
	public int getListCount() {
		return bDao.getListCount();
	}
	
	public ArrayList<Board> selectBoardList(int currentPage) {
		// 1. 게시글 개수 조회
		int listCount = bDao.getListCount();
		
		// 페이지 정보 저장
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 2. 게시글 리스트 조회
		return bDao.selectBoardList(pi);
	}

	public ArrayList<Board> selectBoardWriter(String mId) {
		return bDao.selectBoardWriter(mId);
	}
	
	public ArrayList<Board> BoardAllList() {
		return bDao.BoardAllList();
	}
	
	public Board selectBoardOne(int bId, boolean flag) {
		// 1. 조회수 증가
		if(!flag) { // 해당 글을 읽지 않았다면(flag가 false)
			bDao.addReadCount(bId);
		}
		
		// insert시 에러 발생 유도
		// 내가 클릭했던 글이 조회수가 증가하지 않았는지 확인해보기
		// Exception으로 인해 rollback이 일어남
		// bDao.insertBoard(new Board());
		
		// 2. 게시글 조회
		return bDao.selectBoardOne(bId);
	}

	public int insertBoard(Board board) {
		return bDao.insertBoard(board);
	}

	public int updateBoard(Board board) {
		return bDao.updateBoard(board);
	}

	public int deleteBoard(int bId) {
		return bDao.deleteBoard(bId);
	}

	public int insertBoardReply(Reply reply) {
		return bDao.insertBoardReply(reply);
	}

	public ArrayList<Reply> allBoardReplyList() {
		return bDao.allBoardReplyList();
	}
	
	public ArrayList<Reply> selectBoardReplyList(int bId) {
		return bDao.selectBoardReplyList(bId);
	}

	public void reportReply(Reply r) {
		bDao.reportReply(r);
	}

	public ArrayList<Board> searchList(Search search, int page) {
		int listCount = bDao.getSearchListCount(search);
		PageInfo pi = Pagination.getPageInfo(page, listCount);
				
		return bDao.searchList(search, pi);
	}

	public int deleteBoardReply(int rId) {
		return bDao.deleteBoardReply(rId);
	}

	public ArrayList<Board> noticeList() {
		return bDao.noticeList();
	}

	public ArrayList<Board> boardViewList() {
		return bDao.boardViewList();
	}

	public Reply selectReplyOne(int rId) {
		return bDao.selectReplyOne(rId);
	}

	public ArrayList<Reply> selectBoardReplyWriter(String mId) {
		return bDao.selectBoardReplyWriter(mId);
	}
}
