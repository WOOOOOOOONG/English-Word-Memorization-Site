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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Category;
import com.kh.spring.mail.MailSender;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;



@SessionAttributes({"classs","cNo","cList","cmList","cateList","mycList","whatclick"})
@Controller
public class commonController {
	@Autowired
	private ClassService cService;
	@Autowired
	private MemberService mService;
	@RequestMapping(value="/login.me")
	public String gologin(String n,Model mv) {
		if(n != null) {
			mv.addAttribute("newuser", "yes");
		}
		mv.addAttribute("whatclick", "");
		return "common/login";
	}
	@RequestMapping(value="/mypage.me")
	public String gomyPage(Model mv,HttpServletRequest request) {
		// 20200313 Hyeok
		Member user = (Member) request.getSession().getAttribute("loginMember");
		if(user == null) {
			return "redirect:viewMain.ad";
		}else if(user.getmId().equals("admin")) {
			return "redirect:viewTotal.ad";
		}else {
		ArrayList<ClassMember> cmList = cService.selectMyClassList(user.getmId());
		ArrayList<Classs> cList = new ArrayList<>();
		ArrayList<Category> cateList = new ArrayList<>();
		cateList = cService.selectCateList();
	
		if(!cmList.isEmpty()) {
			for(int i = 0 ; i < cmList.size(); i++) {
				Classs classs = cService.selectClassOne(cmList.get(i).getcNo());
				cList.add(classs);
				
			}
			System.out.println(cList);
			mv.addAttribute("cmList",cmList);
			mv.addAttribute("cList",cList);
			mv.addAttribute("mycList",cList);
			mv.addAttribute("cateList",cateList);
			mv.addAttribute("whatclick", "mypage");
		}
				
		return "mypage/mypage";
		}
		
	}
	// 이메일 인증코드 발송 메소드
	   @RequestMapping(value="/email.ck")
	   public void checkEmail(HttpServletResponse response,String email, String code) throws IOException {
	      PrintWriter out = response.getWriter();
	      int result = mService.checkEmail(email);
	      if (result < 1) {
	         String content = "안녕하세요 SEW입니다 \n 요청하신 인증코드는     "+code+"    입니다.\n"
	               + "SEW 본인 확인 메일입니다. 아래 인증번호를 입력하고, 본인 인증을 완료하여 주십시오.\n" + 
	               "중요: 인증번호는 5분후에 만료됩니다. 5분 내로 입력하여 주시기 바랍니다.\n" + 
	                "Sudden Eager Where \n SEW";
	               
	         MailSender mailSender = new MailSender();
	         mailSender.sendMail(email,"newuser","[SEW] 이메일 인증코드입니다.",content);
	         
	         out.write("success");
	      }else {
	         
	         out.write("중복된 이메일입니다.");
	      }
	      
	   }
	   
	   @RequestMapping(value="/email2.ck")
	   public void checkEmail2(HttpServletResponse response,String email, String code) throws IOException {
	      PrintWriter out = response.getWriter();
	      int result = mService.checkEmail(email);
	      if (result > 0) {
	         String content = "안녕하세요 SEW입니다 \n 요청하신 인증코드는     "+code+"    입니다.\n"
	               + "SEW 본인 확인 메일입니다. 아래 인증번호를 입력하고, 본인 인증을 완료하여 주십시오.\n" + 
	               "중요: 인증번호는 5분후에 만료됩니다. 5분 내로 입력하여 주시기 바랍니다.\n" + 
	                "Sudden Eager Where \n SEW";
	         MailSender mailSender = new MailSender();
	         mailSender.sendMail(email,"newuser","[SEW] 이메일 인증코드입니다.",content);
	         
	         out.write("success");
	      }else {
	         
	         out.write("없는 이메일입니다.");
	      }
	      
	   }
}
