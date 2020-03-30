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
	public ArrayList<Member> selectListAll() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectListAll");
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


	public String selectProfileImg(Member loginUser) {
		String mId = loginUser.getmId();
		return sqlSession.selectOne("memberMapper.selectProfileImg",mId);
	}


	public int updateProfile(Member m) {
		return sqlSession.update("memberMapper.updateProfile",m);
	}

	public int updateProfileImg(Member m) {
		return sqlSession.update("memberMapper.updateProfileImg",m);
	}
	public int insertProfileImg(Member m) {
		return sqlSession.insert("memberMapper.insertProfileImg",m);
	}

	public void insertVisit(Member loginMember) {
		sqlSession.insert("memberMapper.insertVisit", loginMember);
	}


	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}
	public String getNickname(String fId) {
		return sqlSession.selectOne("memberMapper.getNickname", fId);
	}

	public int checkEmail(String email) {
		return sqlSession.selectOne("memberMapper.checkEmail",email);
	}
	public Member selectOne(String mId) {
		return sqlSession.selectOne("memberMapper.selectOne", mId);
	}
	public int selectNickName(String nickname) {
		return sqlSession.selectOne("memberMapper.selectNickname",nickname);
	}
	public int deleteMember(String mId) {
		return sqlSession.update("memberMapper.deleteMember",mId);
	}
	public int updateMsgStatus(String mId) {
		return sqlSession.update("memberMapper.updateMsgStatus",mId);
	}
	public void adminChat(String fId) {
		sqlSession.update("memberMapper.adminChat", fId);
	}
}
