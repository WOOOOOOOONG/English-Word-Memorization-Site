package com.kh.spring.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.admin.model.vo.Inquire;

@Repository("aDao")
public class AdminDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Inquire> selectInquireList() {
		return (ArrayList)sqlSession.selectList("adminMapper.selectInquireList");
	}
}
