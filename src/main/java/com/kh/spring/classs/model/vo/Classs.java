package com.kh.spring.classs.model.vo;

import java.sql.Date;

public class Classs {
	
	private String cNo;				// CLASS_NO
	private String ornerId;			// ORNER_ID
	private String title;			// CLASS_TITLE
	private String comment;			// CLASS_COMMENT
	private int memberCount;			// MEMBER_COUNT
	private int nowMemberCount;		// MEMBER_COUNT_NOW
	private String level;			// LEVEL
	private String local;			// LOCAL
	private String schedule;		// CLASS_SCHEDULE  	EX) 2020년 1월 4일 - 2020년 1월 6일
	private String time;			// CLASS_TIME		EX) 12:00 - 14:00
	private String inviteCode;		// INVITE_CODE
	private int	classCount;			// CLASS_COUNT
	private int cateId;				// C_ID
	private Date classCreateDate;   // CLASS_CREATE_DATE
	
	public Classs() {}

	

	public Classs(String cNo, String ornerId, String title, String comment, int memberCount, int nowMemberCount,
			String level, String local, String schedule, String time, String inviteCode, int classCount, int cateId,
			Date classCreateDate) {
		super();
		this.cNo = cNo;
		this.ornerId = ornerId;
		this.title = title;
		this.comment = comment;
		this.memberCount = memberCount;
		this.nowMemberCount = nowMemberCount;
		this.level = level;
		this.local = local;
		this.schedule = schedule;
		this.time = time;
		this.inviteCode = inviteCode;
		this.classCount = classCount;
		this.cateId = cateId;
		this.classCreateDate = classCreateDate;
	}



	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getOrnerId() {
		return ornerId;
	}

	public void setOrnerId(String ornerId) {
		this.ornerId = ornerId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getMemberCount() {
		return memberCount;
	}

	public void setMemberCount(int memberCount) {
		this.memberCount = memberCount;
	}

	public int getNowMemberCount() {
		return nowMemberCount;
	}

	public void setNowMemberCount(int nowMemberCount) {
		this.nowMemberCount = nowMemberCount;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getInviteCode() {
		return inviteCode;
	}

	public void setInviteCode(String inviteCode) {
		this.inviteCode = inviteCode;
	}

	public int getClassCount() {
		return classCount;
	}

	public void setClassCount(int classCount) {
		this.classCount = classCount;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	
	

	public Date getClassCreateDate() {
		return classCreateDate;
	}



	public void setClassCreateDate(Date classCreateDate) {
		this.classCreateDate = classCreateDate;
	}


	@Override
	public String toString() {
		return "Classs [cNo=" + cNo + ", ornerId=" + ornerId + ", title=" + title + ", comment=" + comment
				+ ", memberCount=" + memberCount + ", nowMemberCount=" + nowMemberCount + ", level=" + level
				+ ", local=" + local + ", schedule=" + schedule + ", time=" + time + ", inviteCode=" + inviteCode
				+ ", classCount=" + classCount + ", cateId=" + cateId + ", classCreateDate=" + classCreateDate + "]";
	}


	
}
