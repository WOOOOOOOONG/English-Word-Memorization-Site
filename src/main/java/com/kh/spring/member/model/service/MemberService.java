package com.kh.spring.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;

@Service("mService")
public class MemberService {
	@Autowired
	private MemberDao mDao;

	public ArrayList<Member> selectList() {
		return mDao.selectList();
	}

	public int updateStatus(Member m) {
		return mDao.updateStatus(m);
	}
	
}
