package com.kh.spring.classs.model.vo;

import java.sql.Date;

public class TestVoca {
	private String testNo; 				// TEST_NO
	private String id;					// ID
	private Date testDate;				// TEST_DATE
	private int score;					// SCORE
	private String ok;					// OK_QUE
	private String nok;					// NOK_QUE
	private String answer;				// MY_ANSWER
	
	public TestVoca() {}

	public TestVoca(String testNo, String id, Date testDate, int score, String ok, String nok, String answer) {
		super();
		this.testNo = testNo;
		this.id = id;
		this.testDate = testDate;
		this.score = score;
		this.ok = ok;
		this.nok = nok;
		this.answer = answer;
	}

	public String getTestNo() {
		return testNo;
	}

	public void setTestNo(String testNo) {
		this.testNo = testNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getTestDate() {
		return testDate;
	}

	public void setTestDate(Date testDate) {
		this.testDate = testDate;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getOk() {
		return ok;
	}

	public void setOk(String ok) {
		this.ok = ok;
	}

	public String getNok() {
		return nok;
	}

	public void setNok(String nok) {
		this.nok = nok;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "TestVoca [testNo=" + testNo + ", id=" + id + ", testDate=" + testDate + ", score=" + score + ", ok="
				+ ok + ", nok=" + nok + ", answer=" + answer + "]";
	}
	
	
	
}
