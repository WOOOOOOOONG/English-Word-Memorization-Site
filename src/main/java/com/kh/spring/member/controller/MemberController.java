package com.kh.spring.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.admin.controller.AdminController;
import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.friend.model.service.FriendService;
import com.kh.spring.friend.model.vo.Friend;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

@SessionAttributes({"loginMember","friendList","groupList"})
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	@Autowired
	private FriendService fService;
	@Autowired
	private AdminController aController;
	
	
	@RequestMapping("memberList.me")
	public ModelAndView memberList(ModelAndView mv) {
		ArrayList<Member> memberList = mService.selectList();
		mv.addObject("mList", memberList);
		mv.setViewName("admin/member-manage");
		
		return mv; 
	}
	
	@RequestMapping("updateStatus.me")
	public ModelAndView updateStatus(
			ModelAndView mv,
			@RequestParam(value="mId") String mId,
			@RequestParam(value="userStatus") String status) {
		
		Member m = new Member();
		m.setmId(mId);
		m.setUserStatus(status);
		
		int result = mService.updateStatus(m);
		if(result > 0) {
			ArrayList<Member> memberList = mService.selectListAll();
			
			mv.addObject("mList", memberList);
		}
		
		aController.viewTotal(mv);
		
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
	public String insertMember(RedirectAttributes rd,Member m ,@RequestParam(value="add1") String add1,
			@RequestParam(value="add2") String add2,
			@RequestParam(value="add3") String add3) throws IOException {
		
		String address = add1+"/"+add2+"/"+add3;
		m.setAddress(address);
		m.setProfileimg("defaultimg.png");
		int num = (int) (Math.random()*1000+1);
		m.setNickname("닉네임"+num);
		
		int result = mService.insertMember(m);
		String msg="회원가입이 완료되었습니다.";
		if(result < 1) msg="회원가입이 실패하였습니다.";
		
		rd.addFlashAttribute("msg", msg);
		return "redirect:login.me";
	}
	// 아이디 찾기
	@RequestMapping("findid.ck")
	public String findMemberId(RedirectAttributes rd,
			@RequestParam(value="findEmail")String email) {
		String msg="찾으신 결과가 없습니다.";
		
		String id = mService.findMemberId(email);
		if(id.length() > 3) {
			String star = "";
			for(int i=0; i<id.length()-3; i++) {
				star += "*";
			}
			id = id.substring(0, 3)+star;
		}
		if(id!=null) {
			msg="찾으신 아이디는 "+id+"입니다.";
		}
		rd.addFlashAttribute("msg", msg);
		return "redirect:login.me";
	}
	// 아이디로 이메일 가져오기 ajax
	@RequestMapping("findemail.ck")
	public void findEmail(String id,HttpServletResponse response) throws IOException {
		String email= mService.findEmail(id);
		PrintWriter out = response.getWriter();
		if(email.isEmpty()) {
			out.print("fail");
		}else {
			out.print(email);
		}
	}
	// 비밀번호 변경
	@RequestMapping("change.pwd")
	public String changeMemberPwd(RedirectAttributes rd,String changePwdid ,String changePwd) {
		Member m = new Member();
		m.setmId(changePwdid);
		m.setPwd(changePwd);
		String msg="";
		int result = mService.changeMemberPwd(m);
		
		if(result >0) {
			msg = "비밀번호가 변경되었습니다.";
		}else {
			msg = "비밀번호변경오류!!";
		}
		rd.addFlashAttribute("msg", msg);
		return "redirect:login.me";
	}
	// 로그인
	@RequestMapping(value="Memberlogin.me", method=RequestMethod.POST)
	public String memberLogin(
			String loginmId, String loginpwd,
			Model model,RedirectAttributes rd, HttpServletRequest request) {
		Member mem = new Member();
		mem.setmId(loginmId);
		mem.setPwd(loginpwd);

		Member loginMember = mService.loginMember(mem);
		if(loginMember != null) {
			mService.insertVisit(loginMember);	
			ArrayList<Friend> flist = fService.friendList(loginMember.getmId());
			HashMap<Integer,String> glist = new HashMap<Integer,String>();
			glist.put(0, "일반");
			
			if(!flist.isEmpty()) {
				for(int i=0; i<flist.size();i++) {
					if(!glist.containsValue(flist.get(i).getGroupName())){
						glist.put(i+1, flist.get(i).getGroupName());
					}
				}
				
			}
			
			model.addAttribute("friendList",flist);
			model.addAttribute("groupList",glist);
			model.addAttribute("loginMember", loginMember);
			return "redirect:mypage.me";
		}else {
			rd.addFlashAttribute("msg", "사용자 정보가 일치하지 않습니다.");
			
			String referer = request.getHeader("Referer");
			if(referer.length() == 29) {
				referer = "viewMain.ad";
			}
			   return "redirect:"+ referer;
		}
	}
	// 로그아웃
	@RequestMapping("Memberlogout.me")
	public String logout(SessionStatus status, HttpSession session) {
		status.setComplete();
		session.invalidate();
		return "redirect:login.me";
		
	}
	// 회원탈퇴
	@RequestMapping("deleteMember.do")
	public String deleteMember(RedirectAttributes rd,Model model,SessionStatus status) {
		Member member = ((Member)model.getAttribute("loginMember"));
		int result = mService.deleteMember(member.getmId());
		
		if(result > 0 ) {
			status.setComplete();
			rd.addFlashAttribute("msg", "언젠가 다시 방문해주세요!");
		}else {
			rd.addFlashAttribute("msg", "회원 탈퇴 실패");
		}
		
		return "redirect:viewMain.ad";
	}
	// 프로필 수정
	@RequestMapping("profile.me")
	public String updateProfile(RedirectAttributes rd,HttpServletRequest request,Member m,
			@RequestParam(value="photoinput", required=false) MultipartFile file, Model model) {
		int result = 0;
		Member changemember = ((Member)model.getAttribute("loginMember"));
		if(!file.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file, request, m.getmId());
			
			if(renameFileName != null) {
				m.setProfileimg(renameFileName);
				deleteFile(request,((Member)model.getAttribute("loginMember")).getProfileimg());
				result += mService.updateProfileImg(m);
				changemember.setProfileimg(m.getProfileimg());
			}
		}
		if(m.getNickname() == null) {
			m.setNickname(changemember.getNickname());
		}
		
		result += mService.updateProfile(m);
		if(result >0) {
			changemember.setIntroduce(m.getIntroduce());
			changemember.setNickname(m.getNickname());
			
			model.addAttribute("loginMember", changemember);
			rd.addFlashAttribute("msg", "프로필 변경에 성공하였습니다.");
		}else {
			rd.addFlashAttribute("msg", "프로필 변경에 실패하였습니다....");
		}
		
		return "redirect:mypage.me";
	}
	// 닉네임 중복체크
	@RequestMapping("mynickname.ck")
	public void checkNickname(String nickname,HttpServletResponse response) throws IOException {
		int rr = mService.selectNickName(nickname);
		PrintWriter out = response.getWriter();
		
		if(rr > 0) {
			out.print("bad");
		}else {
			out.print("good");
		}
	}
	// 개인정보 수정
	@RequestMapping("update.me")
	public String updateMember(RedirectAttributes rd,Member m ,@RequestParam(value="add1") String add1,
			@RequestParam(value="add2") String add2,SessionStatus status,
			@RequestParam(value="add3") String add3,Model model) {
		String address = add1+"/"+add2+"/"+add3;
		m.setAddress(address);
		int result = mService.updateMember(m);
		Member loginMember = (Member) model.getAttribute("loginMember");
		
		if(result < 1) {
			rd.addFlashAttribute("msg", "변경에 실패하였습니다.");
		}else {
			rd.addFlashAttribute("msg", "개인정보 수정 완료.");
			
			loginMember.setAddress(address);
			loginMember.setBirthDate(m.getBirthDate());
			loginMember.setName(m.getName());
			model.addAttribute("loginMember", loginMember);
		}
		if(m.getPwd() != null) {
			result = mService.changeMemberPwd(m);
			if(result >0) {
				status.setComplete();
				rd.addFlashAttribute("msg", "비밀번호 변경시에는 다시 로그인하셔야 합니다.");
				return "redirect:login.me";
			}
		}
		return "redirect:mypage.me";
	}
	// 시스템 메시지 확인후 변경
	@RequestMapping("updateMsgStatus.do")
	public void updateMsgStatus(String mId,Model m,HttpServletResponse response) throws IOException {
		int result = mService.updateMsgStatus(mId);
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			Member loginMember = (Member) m.getAttribute("loginMember");
			loginMember.setMsgStatus("N");
			m.addAttribute("loginMember", loginMember);
			out.print("good");
		}else {
			out.print("bad");
		}
	}
	
	
	// 파일 삭제
	private void deleteFile(HttpServletRequest request, String img) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\profileimg";
		File file = new File(savePath+"\\"+img);
		if(file.exists()) {
			file.delete();
		}
	}

	// 파일 저장
	public String saveFile(MultipartFile file, HttpServletRequest request, String mId) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\profileimg"; // 파일 경로 수정

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}
		String originFileName = file.getOriginalFilename();
		String renameFileName = mId+"img"
				+ originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 저장

		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return renameFileName;

	}
}
