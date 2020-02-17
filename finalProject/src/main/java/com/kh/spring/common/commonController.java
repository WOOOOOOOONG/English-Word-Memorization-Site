package com.kh.spring.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.spring.mail.MailSender;



@Controller
public class commonController {
	@RequestMapping("/login.me")
	public String gologin() {
		return "common/login";
	}
	@RequestMapping(value="/mypage.me")
	public String gomyPage() {
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
