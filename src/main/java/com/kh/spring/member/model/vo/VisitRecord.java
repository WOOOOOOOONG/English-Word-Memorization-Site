package com.kh.spring.member.model.vo;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;

public class VisitRecord {
	private int vId;
	private String visitorId;
	private Date visitDate;
	
	public VisitRecord() {}

	public VisitRecord(int vId, String visitorId, Date visitDate) {
		super();
		this.vId = vId;
		this.visitorId = visitorId;
		this.visitDate = visitDate;
	}

	public int getvId() {
		return vId;
	}

	public void setvId(int vId) {
		this.vId = vId;
	}

	public String getVisitorId() {
		return visitorId;
	}

	public void setVisitorId(String visitorId) {
		this.visitorId = visitorId;
	}

	public Date getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(Date visitDate) {
		this.visitDate = visitDate;
	}

	@Override
	public String toString() {
		return "VisitRecord [vId=" + vId + ", visitorId=" + visitorId + ", visitDate=" + visitDate + "]";
	}
}

