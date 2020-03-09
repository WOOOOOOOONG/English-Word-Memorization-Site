package com.kh.spring.classs.model.vo;

public class ClassTest {
	private String testNo;				// TEST_NO
	private int testExno;			// TEST_EXNO
	private String testTitle;			// TEST_TITLE
	private String testKor;				// TEST_KOR
	private String testEng;				// TEST_ENG
	private String cNo;					// CLASS_NO
	
	public ClassTest() {}

	public ClassTest(String testNo, int testExno, String testTitle, String testKor, String testEng, String cNo) {
		super();
		this.testNo = testNo;
		this.testExno = testExno;
		this.testTitle = testTitle;
		this.testKor = testKor;
		this.testEng = testEng;
		this.cNo = cNo;
	}

	public String getTestNo() {
		return testNo;
	}

	public void setTestNo(String testNo) {
		this.testNo = testNo;
	}

	public int getTestExno() {
		return testExno;
	}

	public void setTestExno(int testExno) {
		this.testExno = testExno;
	}

	public String getTestTitle() {
		return testTitle;
	}

	public void setTestTitle(String testTitle) {
		this.testTitle = testTitle;
	}

	public String getTestKor() {
		return testKor;
	}

	public void setTestKor(String testKor) {
		this.testKor = testKor;
	}

	public String getTestEng() {
		return testEng;
	}

	public void setTestEng(String testEng) {
		this.testEng = testEng;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	@Override
	public String toString() {
		return "ClassTest [testNo=" + testNo + ", testExno=" + testExno + ", testTitle=" + testTitle + ", testKor="
				+ testKor + ", testEng=" + testEng + ", cNo=" + cNo + "]";
	}
	
	
}
