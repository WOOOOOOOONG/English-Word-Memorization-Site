package com.kh.spring.board.model.vo;

import java.sql.Date;

public class Board {
	private int bId;
	private String referId;
	private String referNickname;
	private String title;
	private int type;
	private String content;
	private Date createDate;
	private int views;
	
	public Board() {}

	public Board(int bId, String referId, String referNickname, String title, int type, String content, Date createDate,
			int views) {
		super();
		this.bId = bId;
		this.referId = referId;
		this.referNickname = referNickname;
		this.title = title;
		this.type = type;
		this.content = content;
		this.createDate = createDate;
		this.views = views;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getReferId() {
		return referId;
	}

	public void setReferId(String referId) {
		this.referId = referId;
	}

	public String getReferNickname() {
		return referNickname;
	}

	public void setReferNickname(String referNickname) {
		this.referNickname = referNickname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
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

	@Override
	public String toString() {
		return "Board [bId=" + bId + ", referId=" + referId + ", referNickname=" + referNickname + ", title=" + title
				+ ", type=" + type + ", content=" + content + ", createDate=" + createDate + ", views=" + views + "]";
	}
}
