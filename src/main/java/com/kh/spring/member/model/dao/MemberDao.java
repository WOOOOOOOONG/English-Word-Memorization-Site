package com.kh.spring.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Member> selectList() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectList");
	}

	
	public int updateStatus(Member m) {
		return sqlSession.update("memberMapper.updateStatus", m);
	}

	public int idCheck(String mId) {
		return sqlSession.selectOne("memberMapper.idCheck", mId);
	}

	public String findMemberId(String email) {
		return sqlSession.selectOne("memberMapper.findMemberId",email);
	}

	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public String findEmail(String mId) {
		return sqlSession.selectOne("memberMapper.findEmail",mId);
	}

	public int changeMemberPwd(Member m) {
		// TODO Auto-generated method stub
		return sqlSession.update("memberMapper.changeMemberPwd",m);
	}

	public Member selectMember(Member m) {
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}
}
