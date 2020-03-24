package com.kh.spring.classs.model.vo;

import java.sql.Date;

public class ClassNotice {
	private String cnid;
	private String cNo;
	private String id;
	private String nick;
	private String title;
	private String content;
	private Date createDate;
	private int views;
	private int currentPage;
	
	public ClassNotice() {}

	
	public ClassNotice(String cnid, String cNo, String id, String nick, String title, String content, Date createDate,
			int views, int currentPage) {
		super();
		this.cnid = cnid;
		this.cNo = cNo;
		this.id = id;
		this.nick = nick;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.views = views;
		this.currentPage = currentPage;
	}


	public ClassNotice(String cnid, String cNo, String id, String nick, String title, String content, Date createDate,
			int views) {
		super();
		this.cnid = cnid;
		this.cNo = cNo;
		this.id = id;
		this.nick = nick;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.views = views;
	}

	public String getCnid() {
		return cnid;
	}

	public void setCnid(String cnid) {
		this.cnid = cnid;
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

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
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

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	
	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	@Override
	public String toString() {
		return "ClassNotice [cnid=" + cnid + ", cNo=" + cNo + ", id=" + id + ", nick=" + nick + ", title=" + title
				+ ", content=" + content + ", createDate=" + createDate + ", views=" + views + ", currentPage="
				+ currentPage + "]";
	}

	
	
	
}
