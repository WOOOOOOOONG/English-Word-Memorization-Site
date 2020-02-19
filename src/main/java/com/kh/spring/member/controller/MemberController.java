package com.kh.spring.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	@RequestMapping("memberList.me")
	public ModelAndView memberList(ModelAndView mv) {
		ArrayList<Member> memberList = mService.selectList();
		System.out.println("mList : " + memberList);
		
		mv.addObject("mList", memberList);
		mv.setViewName("admin/member-manage");
		
		return mv; 
	}
	
	@RequestMapping("updateStatus.me")
	public ModelAndView updateStatus(
			ModelAndView mv,
			@RequestParam(value="mId") String mId,
			@RequestParam(value="userStatus") String status) {
		System.out.println("mid : " + mId);
		System.out.println("status: " + status);
		
		Member m = new Member();
		m.setmId(mId);
		m.setUserStatus(status);
		
		int result = mService.updateStatus(m);
		System.out.println("오나");
		if(result > 0) {
			ArrayList<Member> memberList = mService.selectList();
			
			mv.addObject("mList", memberList);
		}
		
		mv.setViewName("admin/member-manage");
		
		return mv;
	}
}
