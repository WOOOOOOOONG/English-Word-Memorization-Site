package com.kh.spring.schedule.model.vo;

import java.sql.Date;

public class Schedule {
	private int sId; //스케쥴 고유넘버
	private String mId; // 스케쥴주인아이디
	private String sTitle; // 일정명
	private Date startDate; // 시작일
	private Date endDate; // 종료일 
	private String refId; // 참조할 id
	private String refName; // 참조한 이름
	private String color; // 일정 색깔
	public Schedule() {
	}
	
	public Schedule(int sId, String mId, String sTitle, Date startDate, Date endDate, String refId, String refName,
			String color) {
		super();
		this.sId = sId;
		this.mId = mId;
		this.sTitle = sTitle;
		this.startDate = startDate;
		this.endDate = endDate;
		this.refId = refId;
		this.refName = refName;
		this.color = color;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getRefId() {
		return refId;
	}
	public void setRefId(String refId) {
		this.refId = refId;
	}

	public String getRefName() {
		return refName;
	}

	public void setRefName(String refName) {
		this.refName = refName;
	}

	@Override
	public String toString() {
		return "Schedule [sId=" + sId + ", mId=" + mId + ", sTitle=" + sTitle + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", refId=" + refId + ", refName=" + refName + ", color=" + color + "]";
	}
	
	
	
	 
	
}
