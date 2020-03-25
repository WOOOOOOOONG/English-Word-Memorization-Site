package com.kh.spring.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.admin.model.vo.Inquire;
import com.kh.spring.member.model.vo.VisitRecord;

@Repository("aDao")
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Inquire> selectInquireList() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectInquireList");
	}

	public ArrayList<Inquire> selectMemberInquireList(String inquirerId) {
		return (ArrayList)sqlSession.selectList("adminMapper.selectMemberInquireList", inquirerId);
	}

	public Inquire selectInquireOne(int iId) {
		return sqlSession.selectOne("adminMapper.selectInquireOne", iId);
	}

	public int deleteInquire(int iId) {
		return sqlSession.delete("adminMapper.deleteInquire", iId);
	}

	public int insertResponse(Inquire inq) {
		return sqlSession.insert("adminMapper.insertResponse", inq);
	}

	public int deleteResponse(int iId) {
		return sqlSession.update("adminMapper.deleteResponse", iId);
	}

	public ArrayList<VisitRecord> selectLogList() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectLogList");
	}

	public int insertInquire(Inquire inq) {
		return sqlSession.insert("adminMapper.insertInquire", inq);
	}
}
