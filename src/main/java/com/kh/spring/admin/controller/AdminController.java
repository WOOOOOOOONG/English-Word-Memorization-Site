package com.kh.spring.admin.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		
		mv.addObject("inquireList", inqList);
		mv.setViewName("response");
		return mv;
	}
	
	@RequestMapping("selectInquireOne.ad")
	public ModelAndView selectInquireOne(int iId,
			ModelAndView mv) {
		return mv;
	}
	
	@RequestMapping("response.ad")
	public ModelAndView insertResponse(Inquire inq,
			ModelAndView mv) {
		return mv;
	}
}
