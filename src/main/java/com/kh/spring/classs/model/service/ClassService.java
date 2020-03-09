package com.kh.spring.classs.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.TestVoca;
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

	// 클래스에 소속된 세트 제목 얻어오기
	List<String> getClassSetName(String cNo);

	// 테스트 만들기
	int insertTest(ClassTest test);

	// 클래스에 소속된 테스트들 가져옴
	ArrayList<ClassTest> selectTestList(String cNo);

	ArrayList<TestVoca> selectVocaList(String testNo);

	// 테스트 찾아옴
	ClassTest selectTestOne(String testNo);

	// 시험점수 입력
	void insertTestVoca(TestVoca my);

	// 클래스 멤버 입력
	void insertClassMember(ClassMember cm);

	// 클래스 멤버 리스트 셀렉
	ArrayList<ClassMember> selectClassMemberList(String cNo);

	
	
}
