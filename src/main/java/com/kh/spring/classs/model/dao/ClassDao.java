package com.kh.spring.classs.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.TestVoca;
import com.kh.spring.common.model.vo.Category;
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

	// 클래스 리스트 전체 가져오기
	public ArrayList<Classs> selectClassList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("ClasssMapper.selectClassList");
	}

	// 카테고리 리스트
	public ArrayList<Category> selectCateList() {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("ClasssMapper.selectCateList");
	}

	// 클래스에 맞는 파일 가져오기
	public ArrayList<Storage> selectFileList(String cNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("StorageMapper.selectFileList",cNo);
	}

	// 카운트 증가되는 클래스 가져오기
	public Classs selectClassOneCount(String cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClasssMapper.selectClassOne",cNo);
	}

	// 조회수 증가
	public int upCount(String cNo) {
		return sqlSession.update("ClasssMapper.upCount",cNo);
	}

	// 카테고리로 클래스 찾기
	public ArrayList<Classs> searchClassList(String cateList) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("ClasssMapper.searchClassList",cateList);
		
	}


	public ArrayList<Classs> getClassnVoca(String mId) {
		
		return (ArrayList)sqlSession.selectList("ClasssMapper.getClassnVoca",mId);
}
	// 시험 입력
	public int insertTest(ClassTest test) {
		// TODO Auto-generated method stub
		return sqlSession.insert("ClassTestMapper.insertTest",test);
	}

	// 클래스에 소속된 테스트 가져옴
	public ArrayList<ClassTest> selectTestList(String cNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("ClassTestMapper.selectTestList",cNo);
	}

	public ArrayList<TestVoca> selectVocaList(String testNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("TestVocaMapper.selectVocaList",testNo);
	}

	// 테스트 찾아오기
	public ClassTest selectTestOne(String testNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClassTestMapper.selectTestOne",testNo);
	}

	// 시험점수 입력
	public void insertTestVoca(TestVoca my) {
		// TODO Auto-generated method stub
		sqlSession.insert("TestVocaMapper.insertTestVoca",my);
		
	}

	// 클래스 멤버 입력
	public void insertClassMember(ClassMember cm) {
		sqlSession.update("ClassMemberMapper.increaseCount",cm);
		sqlSession.insert("ClassMemberMapper.insertClassMember",cm);
		
	}

	public ArrayList<ClassMember> selectClassMemberList(String cNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("ClassMemberMapper.selectClassMemberList",cNo);
	}

	// 단어 추가 권한 부여
	public int wRightTrue(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("ClassMemberMapper.wRightTrue",cm);
	}

	// 단어 추가 권한 해제
	public int wRightFalse(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("ClassMemberMapper.wRightFalse",cm);
	}

	public int vRightTrue(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("ClassMemberMapper.vRightTrue",cm);
	}

	public int vRightFalse(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("ClassMemberMapper.vRightFalse",cm);
	}

	// 클래스 오너 아이디 찾아옴
	public String selectOrnerId(String cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClasssMapper.selectOrnerId",cNo);
	}

	// 클래스 멤버 강퇴
	public int classMemberBan(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.delete("ClassMemberMapper.classMemberBan",cm);
	}

	// 마지막 테스트 제목 가져옴
	public String selectLastTestTitle(String cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClassTestMapper.selectLastTestTitle",cNo);
	}

	// 테스트 초기화시킴
	public void deleteTestVoca(TestVoca tv) {
		sqlSession.delete("TestVocaMapper.deleteTestVoca",tv);
		
	}
	
	// 매니저 전환
	public int changeManager(ClassMember cm) {
		// TODO Auto-generated method stub
		return sqlSession.update("ClasssMapper.changeManager",cm);
	}

	// 클래스 소속된 멤버 제거
	public void deleteClassMember(String cNo) {
		sqlSession.delete("ClassMemberMapper.deleteClassMember",cNo);
		
	}
	// 클래스삭제
	public void deleteClass(String cNo) {
		sqlSession.delete("ClasssMapper.deleteClass",cNo);
		
	}

	
	// 유저아이디에 맞는 Storage 가져옴
	public String selectChangeName(String id) {
		return sqlSession.selectOne("ClasssMapper.selectChangeName",id);

	}

	public ArrayList<ClassMember> selectMyClassList(String id) {
		return (ArrayList)sqlSession.selectList("ClassMemberMapper.selectMyClassList",id);
	}

	// 클래스 번호에맞는 클래스하 나가져ㅑ옴
	public Classs selectClassOne(String cNo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClasssMapper.selectClassOne",cNo);
	}

	// 셀렉트 전화번호
	public String selectTell(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("ClasssMapper.selectTell",id);
	}

}
