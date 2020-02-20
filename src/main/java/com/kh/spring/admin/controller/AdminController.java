package com.kh.spring.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.admin.model.service.AdminService;
import com.kh.spring.admin.model.vo.Inquire;

@Controller
public class AdminController {
	@Autowired
	private AdminService aService;
	
	// InquireList는 관리자 전용 menubar에 넣어야 함
	@RequestMapping("selectInquireList.ad")
	public ModelAndView selectInquireList(
			ModelAndView mv) {
		ArrayList<Inquire> inqList = aService.selectInquireList();

		System.out.println("inqList : " + inqList);
		mv.addObject("inquireList", inqList);
		mv.setViewName("/admin/response");
		return mv;
	}
	
	@RequestMapping("insertInquire.ad")
	public ModelAndView insertInquire(
			ModelAndView mv,
			HttpServletRequest request) {
		System.out.println("iId : " + request.getParameter("iId"));
		System.out.println("text : " + request.getParameter("text"));
		return mv;
	}
	
	@RequestMapping("response.ad")
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
	
	@RequestMapping("responseDelete.ad")
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
}
