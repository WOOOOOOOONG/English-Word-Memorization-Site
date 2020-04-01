package com.kh.spring.admin.controller;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.admin.model.service.AdminService;
import com.kh.spring.admin.model.vo.Inquire;
import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;
import com.kh.spring.member.model.vo.VisitRecord;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller("aController")
public class AdminController {
   @Autowired
   private AdminService aService;
   @Autowired
   private BoardService bService;
   @Autowired
   private ClassService cService;
   @Autowired
   private MemberService mService;
   @Autowired
   private MemberDao mDao;

   @RequestMapping("viewMain.ad")
   public ModelAndView viewMain(ModelAndView mv) {
      ArrayList<Member> memberList = mService.selectList();
      ArrayList<Inquire> inqList = aService.selectInquireList();
      ArrayList<Classs> cList = cService.selectClassList();
      ArrayList<Board> bList = bService.boardViewList();
      ArrayList<Board> noticeList = bService.noticeList();

      mv.addObject("inquireList", inqList);
      mv.addObject("mList", memberList);
      mv.addObject("cList", cList);
      mv.addObject("bList", bList);
      mv.addObject("nList", noticeList);
      mv.addObject("whatclick", "home");

      mv.setViewName("/common/mainPage");

      return mv;
   }

   @RequestMapping("viewTotal.ad")
   public ModelAndView viewTotal(ModelAndView mv) {
      ArrayList<Member> memberList = mService.selectListAll();
      ArrayList<Inquire> inqList = aService.selectInquireList();
      ArrayList<VisitRecord> vr = aService.selectLogList();
      ArrayList<Classs> cList = cService.selectClassList();
      ArrayList<Classs> cvList = cService.classViewList();
	 /* int[] vList = new int[13];
	  for(int i = 1; i <= 12; i++) {
		  vList[i] = 0;
	  }
      for(VisitRecord v : vr) {
    	  int month = Integer.parseInt(v.getVisitDate().toString().substring(5, 7));
      	    vList[month]++;
      }*/
      
      mv.addObject("logList", vr);
      mv.addObject("inquireList", inqList);
      mv.addObject("mList", memberList);
      mv.addObject("cList", cList);
      mv.addObject("cvList", cvList);
      mv.addObject("whatclick", "mypage");
      mv.setViewName("admin/total");

      return mv;
   }

   // InquireList는 관리자 전용 menubar에 넣어야 함
   @RequestMapping("selectInquireList.ad")
   public ModelAndView selectInquireList(ModelAndView mv) {
      ArrayList<Inquire> inqList = aService.selectInquireList();

      mv.addObject("inquireList", inqList);
      mv.setViewName("/admin/response");
      return mv;
   }

   @RequestMapping("memberInquireList.ad")
   public ModelAndView memberInquireList(ModelAndView mv, HttpServletRequest request) {
      Member loginMember = (Member) request.getSession().getAttribute("loginMember");
      if (loginMember != null) {
         ArrayList<Inquire> inqList = aService.selectMemberInquireList(loginMember.getmId());
         mv.addObject("mInquireList", inqList);
         mv.addObject("whatclick", "center");
         mv.setViewName("admin/inquire-list");
      } else {
         mv.addObject("msg", "로그인 후 이용하실 수 있습니다");
         viewMain(mv);
      }

      return mv;
   }

   @RequestMapping("insertInquireView.ad")
   public String insertInquireView(HttpServletRequest request, String reportedId, Integer reportType) {

      ArrayList<Member> mList = mService.selectList();
      ArrayList<Board> bList = bService.BoardAllList();
      ArrayList<Classs> cList = cService.selectClassList();

      request.setAttribute("mList", mList);
      request.setAttribute("bList", bList);
      request.setAttribute("cList", cList);

      if (reportedId != null && reportType != null) {
         request.setAttribute("reportType", reportType);
         request.setAttribute("reportedId", reportedId);
      }

      return "admin/inquire";
   }

   @RequestMapping("insertInquire.ad")
   public ModelAndView insertInquire(ModelAndView mv, Inquire inq) {
      int result = aService.insertInquire(inq);

      if (result > 0) {

         mv.addObject("msg", "문의가 성공적으로 등록되었습니다");

         ArrayList<Inquire> inqList = aService.selectMemberInquireList(inq.getInquirerId());
         mv.addObject("mInquireList", inqList);
      }

      mv.setViewName("admin/inquire-list");
      return mv;
   }

   @RequestMapping("deleteInquire.ad")
   public ModelAndView deleteInquire(ModelAndView mv, int iId, HttpServletRequest request) {
      int result = aService.deleteInquire(iId);
      if (result >= 0) {
         mv.addObject("msg", "문의 삭제가 완료되었습니다");
      }

      memberInquireList(mv, request);
      return mv;
   }

   @RequestMapping("deleteInquireAdmin.ad")
   public ModelAndView deleteInquireAdmin(ModelAndView mv, int iId, HttpServletRequest request) {
      int result = aService.deleteInquire(iId);
      if (result >= 0) {
         mv.addObject("msg", "문의 삭제가 완료되었습니다");
      }

      viewTotal(mv);
      return mv;
   }

   @RequestMapping("/response.ad")
   public ModelAndView insertResponse(HttpServletRequest request, ModelAndView mv) {
      String text = request.getParameter("text");
      String iId = request.getParameter("iId");

      Inquire inq = new Inquire();
      inq.setiId(Integer.parseInt(iId));
      inq.setAnswer(text);

      int result = aService.insertResponse(inq);

      if (result > 0) {
         ArrayList<Inquire> inqList = aService.selectInquireList();
         ArrayList<Member> memberList = mService.selectList();
         ArrayList<VisitRecord> vr = aService.selectLogList();

         mv.addObject("logList", vr);
         mv.addObject("mList", memberList);
         mv.addObject("inquireList", inqList);
         mv.addObject("msg", "문의 응답 작성 완료!");
      } else {
         mv.addObject("msg", "문의 응답 작성 실패!");
      }

      viewTotal(mv);
      return mv;
   }

   @RequestMapping("/responseAdmin.ad")
   public ModelAndView insertResponseAdmin(HttpServletRequest request, ModelAndView mv) {
      String text = request.getParameter("text");
      String iId = request.getParameter("iId");

      Inquire inq = new Inquire();
      inq.setiId(Integer.parseInt(iId));
      inq.setAnswer(text);

      int result = aService.insertResponse(inq);

      if (result > 0) {
         ArrayList<Inquire> inqList = aService.selectInquireList();
         ArrayList<Member> memberList = mService.selectList();
         ArrayList<VisitRecord> vr = aService.selectLogList();

         mv.addObject("logList", vr);
         mv.addObject("mList", memberList);
         mv.addObject("inquireList", inqList);
         mv.addObject("msg", "문의 응답 작성 완료!");
      } else {
         mv.addObject("msg", "문의 응답 작성 실패!");
      }

      String mId = request.getParameter("mId");
      mv.setViewName("redirect:/detailMember.ad?mId=" + mId);
      return mv;
   }

   @RequestMapping("/responseDelete.ad")
   public ModelAndView deleteResponse(int iId, ModelAndView mv) {
      int result = aService.deleteResponse(iId);
      if (result > 0) {
         ArrayList<Inquire> inqList = aService.selectInquireList();
         ArrayList<Member> memberList = mService.selectList();
         ArrayList<VisitRecord> vr = aService.selectLogList();

         mv.addObject("logList", vr);
         mv.addObject("mList", memberList);
         mv.addObject("inquireList", inqList);
         mv.addObject("msg", "문의 응답 삭제 완료!");
      } else {
         mv.addObject("msg", "문의 응답 삭제 실패!");
      }

      mv.setViewName("redirect:/viewTotal.ad");
      return mv;
   }

   @RequestMapping("/responseDeleteAdmin.ad")
   public ModelAndView deleteResponseAdmin(int iId, ModelAndView mv, HttpServletRequest request) {
      int result = aService.deleteResponse(iId);
      if (result > 0) {
         ArrayList<Inquire> inqList = aService.selectInquireList();
         ArrayList<Member> memberList = mService.selectList();
         ArrayList<VisitRecord> vr = aService.selectLogList();

         mv.addObject("logList", vr);
         mv.addObject("mList", memberList);
         mv.addObject("inquireList", inqList);
         mv.addObject("msg", "문의 응답 삭제 완료!");
      } else {
         mv.addObject("msg", "문의 응답 삭제 실패!");
      }

      String mId = request.getParameter("mId");
      mv.setViewName("redirect:/detailMember.ad?mId=" + mId);
      return mv;
   }

   // 방문기록 시간
   @RequestMapping("/visitTime.ad")
   public ModelAndView visitTime(ModelAndView mv) {
      ArrayList<VisitRecord> vr = aService.selectLogList();
      for (VisitRecord v : vr) {
         java.util.Date utilDate = new java.util.Date(v.getVisitDate().getTime());
         java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
         v.setVisitDate(sqlDate);
      }

      mv.addObject("logList", vr);
      mv.setViewName("statistics/visit/time");
      return mv;
   }

   // 방문기록 일
   @RequestMapping("/visitDay.ad")
   public ModelAndView visitDay(ModelAndView mv) {
      ArrayList<VisitRecord> vr = aService.selectLogList();
      mv.addObject("logList", vr);
      mv.setViewName("statistics/visit/day");
      return mv;
   }

   // 방문기록 월
   @RequestMapping("/visitMonth.ad")
   public ModelAndView visitMonth(ModelAndView mv) {
      ArrayList<VisitRecord> vr = aService.selectLogList();

      mv.addObject("logList", vr);
      mv.setViewName("statistics/visit/month");
      return mv;
   }

   @RequestMapping("/total.cl")
   public ModelAndView classTotal(ModelAndView mv) {
      ArrayList<Classs> cList = cService.selectClassList();
      ArrayList<Classs> cvList = cService.classViewList();

      mv.addObject("cList", cList);
      mv.addObject("cvList", cvList);
      mv.setViewName("statistics/class/total");

      return mv;
   }

   @RequestMapping("/classify.cl")
   public ModelAndView classify(ModelAndView mv) {
      ArrayList<Classs> cList = cService.selectClassList();
      ArrayList<Classs> cvList = cService.classViewList();

      mv.addObject("cList", cList);
      mv.addObject("cvList", cvList);
      mv.setViewName("statistics/class/classify");

      return mv;
   }
   
   @RequestMapping("/classifyVoca.ad")
   public String classifyVoca() {
	   return "statistics/voca/classify";
   }

   @RequestMapping("/totalVoca.ad")
   public String totalVoca() {
	   return "statistics/voca/total";
   }
   
   @RequestMapping("/inquireStat.ad")
   public ModelAndView inquireStatistics(ModelAndView mv) {
      ArrayList<Inquire> inq = aService.selectInquireList();

      mv.addObject("inquireList", inq);
      mv.setViewName("statistics/inquire/inquire");
      return mv;
   }

   @RequestMapping("/detailMember.ad")
   public ModelAndView detailMember(ModelAndView mv, String mId) {
      Member mem = mService.selectOne(mId);
      ArrayList<Inquire> inq = aService.selectInquireList();
      ArrayList<ClassMember> classList = cService.selectMyClassList(mId);
      ArrayList<Classs> cList = new ArrayList<>();
      ArrayList<Inquire> iList = new ArrayList<>();
      ArrayList<Reply> memberReplys = bService.selectBoardReplyWriter(mId);
      ArrayList<Board> memberBoards = bService.selectBoardWriter(mId);
      for(ClassMember c : classList) {
         cList.add(cService.selectClassOne(c.getcNo()));
      }
      
      for(Inquire i : inq) {
         if(i.getReportedId() != null) {
            if(i.getReportedId().equals(mId)) {
               iList.add(i);
            }
         }
      }
      
      if(mem != null) {
         mem.setProfileimg(mDao.selectProfileImg(mem));
      }
      
      mv.addObject("memberReplys", memberReplys);
      mv.addObject("memberBoards", memberBoards);
      mv.addObject("detailMember", mem);
      mv.addObject("iList", iList);
      mv.addObject("cList", cList);
      
      mv.setViewName("admin/detailMember");
      
      return mv;
   }
}