package com.kh.spring.classs.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.spring.board.model.vo.PageInfo;
import com.kh.spring.board.model.vo.Pagination;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.classs.model.dao.ClassDao;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassNotice;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.Joinwait;
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
	
	// 클래스 view 가져오기
	public ArrayList<Classs> classViewList() {
	   return cDao.classViewList();
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

	// 내클래스 가져오기
	@Override
	public ArrayList<Classs> getClassnVoca(String mId) {
		return cDao.getClassnVoca(mId);
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

	@Override
	public ArrayList<ClassMember> selectMyClassList(String getmId) {
		// TODO Auto-generated method stub
		return cDao.selectMyClassList(getmId);
	}

	// 클래스 번호에 맞는 클래스하남나가졍모
	@Override
	public Classs selectClassOne(String getcNo) {
		// TODO Auto-generated method stub
		return cDao.selectClassOne(getcNo);
	}

	// 클래스 주인 전홥너호
	@Override
	public String selectTell(String ornerId) {
		// TODO Auto-generated method stub
		return cDao.selectTell(ornerId);	
	}

	// 가입신청
	@Override
	public void joinClassMember(ClassMember cm) {
		cDao.joinClassMember(cm);
		
	}

	// 신청대기중인애들 가져옴
	@Override
	public ArrayList<Joinwait> selectJoinWait(String cNo) {
		// TODO Auto-generated method stub
		return cDao.selectJoinWait(cNo);
	}
	
	// 모든 유저 스토리지
		@Override
		public ArrayList<Storage> selectAllStorage() {
			// TODO Auto-generated method stub
			return cDao.selectAllStorage();
		}

		// 수락 또는 취소
		@Override
		public int deleteJoin(ClassMember cm) {
			// TODO Auto-generated method stub
			return cDao.deleteJoin(cm);
		}

		// 이미 가입 대기중인지 확인
		@Override
		public int selectSameJoin(ClassMember cm) {
			// TODO Auto-generated method stub
			return cDao.selectSameJoin(cm);
		}

		
		@Override
		public ArrayList<ClassNotice> selectNoticeList(String cNo, Integer currentPage) {
			// TODO Auto-generated method stub
			int listCount = cDao.getListCount(cNo);
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			return cDao.selectNoticeList(pi,cNo);
		}

		@Override
		public ClassNotice selectNoticeOne(String cnid, boolean flag) {
			// 1. 조회수 증가
				if(!flag) { // 해당 글을 읽지 않았다면(flag가 false)
					cDao.addReadCount(cnid);
				}
			return cDao.selectNoticeOne(cnid);
		}

		@Override
		public ArrayList<ClassNotice> NoticeAllList(String cNo) {
			// TODO Auto-generated method stub
			return cDao.NoticeAllList(cNo);
		}

		// 게시글 댓글
		@Override
		public ArrayList<Reply> selectBoardReplyList(ClassNotice cn) {
			// TODO Auto-generated method stub
			return cDao.selectBoardReplyList(cn);
		}

		// 댓글 입력
		@Override
		public int insertBoardReply(Reply reply) {
			// TODO Auto-generated method stub
			return cDao.insertNoticeReply(reply);
		}

		// 댓글삭제
		@Override
		public int deleteNoticeReply(int rId) {
			// TODO Auto-generated method stub
			return cDao.deleteNoticeReply(rId);
		}

		//공지사항 입력
		@Override
		public void classNoticeInsert(ClassNotice cn) {
			 cDao.classNoticeInsert(cn);
			
		}

		// cnid 가져옴
		@Override
		public String getCNID(ClassNotice cn) {
			// TODO Auto-generated method stub
			return cDao.getCNID(cn);
		}

		// 공지사항 삭제
		@Override
		public void deleteNotice(String cnid) {
			// TODO Auto-generated method stub
			cDao.deleteNotice(cnid);
			
		}

		// 공지사항 수정
		@Override
		public void updateNotice(ClassNotice cn) {
			// TODO Auto-generated method stub
			cDao.updateNotice(cn);
		}

		@Override
		public void updateRecentDay(ClassMember cn) {
			cDao.updateRecentDay(cn);
			
		}

		// 탈퇴
		@Override
		public int outClass(ClassMember cm) {
			// TODO Auto-generated method stub
			return cDao.outClass(cm);
		}
}
