package com.kh.spring.classs.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.classs.model.dao.ClassDao;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.TestVoca;
import com.kh.spring.common.model.vo.Category;
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
}
