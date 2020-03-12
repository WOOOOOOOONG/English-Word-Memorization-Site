package com.kh.spring.classs.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.spring.classs.model.dao.ClassDao;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.TestVoca;
import com.kh.spring.common.model.vo.Category;
import com.kh.spring.common.model.vo.Storage;

@Service("cService")
public class ClassServiceImpl implements ClassService{

	@Autowired
	private ClassDao cDao;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

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

	// 클래스 리스트 전체 가져오기
	@Override
	public ArrayList<Classs> selectClassList() {
		// TODO Auto-generated method stub
		return cDao.selectClassList();
	}

	// 카테고리 리스트
	@Override
	public ArrayList<Category> selectCateList() {
		// TODO Auto-generated method stub
		return cDao.selectCateList();
	}

	// 클래스에 맞는 파일 가져오기
	@Override
	public ArrayList<Storage> selectFileList(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectFileList(cNo);
	}

	// 클래스 하나 찾기, 조회수증가
	@Override
	public Classs selectClassOneCount(String cNo) {
			cDao.upCount(cNo);
		return cDao.selectClassOneCount(cNo);
	}

	// 카테고리로 클래스 찾기
	@Override
	public ArrayList<Classs> searchClassList(String cateList) {
		// TODO Auto-generated method stub
		return cDao.searchClassList(cateList);
	}

	@Override
	public List<String> getClassSetName(String cNo) {
		// TODO Auto-generated method stub
		return null;
	}

	// 테스트 만들기
	@Override
	public int insertTest(ClassTest test) {
		// TODO Auto-generated method stub
		return cDao.insertTest(test);
	}

	// 클래스에 소속된 테스트 가져옴
	@Override
	public ArrayList<ClassTest> selectTestList(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectTestList(cNo);
	}

	// 테스트에 소속된 성적들 가져옴
	@Override
	public ArrayList<TestVoca> selectVocaList(String testNo) {
		// TODO Auto-generated method stub
		return cDao.selectVocaList(testNo);
	}

	// 테스트 찾아오기
	@Override
	public ClassTest selectTestOne(String testNo) {
		// TODO Auto-generated method stub
		return cDao.selectTestOne(testNo);
	}

	// 시험 점수 입력
	@Override
	public void insertTestVoca(TestVoca my) {
		// TODO Auto-generated method stub
		cDao.insertTestVoca(my);
	}

	// 클래스 멤버 입력
	@Override
	public void insertClassMember(ClassMember cm) {
		// TODO Auto-generated method stub
		cDao.insertClassMember(cm);
		
	}

	// 클래스 멤버 리스트 셀렉
	@Override
	public ArrayList<ClassMember> selectClassMemberList(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectClassMemberList(cNo);
	}

	// 단어 추가 권한 부여
	@Override
	public int wRightTrue(ClassMember cm) {
		// TODO Auto-generated method stub
		return cDao.wRightTrue(cm);
	}

	// 단어 추가 권한 해제
	@Override
	public int wRightFalse(ClassMember cm) {
		// TODO Auto-generated method stub
		return cDao.wRightFalse(cm);
	}

	// 단어장 추가 권한 부여
	@Override
	public int vRightTrue(ClassMember cm) {
		// TODO Auto-generated method stub
		return cDao.vRightTrue(cm);
	}

	// 단어장 추가 권한 해제
	@Override
	public int vRightFalse(ClassMember cm) {
		// TODO Auto-generated method stub
		return cDao.vRightFalse(cm);
	}

	// 클래스 오너 아이디 찾아옴
	@Override
	public String selectOrnerId(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectOrnerId(cNo);
	}

	// 클래스 멤버 강퇴하기
	@Override
	public int classMemberBan(ClassMember cm) {
		return cDao.classMemberBan(cm);
	}

	// 마지막 테스트 제목 가져옴
	@Override
	public String selectLastTestTitle(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectLastTestTitle(cNo);
	}

	// 시험 초기화시킴
	@Override
	public void deleteTestVoca(TestVoca tv) {
		cDao.deleteTestVoca(tv);
		
	}

	// 매니저 전환
	@Override
	public int changeManager(ClassMember cm) {
		// TODO Auto-generated method stub
		return cDao.changeManager(cm);
	}

	// 비밀번호 매치
	@Override
	public int matchPwd(String pwd, String pwd2) {
		//String encPwd= bcryptPasswordEncoder.encode(pwd);
		
		int result = 0; // 1이 매칭 
		if(pwd2.length() != 0 && bcryptPasswordEncoder.matches(pwd, pwd2)) {
			result = 1;
		}
		
		return result;
	}

	// 클래스 삭제
	@Override
	public void deleteClass(String cNo) {
		cDao.deleteClassMember(cNo);
		cDao.deleteClass(cNo);
		
	}

	// 유저 아이디에 맞는 프로필사진 가져옴
	@Override
	public String selectChangeName(String id) {
		return cDao.selectChangeName(id);
	}
}
