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

	//  단어 권한 체크
	int wRightTrue(ClassMember cm);
	// 단어 권한 체크 해제
	int wRightFalse(ClassMember cm);
    // 단어장 권한 체크
	int vRightTrue(ClassMember cm);
    // 단어장 권한 체크 해제
	int vRightFalse(ClassMember cm);

	// 클래스 오너 아이디 찾아옴
	String selectOrnerId(String cNo);

	// 클래스 멤버 강퇴하기
	int classMemberBan(ClassMember cm);

	// 마지막 테스트 제목 가져옴
	String selectLastTestTitle(String cNo);

	// 시험 초기화시킴
	void deleteTestVoca(TestVoca tv);

	// 매니저 전환
	int changeManager(ClassMember cm);

	// 비밀번호 매치
	int matchPwd(String pwd, String pwd2);

	// 클래스 삭제
	void deleteClass(String cNo);

	// 유저아이디의 프로필사진 가져옴
	String selectChangeName(String id);
	

	
	
}
