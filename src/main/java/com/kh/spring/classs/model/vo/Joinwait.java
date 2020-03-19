package com.kh.spring.classs.model.vo;

import java.sql.Date;

public class Joinwait {
	private String cNo;
	private String mId;
	private String introduce;
	private Date joindate;
	
	public Joinwait() {}

	public Joinwait(String cNo, String mId, String introduce, Date joindate) {
		super();
		this.cNo = cNo;
		this.mId = mId;
		this.introduce = introduce;
		this.joindate = joindate;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	@Override
	public String toString() {
		return "Joinwait [cNo=" + cNo + ", mId=" + mId + ", introduce=" + introduce + ", joindate=" + joindate + "]";
	}
	
	
}
