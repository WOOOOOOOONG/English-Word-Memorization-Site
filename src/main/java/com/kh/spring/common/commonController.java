package com.kh.spring.common;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Category;
import com.kh.spring.mail.MailSender;
import com.kh.spring.member.model.vo.Member;



@SessionAttributes({"classs","cNo","cList","cmList","cateList"})
@Controller
public class commonController {
	@Autowired
	private ClassService cService;
	
	@RequestMapping(value="/login.me")
	public String gologin() {
		return "common/login";
	}
	@RequestMapping(value="/mypage.me")
	public String gomyPage(Model mv,HttpServletRequest request) {
		// 20200313 Hyeok
		Member user = (Member) request.getSession().getAttribute("loginMember");
		ArrayList<ClassMember> cmList = cService.selectMyClassList(user.getmId());
		ArrayList<Classs> cList = new ArrayList<>();
		ArrayList<Category> cateList = new ArrayList<>();
		cateList = cService.selectCateList();
		
		if(!cmList.isEmpty()) {
			for(int i = 0 ; i < cmList.size(); i++) {
				Classs classs = cService.selectClassOne(cmList.get(i).getcNo());
				cList.add(classs);
				
			}
			mv.addAttribute("cmList",cmList);
			mv.addAttribute("cList",cList);
			mv.addAttribute("cateList",cateList);
		}
				
		return "mypage/mypage";
		
	}
	// 이메일 인증코드 발송 메소드
	@RequestMapping(value="/email.ck")
	public void checkEmail(HttpServletResponse response,String email, String code) throws IOException {
		
		//Member result = new MemberService().checkEmail(findEmail,findPhone);
		
		
		String content = "이메일 인증코드는 "+code+"입니다.";
		MailSender mailSender = new MailSender();
		mailSender.sendMail(email,"테스트","[SEW] 이메일 인증코드입니다.",content);
		PrintWriter out = response.getWriter();
		out.write("success");
	}
}
