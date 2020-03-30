package com.kh.spring.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;

@Service("mService")
public class MemberService {
	@Autowired
	private MemberDao mDao;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	public ArrayList<Member> selectList() {
		return mDao.selectList();
	}
	public ArrayList<Member> selectListAll() {
		return mDao.selectListAll();
	}
	public int updateStatus(Member m) {
		return mDao.updateStatus(m);
	}

	public int idCheck(String mId) {
		return mDao.idCheck(mId);
	}

	public String findMemberId(String email) {
		return mDao.findMemberId(email);
	}

	public int insertMember(Member m) {
		String encPwd= bcryptPasswordEncoder.encode(m.getPwd());
		m.setPwd(encPwd);
		return (mDao.insertMember(m)+mDao.insertProfileImg(m));
	}

	public String findEmail(String id) {
		return mDao.findEmail(id);
	}

	public int changeMemberPwd(Member m) {
		String encPwd= bcryptPasswordEncoder.encode(m.getPwd());
		m.setPwd(encPwd);
		
		return mDao.changeMemberPwd(m);
	}
	
	public Member loginMember(Member m) {
		
		Member loginUser = mDao.selectMember(m);

		if(loginUser != null && bcryptPasswordEncoder.matches(m.getPwd(), loginUser.getPwd())) {
			loginUser.setProfileimg(mDao.selectProfileImg(loginUser));
		}else {
			loginUser = null;
		}
		return loginUser;
	}


	public int updateProfile(Member m) {
		return mDao.updateProfile(m);
	}


	public int updateProfileImg(Member m) {
		return mDao.updateProfileImg(m);
	}


	public void insertVisit(Member loginMember) {
		mDao.insertVisit(loginMember);
	}
	public String selectProfileImg(String mId) {
		Member m = new Member();
		m.setmId(mId);
		return mDao.selectProfileImg(m);
	}


	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}
	public String getNickname(String fId) {
		return mDao.getNickname(fId);
	}

	public int checkEmail(String email) {
		return mDao.checkEmail(email);
	}
	public Member selectOne(String mId) {
		return mDao.selectOne(mId);
	}


	public int selectNickName(String nickname) {
		return mDao.selectNickName(nickname);
	}
	public int deleteMember(String mId) {
		return mDao.deleteMember(mId);
	}
	public int updateMsgStatus(String mId) {
		return mDao.updateMsgStatus(mId);
	}
	public void adminChat(String fId) {
		mDao.adminChat(fId);
	}
}
