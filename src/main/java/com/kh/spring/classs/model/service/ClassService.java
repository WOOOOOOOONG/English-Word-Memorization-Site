package com.kh.spring.classs.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassNotice;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.Joinwait;
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
	
	// 클래스 view 가져오기
	ArrayList<Classs> classViewList();

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
	

	
	
	// 내 클래스 가져오기
	ArrayList<Classs> getClassnVoca(String mId);

	// 내 클래스 리스트 가져옴
	ArrayList<ClassMember> selectMyClassList(String getmId);

	// 클래스 번호에맞는 클래스 하나만 가져옴
	Classs selectClassOne(String getcNo);

	// 클래스 주인 전화번호
	String selectTell(String ornerId);

	// 가입신청하기
	void joinClassMember(ClassMember cm);

	// 신청대기중인애들 가져옴
	ArrayList<Joinwait> selectJoinWait(String cNo);
	
	// 모든 유저 스토리지
		ArrayList<Storage> selectAllStorage();

		// 수락 또는 취소
		int deleteJoin(ClassMember cm);

		// 이미 가입대기중이닞 확인
		int selectSameJoin(ClassMember cm);

		// 클래스 공지사항 가져옴
		ArrayList<ClassNotice> selectNoticeList(String cNo, Integer currentPage);

		ClassNotice selectNoticeOne(String cnid, boolean flag);

		ArrayList<ClassNotice> NoticeAllList(String cNo);

		ArrayList<Reply> selectBoardReplyList(ClassNotice cn);

		// 댓글입력
		int insertBoardReply(Reply reply);

		// 댓글삭제
		int deleteNoticeReply(int rId);

		// 공지사항 입력
		void classNoticeInsert(ClassNotice cn);

		// cnid 가져옴
		String getCNID(ClassNotice cn);

		// 공지사항 삭제
		void deleteNotice(String cnid);

		// 공지사항 수정
		void updateNotice(ClassNotice cn);

		// 마지막 방문날짜 업데이트
		void updateRecentDay(ClassMember cn);

		// 탈퇴
		int outClass(ClassMember cm);
}
