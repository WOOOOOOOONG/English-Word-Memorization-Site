package com.kh.spring.classs.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Storage;

@Repository("cDao")
public class ClassDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 클래스 넣기
	public int insertClasss(Classs c) {
		return sqlSession.insert("ClasssMapper.insertClass",c);
	}

	// 넣은 클래스 아이디가져오기
	public String selectCNoOne(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClasssMapper.selectcNoOne",id);
	}

	// 클래스에 파일넣기
	public int insertClassFile(Storage s) {
		// TODO Auto-generated method stub
		return sqlSession.insert("StorageMapper.insertClassFile",s);
	}

}
