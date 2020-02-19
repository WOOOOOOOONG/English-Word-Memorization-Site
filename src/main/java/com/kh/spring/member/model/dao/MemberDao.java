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
}
