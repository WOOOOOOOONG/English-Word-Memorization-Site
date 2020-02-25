package com.kh.spring.admin.model.vo;

import java.sql.Date;

public class Inquire {
	private int iId;
	private String inquirerId;
	private String type;
	private String title;
	private String content;
	private Date registDate;
	private String isAnswer;
	private String answer;
	private String reportedId;
	private String name;
	
	public Inquire() {}

	public Inquire(int iId, String inquirerId, String type, String title, String content, Date registDate,
			String isAnswer, String answer, String reportedId, String name) {
		super();
		this.iId = iId;
		this.inquirerId = inquirerId;
		this.type = type;
		this.title = title;
		this.content = content;
		this.registDate = registDate;
		this.isAnswer = isAnswer;
		this.answer = answer;
		this.reportedId = reportedId;
		this.name = name;
	}

	public int getiId() {
		return iId;
	}

	public void setiId(int iId) {
		this.iId = iId;
	}

	public String getInquirerId() {
		return inquirerId;
	}

	public void setInquirerId(String inquirerId) {
		this.inquirerId = inquirerId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegistDate() {
		return registDate;
	}

	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}

	public String getIsAnswer() {
		return isAnswer;
	}

	public void setIsAnswer(String isAnswer) {
		this.isAnswer = isAnswer;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getReportedId() {
		return reportedId;
	}

	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Inquire [iId=" + iId + ", inquirerId=" + inquirerId + ", type=" + type + ", title=" + title
				+ ", content=" + content + ", registDate=" + registDate + ", isAnswer=" + isAnswer + ", answer="
				+ answer + ", reportedId=" + reportedId + ", name=" + name + "]";
	}
}
