package com.kh.spring.classs.model.service;

import java.util.ArrayList;

import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.common.model.vo.Category;
import com.kh.spring.common.model.vo.Storage;

public interface ClassService {

	// 클래스 넣기
	int insertClass(Classs c);
	
	// 클래스의 번호 가져오기
	String selectCNoOne(String id);
	
	// 클래스 사진넣기
	int insertClassFile(Storage s);

	// 클래스 전체 리스트 가져오기
	ArrayList<Classs> selectClassList();

	// 카테고리 리스트
	ArrayList<Category> selectCateList();

	// 클래스에 맞느 파일 가져오기
	ArrayList<Storage> selectFileList(String cNo);

	// 클래스 하나 찾기
	Classs selectClassOneCount(String cNo);

	// 카테고리로 클래스 찾기
	ArrayList<Classs> searchClassList(String cateList);
	
}
