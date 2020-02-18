package com.kh.spring.classs.model.service;

import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Storage;

public interface ClassService {

	// 클래스 넣기
	int insertClass(Classs c);
	
	// 클래스의 번호 가져오기
	String selectCNoOne(String id);
	
	// 클래스 사진넣기
	int insertClassFile(Storage s);
}
