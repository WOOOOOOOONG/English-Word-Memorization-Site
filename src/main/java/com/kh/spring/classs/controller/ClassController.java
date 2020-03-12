package com.kh.spring.classs.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.ClassTest;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.classs.model.vo.TestVoca;
import com.kh.spring.common.model.vo.Category;
import com.kh.spring.common.model.vo.Storage;
import com.kh.spring.member.model.vo.Member;

@SessionAttributes({"classs","friendList","cNo","cmList","ctList","tvList","LastTestTitle","userList"})
@Controller
public class ClassController {
	
	@Autowired
	private ClassService cService;
	
	// 클래스 리스트 보러감
	@RequestMapping("ClassList.do")
	public ModelAndView classList(ModelAndView mv) {
		ArrayList<Classs> cList = cService.selectClassList();
		ArrayList<Category> cateList = cService.selectCateList();
		ArrayList<Storage> fList = new ArrayList<>();
		ArrayList<Storage> userList = new ArrayList<>();
		
		for(int i = 0 ; i < cList.size(); i++) {
			
			ArrayList<Storage> s = cService.selectFileList(cList.get(i).getcNo());
			for(int j = 0 ; j < s.size(); j++) {
				fList.add(s.get(j));
			}
		}
		
		for(int i = 0; i < cList.size(); i++) {
			Storage User = new Storage();
			User.setRefId(cList.get(i).getOrnerId()); // 유저아이디
			User.setChangeName(cService.selectChangeName(User.getRefId()));
			userList.add(User);
		}
		
		
		mv.addObject("userList",userList);
		mv.addObject("cList", cList);
		mv.addObject("cateList",cateList);
		mv.addObject("fList",fList);
		
		mv.setViewName("classs/classListView");

		return mv;
	}
	
	// 클래스 상세정보 보러가기
	@RequestMapping("classdetail.do")
	public ModelAndView classDetail(ModelAndView mv,String cNo) {
		Classs classs = cService.selectClassOneCount(cNo);
		ArrayList<Storage> fList = new ArrayList<>();
		ArrayList<Category> cateList = cService.selectCateList();
		
		String img1 = "main1.jpg";
		String img2 = "main1.jpg";
		String img3 = "main1.jpg";
		
		ArrayList<Storage> s = cService.selectFileList(cNo);
		if(!s.isEmpty()) {
			for(int j = 0 ; j < s.size(); j++) {
				fList.add(s.get(j));
			}
		}
		
		
		if(!fList.isEmpty()) {
			img1 = fList.get(0).getChangeName();
			img2 = fList.get(1).getChangeName();
			img3 = fList.get(2).getChangeName();
		}
		
	
		mv.addObject("classs",classs);
		mv.addObject("img1",img1);
		mv.addObject("img2",img2);
		mv.addObject("img3",img3);
		mv.addObject("cateList",cateList);
		
		mv.setViewName("classs/classDetailView");
		
		return mv;
	}
	
	// 클래스 만드는 폼으로 이동
	@RequestMapping("classPorm.do")
	public ModelAndView classInsertForm(ModelAndView mv) {
		mv.setViewName("classs/insertClassForm");
		return mv;
	}
	
	// 맞는 클래스 보러가기
	@RequestMapping("myClass.do")
	public ModelAndView classDetailView(ModelAndView mv,String cNo,Model model) {
		
		ArrayList<ClassMember> cmList = cService.selectClassMemberList(cNo);
		ArrayList<Storage> userList = new ArrayList<>();
		
		for(int i = 0; i < cmList.size(); i++) {
			Storage User = new Storage();
			User.setRefId(cmList.get(i).getId()); // 유저아이디
			User.setChangeName(cService.selectChangeName(User.getRefId()));
			userList.add(User);
		}
		System.out.println(userList);
		
		mv.addObject("userList",userList);
		
		
		model.addAttribute("cmList",cmList);
		model.addAttribute("classs",cService.selectClassOneCount(cNo));
		mv.addObject("cNo",cNo);
		mv.setViewName("classs/myClassView");
		return mv;
	}
	
	// 클래스 시험목록 누르면 가는 메소드
	@RequestMapping("classTestList.do")
	public ModelAndView classTestList(ModelAndView mv,String cNo) {
		System.out.println(cNo);
		
		ArrayList<ClassTest> testList = cService.selectTestList(cNo);
		ArrayList<TestVoca> vocaList = new ArrayList<>();
		if(testList != null) {
			for(int i = 0 ; i < testList.size(); i++) {
				ArrayList<TestVoca> vocaList2 = cService.selectVocaList(testList.get(i).getTestNo());
				
				if(!vocaList2.isEmpty()) {
					for(int j = 0; j < vocaList2.size(); j++) {
						vocaList.add(vocaList2.get(j));
					}
				}
			}
		}
		mv.addObject("cNo",cNo);
		mv.addObject("testList",testList);
		mv.addObject("vocaList",vocaList);
		mv.setViewName("classs/classTestList");
		return mv;
	}
	
	// 클래스 멤버 권한 관리 사이트
	@RequestMapping("classMemberRight.do")
	public ModelAndView classMemberRight(ModelAndView mv,String cNo,HttpServletRequest request) {
		
		ArrayList<ClassMember> cmList = new ArrayList<>(); 
		
		
		if (cNo != null && cNo.length() != 0) {
			cmList = cService.selectClassMemberList(cNo);
		}else {
			cNo = (String) request.getSession().getAttribute("cNo");
			cmList = cService.selectClassMemberList(cNo);
		}

		
		
		// 추후에 클래스 멤버들의 프로필사진을 따와야함 ;;;; 개귀찮;;;
		
		mv.addObject("cmList",cmList);
		mv.setViewName("classs/classMemberRight");
		return mv;
	}
	
	// 클래스 멤버 시험 보기
	@RequestMapping("classMemberTest.do")
	public ModelAndView classMemberTest(ModelAndView mv,String cNo,String LastTestTitle) {
		ArrayList<ClassMember> cmList = cService.selectClassMemberList(cNo);
		ArrayList<ClassTest> ctList = cService.selectTestList(cNo);
		ArrayList<TestVoca> tvList = new ArrayList<>();
		// 클래스 테스트안에 테스트보카 주키있음
		
		if(!ctList.isEmpty()) {
			for(int i = 0 ; i < ctList.size(); i++) {
				ArrayList<TestVoca> vocaList2 = cService.selectVocaList(ctList.get(i).getTestNo());
				
				if(!vocaList2.isEmpty()) {
					for(int j = 0; j < vocaList2.size(); j++) {
						tvList.add(vocaList2.get(j));
					}
				}
			}
		}
		if(LastTestTitle != null && LastTestTitle.length() != 0) {
			
		}else {
			LastTestTitle = cService.selectLastTestTitle(cNo);
		}
		mv.addObject("cmList",cmList);
		mv.addObject("ctList",ctList);
		mv.addObject("tvList",tvList);
		mv.addObject("LastTestTitle",LastTestTitle);
		mv.setViewName("classs/classMemberTest");
		return mv;
	}
	
	// 시험 만들기로 이동
	@RequestMapping("createTest.do")
	public ModelAndView createTest(ModelAndView mv,
			@RequestParam(value="chkkor", defaultValue="kkk") String kor,
			@RequestParam(value="chkeng", defaultValue="eee") String eng,
			@RequestParam(value="testCount", defaultValue="c10") String StringCount,String testcNo) {
		
		// 한글 리스트
		String[] korListorg = kor.split(","); 
		List<String> korList = new ArrayList<String>(); 
		Collections.addAll(korList, korListorg); 
		
		// 영어 리스트
		String[] engListorg = eng.split(","); 
		List<String> engList = new ArrayList<String>();
		for(int i = 0 ; i < engListorg.length; i++) {
			engList.add(engListorg[i]);
		}
		//Collections.addAll(engList, engListorg);
		
		int count = 0;
		if(StringCount.equals("c10")) {
			count = 10;
		}else if(StringCount.equals("c20")) {
			count = 20;
		}else {
			count = 25;
		}
		
		
		mv.addObject("korList",korList);
		mv.addObject("engList",engList);
		mv.addObject("count",count);
		mv.addObject("cNo",testcNo);
		mv.setViewName("classs/createTest");
		
		return mv;
	}
	// 시험 만들기
	@RequestMapping("insertTest.do")
	public ModelAndView insertTest(ModelAndView mv,String title,String testcNo, String subKor, String subEng, int testcount) {
		String kor = subKor.replaceFirst(",","");
		String eng = subEng.replaceFirst(",","");
		
		ClassTest test = new ClassTest();
		test.setTestEng(eng);
		test.setTestKor(kor);
		test.setTestExno(testcount);
		test.setTestNo(testcNo);
		test.setTestTitle(title);
		test.setcNo(testcNo);
		System.out.println(test);
		int result = cService.insertTest(test);
		mv.addObject("cNo",testcNo);
		mv.setViewName("classs/myClassView");
		return mv;
	}
	
	// 시험 보러가기
	@RequestMapping("goTest.do")
	public ModelAndView goTest(ModelAndView mv,String testNo) {
		
		ClassTest test = cService.selectTestOne(testNo);
		String[] kor = test.getTestKor().split(",");
		System.out.println(kor);
		System.out.println(kor[0]);
		System.out.println(kor[1]);
		
		mv.addObject("kor",kor);
		mv.addObject("test",test);
		mv.setViewName("classs/test");
		return mv;
	}
	
	// 클래스 만들기
	@RequestMapping("insertClass.do")
	public String insertClass(ModelAndView mv,HttpServletRequest request,
			 		@RequestParam(value="img1", required=false) MultipartFile file1,
			 		@RequestParam(value="img2", required=false) MultipartFile file2,
			 		@RequestParam(value="img3", required=false) MultipartFile file3,
			 		Classs classs ) {
		// String id = request.getSession().getAttribute("loginUser").getId();
		Member m = (Member) request.getSession().getAttribute("loginMember");
		classs.setOrnerId(m.getmId());
		
		
		// 개행
		classs.setComment(classs.getComment().replace("\n", "<br>"));
		// 클래스 집어넣는 부분 
		int result = cService.insertClass(classs);
		
		// 넣은 클래스의 classNo
		String cNo = cService.selectCNoOne(classs.getOrnerId());
		
		
		// 파일 저장하는거 세개
		Storage s1 = new Storage();
		Storage s2 = new Storage();
		Storage s3 = new Storage();
		
		// 첫번째 사진
		if(!file1.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file1, request,1);
			
			if(renameFileName != null) {
				s1.setOriginName(file1.getOriginalFilename());
				s1.setChangeName(renameFileName);
				s1.setRefId(cNo);
				s1.setfLevel(1);
				cService.insertClassFile(s1);
			}
		}
		// 두번째 사진
		if(!file2.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file2, request,2);
			
			if(renameFileName != null) {
				s2.setOriginName(file2.getOriginalFilename());
				s2.setChangeName(renameFileName);
				s2.setRefId(cNo);
				s2.setfLevel(2);
				cService.insertClassFile(s2);
			}
		}
		// 세번째 사진
		if(!file3.getOriginalFilename().equals("")) {
			String renameFileName = saveFile(file3, request,3);
			
			if(renameFileName != null) {
				s3.setOriginName(file3.getOriginalFilename());
				s3.setChangeName(renameFileName);
				s3.setRefId(cNo);
				s3.setfLevel(3);
				cService.insertClassFile(s3);
			}
		}
		// 사진넣는 부분까지 종료
		
		// 사진까지 넣었으면 해당 클래스로 이동해야하지만 아직 만든게없으므로 클래스목로긍로 이동함.
		//mv.setViewName("myClass.do");
		//mv.setViewName("ClassList.do");
		
		// 클래스멤버
		ClassMember cm = new ClassMember();
		cm.setcNo(cNo);
		cm.setId(m.getmId());
		cm.setwRight("Y");
		cm.setvRight("Y");
		cService.insertClassMember(cm);
		return "redirect:ClassList.do";
	}
	
	// 파일 저장을 위한 메소드
	public String saveFile(MultipartFile file, HttpServletRequest request,int index) {

		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\classImage"; // 파일 경로 수정

		File folder = new File(savePath);

		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); //년월일시분초
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) + index 
				+ originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath)); // 전달받은 file이 rename명으로 저장

		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}

		return renameFileName;

	}
	
	// 검색 메소드
	@RequestMapping("searchClass.do")
	public ModelAndView searchClass (ModelAndView mv, @RequestParam(value="categoryList", defaultValue="cate") String categoryList,
				@RequestParam(value="levelList", defaultValue="level") String clevelList,
				@RequestParam(value="onoffList", defaultValue="onoff") String onoff) {
		
		String[] cateList = categoryList.split(",");
		List<String> searchCate = new ArrayList<String>();
		Collections.addAll(searchCate,cateList);
		searchCate.remove("20");
		System.out.println("찾는 카테고리 : " + searchCate);
		
		String[] levelList = clevelList.split(",");
		List<String> searchLevel = new ArrayList<String>();
		Collections.addAll(searchLevel, levelList);
		String containLevel = "";
		if(searchLevel.size() > 1) {
			searchLevel.remove("all");
			for(int i = 0; i < searchLevel.size(); i++) {
				containLevel += searchLevel.get(i);
			}
		}
		System.out.println("찾는 레벨 : " + searchLevel);
		
		String[] onoffList = onoff.split(",");
		List<String> searchOnoff = new ArrayList<String>();
		Collections.addAll(searchOnoff, onoffList);
		String containOnOff = "";
		if(searchOnoff.size() > 1) {
			searchOnoff.remove("any");
			for(int i = 0 ; i < searchOnoff.size(); i++) {
				containOnOff += searchOnoff.get(i);
			}
		}
		System.out.println("찾는 온오프 : " +  searchOnoff);
		
		ArrayList<Classs> searchClassList = new ArrayList<>(); 
		// 카테고리로 검색 
		for(int i = 0; i < cateList.length; i++) {
			ArrayList<Classs> reClassList = cService.searchClassList(cateList[i]); 
			for(int j = 0; j < reClassList.size(); j++) {
				searchClassList.add(reClassList.get(j));
			}
		}
		System.out.println("카테고리정렬 : " + searchClassList);
		
		// 레벨
		ArrayList<Classs> searchClassList2 = new ArrayList<>(); 
		
		if(!searchClassList.isEmpty() && searchLevel.get(0).equals("all")) {
			System.out.println("클래스는 찾았으나 레벨별 정리는 없음");
		}else if(containLevel.contains("Beginner")){
			for(int i = 0; i < searchClassList.size(); i++) {
				if(searchClassList.get(i).getLevel().equals("Beginner")) {
					searchClassList2.add(searchClassList.get(i));
				}
			}
		}else if(containLevel.contains("Normal")){
			for(int i = 0; i < searchClassList.size(); i++) {
				if(searchClassList.get(i).getLevel().equals("Normal")) {
					searchClassList2.add(searchClassList.get(i));
				}
			}
		}else {
			for(int i = 0; i < searchClassList.size(); i++) {
				if(searchClassList.get(i).getLevel().equals("Expert")) {
					searchClassList2.add(searchClassList.get(i));
				}
			}
		}
		
		ArrayList<Classs> searchClassList3 = new ArrayList<>();
		// 온라인 오프라인
		// 레벨별 정렬을 안했다면.
		if(searchOnoff.get(0).equals("any")) {
			if(searchClassList2.isEmpty()) {
				mv.addObject("cList",searchClassList);
			}else {
				mv.addObject("cList",searchClassList2);
			}
			System.out.println("레벨 정렬안하고 온오프 아무거나 상관없다면.");
			
			// 온라인 오프라인정렬을 클릭했으며 레벨별 정렬은 하지않았을때
		}else if(!searchOnoff.get(0).equals("any") && searchClassList2.isEmpty()) {
			if(containOnOff.contains("on")) {
				for(int i = 0 ; i < searchClassList.size(); i++) {
					if(searchClassList.get(i).getLocal() == null) {
						searchClassList2.add(searchClassList.get(i));
					}
				}
			}
			if(containOnOff.contains("off")) {
				for(int i = 0 ; i < searchClassList.size(); i++) {
					if(searchClassList.get(i).getLocal() != null) {
						searchClassList2.add(searchClassList.get(i));
					}
				}
			}
			mv.addObject("cList",searchClassList2);
			// 온라인 오프라인정렬을 클릭했으며 레벨별 정렬을 하였을때
		}else if(!searchOnoff.get(0).equals("any") && !searchClassList2.isEmpty()) {
			if(containOnOff.contains("on")) {
				for(int i = 0 ; i < searchClassList2.size(); i++) {
					if(searchClassList2.get(i).getLocal() == null) {
						searchClassList3.add(searchClassList2.get(i));
					}
				}
			}
			if(containOnOff.contains("off")) {
				for(int i = 0 ; i < searchClassList2.size(); i++) {
					if(searchClassList2.get(i).getLocal() != null) {
						searchClassList3.add(searchClassList2.get(i));
					}
				}
			}
			mv.addObject("cList",searchClassList3);
		}
		
		// 정렬 종료 
		
		ArrayList<Category> cateList2 = cService.selectCateList();
		ArrayList<Storage> fList = new ArrayList<>();
		
		for(int i = 0 ; i < searchClassList.size(); i++) {
			
			ArrayList<Storage> s = cService.selectFileList(searchClassList.get(i).getcNo());
			for(int j = 0 ; j < s.size(); j++) {
				fList.add(s.get(j));
			}
		}
		
		
		mv.addObject("cateList",cateList2);
		mv.addObject("fList",fList);
		mv.setViewName("classs/classListView");
		
		return mv;
	}

	// 시험 체크 ㅎ
	@RequestMapping("checkTest.do")
	public  ModelAndView searchClass(String tNo, String output,HttpServletRequest request,ModelAndView mv) {
		Member m = (Member) request.getSession().getAttribute("loginMember");
		ClassTest test = cService.selectTestOne(tNo);
		TestVoca my = new TestVoca();
		my.setTestNo(tNo);
		my.setId(m.getmId());
		my.setAnswer(output);
		
		String ok = "";
		String nok = "";
		int count = 0;
		int score = 0;
		
		String[] outanswer = output.split(","); // 내가쓴답
		String[] answer = test.getTestEng().split(","); // 정답
		
		for(int i = 0 ; i < test.getTestExno(); i++) {
			if(outanswer[i].equals(answer[i])) {
				ok = ok + "," + i;
				count++;
			}else {
				nok = nok + "," + i;
			}
		}
		
		if(test.getTestExno() == 10) {
			score = count * 10;
		}else if(test.getTestExno() == 20) {
			score = count * 5;
		}else {
			score = count * 4;
		}
		my.setOk(ok.substring(1));
		my.setNok(nok.substring(1));
		my.setScore(score);
		
		System.out.println(my);
		cService.insertTestVoca(my);
		
		String cNo = test.getcNo();
		ArrayList<ClassTest> testList = cService.selectTestList(cNo);
		ArrayList<TestVoca> vocaList = new ArrayList<>();
		if(testList != null) {
			for(int i = 0 ; i < testList.size(); i++) {
				ArrayList<TestVoca> vocaList2 = cService.selectVocaList(testList.get(i).getTestNo());
				
				if(!vocaList2.isEmpty()) {
					for(int j = 0; j < vocaList2.size(); j++) {
						vocaList.add(vocaList2.get(j));
					}
				}
			}
		}
		mv.addObject("cNo",cNo);
		mv.addObject("testList",testList);
		mv.addObject("vocaList",vocaList);
		mv.setViewName("classs/classTestList");
		return mv;
		
	}
	
	//  단어 추가 권한부여 메소드
	@RequestMapping(value="wRightTrue.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public int wRightTrue(HttpServletResponse response,@RequestBody String param,HttpServletRequest request) throws ParseException {
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(param);
		
		String id = (String)jObj.get("id");
		boolean flag = (boolean)jObj.get("flag");
		String cNo = (String) request.getSession().getAttribute("cNo");
		String ornerId = cService.selectOrnerId(cNo);
		
		int result = 0;
		ClassMember cm = new ClassMember();
		cm.setId(id);
		cm.setcNo(cNo);
		
		if(!ornerId.equals(id)) {
			if(flag) {
				result = cService.wRightTrue(cm);
			}else {
				result = cService.wRightFalse(cm);
			}
		}
		
		return result;
	}
	
	//  단어장추가 권한부여 메소드
	@RequestMapping(value="vRightTrue.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public int vRightTrue(HttpServletResponse response,@RequestBody String param,HttpServletRequest request) throws ParseException {
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(param);
		
		String id = (String)jObj.get("id");
		boolean flag = (boolean)jObj.get("flag");
		String cNo = (String) request.getSession().getAttribute("cNo");
		String ornerId = cService.selectOrnerId(cNo);
		
		int result = 0;
		ClassMember cm = new ClassMember();
		cm.setId(id);
		cm.setcNo(cNo);
		
		if(!ornerId.equals(id)) {
			if(flag) {
				result = cService.vRightTrue(cm);
			}else {
				result = cService.vRightFalse(cm);
			}
		}
		
		return result;
	}
	
	// 클래스 소속 멤버 강퇴하기
	@RequestMapping(value="classMemberBan.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public int classMemberBan(HttpServletResponse response,@RequestBody String param,HttpServletRequest request) throws ParseException {
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(param);
		
		String id = (String)jObj.get("id");
		String cNo = (String) request.getSession().getAttribute("cNo");
		String ornerId = cService.selectOrnerId(cNo);
		
		int result = 0;
		ClassMember cm = new ClassMember();
		cm.setId(id);
		cm.setcNo(cNo);
		
		if(!ornerId.equals(id)) {
			result = cService.classMemberBan(cm);
		}
		
		return result;
	}
	
	// 시험 초기화 시키는거
	@RequestMapping("reTest.do")
	public ModelAndView reTest(ModelAndView mv, String cNo, String testNo, String id,String LastTestTitle) {
		TestVoca tv = new TestVoca();
		tv.setId(id);
		tv.setTestNo(testNo);
		
		
		cService.deleteTestVoca(tv);
		
		mv.addObject("cNo",cNo);
		mv.addObject("LastTestTitle",LastTestTitle);
		mv.setViewName("redirect:classMemberTest.do");
		return mv;
	}
	
	@RequestMapping("ManagerChange.do")
	@ResponseBody
	public int ManagerChange(HttpServletResponse response,@RequestBody String param,HttpServletRequest request) throws ParseException {
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(param);
		
		String id = (String)jObj.get("id");
		String cNo = (String) request.getSession().getAttribute("cNo");
		
		System.out.println(id);
		System.out.println(cNo);
		int result = 0;
		ClassMember cm = new ClassMember();
		cm.setId(id);
		cm.setcNo(cNo);
		
		result = cService.changeManager(cm);
		
		return result;
	}
	
	@RequestMapping("EndClass.do")
	@ResponseBody
	public int EndClass(HttpServletResponse response,@RequestBody String param,HttpServletRequest request) throws ParseException {
		JSONParser parser = new JSONParser();
		JSONObject jObj = (JSONObject)parser.parse(param);
		
		String pwd = (String)jObj.get("pwd");
		String pwd2 = (String)jObj.get("pwd2");
		String cNo = (String) request.getSession().getAttribute("cNo");
		
		
		System.out.println(pwd);
		System.out.println(pwd2);
		int result2 = cService.matchPwd(pwd,pwd2);
		if(result2 == 1) {
			cService.deleteClass(cNo);
			return result2;
		}else {
			return result2;
		}
		
	}
	
}


