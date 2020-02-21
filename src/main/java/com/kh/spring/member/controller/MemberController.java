package com.kh.spring.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

@SessionAttributes({"loginMember"})
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
	// 아이디 중복검사
	@RequestMapping("idCheck.ck")
	public void idCheck(String mId ,HttpServletResponse response) throws IOException {
		int result = mService.idCheck(mId);
		PrintWriter out = response.getWriter();
		if(result > 0) {
			out.print("fail");
		}else {
			out.print("success");
		}
	}
	// 회원가입
	@RequestMapping("insert.me")
	public String insertMember(Member m ,@RequestParam(value="add1") String add1,
			@RequestParam(value="add2") String add2,
			@RequestParam(value="add3") String add3) throws IOException {
		
		String address = add1+"/"+add2+"/"+add3;
		
		m.setAddress(address);
		int result = mService.insertMember(m);
		
		return "common/login";
	}
	// 아이디 찾기
	@RequestMapping("findid.ck")
	public ModelAndView findMemberId(ModelAndView mv,@RequestParam(value="findEmail")String email) {
		String msg="찾으신 결과가 없습니다.";
		
		String id = mService.findMemberId(email);
		if(id!=null) {
			msg="찾으신 아이디는 "+id+"입니다.";
		}
		mv.addObject("msg", msg);
		mv.setViewName("common/login");
		return mv;
	}
	// 아이디로 이메일 가져오기
	@RequestMapping("findemail.ck")
	public void findEmail(String id,HttpServletResponse response) throws IOException {
		String email= mService.findEmail(id);
		PrintWriter out = response.getWriter();
		System.out.println(email);
		if(email.isEmpty()) {
			out.print("fail");
		}else {
			out.print(email);
		}
	}
	// 비밀번호 변경
	@RequestMapping("change.pwd")
	public ModelAndView changeUserPwd(ModelAndView mv,String changePwdid ,String changePwd) {
		Member m = new Member();
		m.setmId(changePwdid);
		m.setPwd(changePwd);
		
		int result = mService.changeMemberPwd(m);
		
		if(result >0) {
			mv.setViewName("common/login");
		}else {
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	// 로그인
	@RequestMapping(value="Memberlogin.me", method=RequestMethod.POST)
	public ModelAndView memberLogin(
			String loginmId, String loginpwd,
			ModelAndView mv) {
		
		Member mem = new Member();
		mem.setmId(loginmId);
		mem.setPwd(loginpwd);
		
		Member loginMember = mService.loginMember(mem);
		mv.addObject("loginMember", loginMember);
		mv.setViewName("mypage/mypage");
		return mv;
	}
	// 로그아웃
	@RequestMapping("Memberlogout.me")
	public String logout(HttpSession session) {
		session.invalidate();
		return "common/login";
	}
}
