package com.kh.spring.classs.model.vo;

import java.sql.Date;

public class ClassMember {
	private String cNo;			// CLASS_NO
	private String id;			// ID
	private Date lastday;		// LASTDAY
	private String wRight;		// WORD_RIGHT
	private String vRight;		// VOCA_RIGHT
	
	public ClassMember() {}

	public ClassMember(String cNo, String id, Date lastday, String wRight, String vRight) {
		super();
		this.cNo = cNo;
		this.id = id;
		this.lastday = lastday;
		this.wRight = wRight;
		this.vRight = vRight;
	}

	public String getcNo() {
		return cNo;
	}

	public void setcNo(String cNo) {
		this.cNo = cNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getLastday() {
		return lastday;
	}

	public void setLastday(Date lastday) {
		this.lastday = lastday;
	}

	public String getwRight() {
		return wRight;
	}

	public void setwRight(String wRight) {
		this.wRight = wRight;
	}

	public String getvRight() {
		return vRight;
	}

	public void setvRight(String vRight) {
		this.vRight = vRight;
	}

	@Override
	public String toString() {
		return "ClassMember [cNo=" + cNo + ", id=" + id + ", lastday=" + lastday + ", wRight=" + wRight + ", vRight="
				+ vRight + "]";
	}
	
	
}
