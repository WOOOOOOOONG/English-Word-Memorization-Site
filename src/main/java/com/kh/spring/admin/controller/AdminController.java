package com.kh.spring.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.admin.model.service.AdminService;
import com.kh.spring.admin.model.vo.Inquire;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;
import com.kh.spring.member.model.vo.VisitRecord;

@Controller
public class AdminController {
	@Autowired
	private AdminService aService;
	@Autowired
	private MemberService mService;
	
	@RequestMapping("viewMain.ad")
	public String viewMain() {
		return "/common/mainPage";
	}
	
	@RequestMapping("viewTotal.ad")
	public ModelAndView viewTotal(ModelAndView mv) {
		ArrayList<Member> memberList = mService.selectList();
		ArrayList<Inquire> inqList = aService.selectInquireList();

		mv.addObject("inquireList", inqList);
		mv.addObject("mList", memberList);
		mv.setViewName("admin/total");
		
		return mv; 
	}
	
	// InquireList는 관리자 전용 menubar에 넣어야 함
	@RequestMapping("selectInquireList.ad")
	public ModelAndView selectInquireList(
			ModelAndView mv) {
		ArrayList<Inquire> inqList = aService.selectInquireList();

		mv.addObject("inquireList", inqList);
		mv.setViewName("/admin/response");
		return mv;
	}
	
	@RequestMapping("memberInquireList.ad")
	public ModelAndView memberInquireList(
			ModelAndView mv,
			HttpServletRequest request) {
		mv.addObject("msg", "문의가 성공적으로 등록되었습니다");
			
		Member loginMember = (Member)request.getSession().getAttribute("loginMember");
		System.out.println(loginMember);
		ArrayList<Inquire> inqList = aService.selectMemberInquireList(loginMember.getmId());
		
		if(!inqList.isEmpty()) {
			mv.addObject("mInquireList", inqList);
		}
		
		mv.setViewName("admin/inquire-list");
		return mv;
	}
	
	@RequestMapping("insertInquireView.ad")
	public String insertInquireView() {	
		return "admin/inquire";
	}
	
	@RequestMapping("insertInquire.ad")
	public ModelAndView insertInquire(
			ModelAndView mv,
			Inquire inq) {
		int result = aService.insertInquire(inq);
		
		if(result > 0) {
			mv.addObject("msg", "문의가 성공적으로 등록되었습니다");
			
			ArrayList<Inquire> inqList = aService.selectMemberInquireList(inq.getInquirerId());
			mv.addObject("mInquireList", inqList);
		}
		
		mv.setViewName("admin/inquire-list");
		return mv;
	}
	
	@RequestMapping("/response.ad")
	public ModelAndView insertResponse(
			HttpServletRequest request,
			ModelAndView mv) {
		String text = request.getParameter("text");
		String iId = request.getParameter("iId");
		
		
		Inquire inq = new Inquire();
		inq.setiId(Integer.parseInt(iId));
		inq.setAnswer(text);
		
		int result = aService.insertResponse(inq);
		if(result > 0) {
			ArrayList<Inquire> inqList = aService.selectInquireList();
			mv.addObject("inquireList", inqList);
			mv.addObject("msg", "문의 응답 작성 완료!");
		}else {
			mv.addObject("msg", "문의 응답 작성 실패!");
		}
		
		mv.setViewName("/admin/response");
		return mv;
	}
	
	@RequestMapping("/responseDelete.ad")
	public ModelAndView deleteResponse(int iId,
			ModelAndView mv) {
		int result = aService.deleteResponse(iId);
		if(result > 0) {
			ArrayList<Inquire> inqList = aService.selectInquireList();
			
			mv.addObject("inquireList", inqList);
			mv.addObject("msg", "문의 응답 삭제 완료!");
		}else {
			mv.addObject("msg", "문의 응답 삭제 실패!");
		}
		
		mv.setViewName("/admin/response");
		return mv;
	}
	
	// 방문기록 시간
	@RequestMapping("/visitTime.ad")
	public ModelAndView visitTime(ModelAndView mv) {
		ArrayList<VisitRecord> vr = aService.selectLogList();
		for(VisitRecord v : vr) {
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
	
	@RequestMapping("/inquireStat.ad")
	public ModelAndView inquireStatistics(
			ModelAndView mv) {
		ArrayList<Inquire> inq = aService.selectInquireList();
		
		mv.addObject("inquireList", inq);
		mv.setViewName("statistics/inquire/inquire");
		return mv;
	}
}
