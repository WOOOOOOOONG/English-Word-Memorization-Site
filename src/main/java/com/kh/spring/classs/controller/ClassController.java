package com.kh.spring.classs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ClassController {
	
	// 클래스 리스트 보러감
	@RequestMapping("ClassList.do")
	public ModelAndView classList(ModelAndView mv) {
		mv.setViewName("classs/classListView");
		return mv;
	}
	
	// 클래스 상세정보 보러가기
	@RequestMapping("classdetail.do")
	public ModelAndView classDetail(ModelAndView mv) {
		mv.setViewName("classs/classDetailView");
		return mv;
	}
	
	@RequestMapping("classPorm.do")
	public ModelAndView classInsertForm(ModelAndView mv) {
		mv.setViewName("classs/insertClassForm");
		return mv;
	}
	
	@RequestMapping("myClass.do")
	public ModelAndView classDetailView(ModelAndView mv) {
		mv.setViewName("classs/myClassView");
		return mv;
	}
	
	// 클래스 시험목록 누르면 가는 메소드
	@RequestMapping("classTestList.do")
	public ModelAndView classTestList(ModelAndView mv) {
		mv.setViewName("classs/classTestList");
		return mv;
	}
	
	// 클래스 멤버 권한 관리 사이트
	@RequestMapping("classMemberRight.do")
	public ModelAndView classMemberRight(ModelAndView mv) {
		mv.setViewName("classs/classMemberRight");
		return mv;
	}
	
	// 클래스 멤버 시험 보기
	@RequestMapping("classMemberTest.do")
	public ModelAndView classMemberTest(ModelAndView mv) {
		mv.setViewName("classs/classMemberTest");
		return mv;
	}
	
	// 시험 만들기
	@RequestMapping("createTest.do")
	public ModelAndView createTest(ModelAndView mv) {
		mv.setViewName("classs/createTest");
		return mv;
	}

}
