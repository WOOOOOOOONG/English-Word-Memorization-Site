package com.kh.spring.classs.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.classs.model.dao.ClassDao;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Storage;

@Service("cService")
public class ClassServiceImpl implements ClassService{

	@Autowired
	private ClassDao cDao;

	// 클래스 넣기
	@Override
	public int insertClass(Classs c) {
		
		return cDao.insertClasss(c);
	}

	// 넣은 클래스 아이디가져오기
	@Override
	public String selectCNoOne(String id) {
		// TODO Auto-generated method stub
		return cDao.selectCNoOne(id);
	}

	// 클래스 사진 파일넣기
	@Override
	public int insertClassFile(Storage s) {
		// TODO Auto-generated method stub
		return cDao.insertClassFile(s);
	}
}
