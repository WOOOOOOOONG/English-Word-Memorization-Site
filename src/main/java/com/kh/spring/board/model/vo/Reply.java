package com.kh.spring.board.model.vo;

import java.sql.Date;
import java.util.Arrays;

public class Reply {
	private int rId;
	private int bId;
	private String writerId;
	private String writerNickname;
	private String content;
	private Date createDate;
	private int reportCount;
	private String profileimg;
	private String reportedId;
	private String bTitle;
	
	public Reply() {}

	public Reply(int rId, int bId, String writerId, String writerNickname, String content, Date createDate,
			int reportCount, String profileimg, String reportedId, String bTitle) {
		super();
		this.rId = rId;
		this.bId = bId;
		this.writerId = writerId;
		this.writerNickname = writerNickname;
		this.content = content;
		this.createDate = createDate;
		this.reportCount = reportCount;
		this.profileimg = profileimg;
		this.reportedId = reportedId;
		this.bTitle = bTitle;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getWriterNickname() {
		return writerNickname;
	}

	public void setWriterNickname(String writerNickname) {
		this.writerNickname = writerNickname;
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

	public int getReportCount() {
		return reportCount;
	}

	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}

	public String getProfileimg() {
		return profileimg;
	}

	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg;
	}

	public String getReportedId() {
		return reportedId;
	}

	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}
	
	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", bId=" + bId + ", writerId=" + writerId + ", writerNickname=" + writerNickname
				+ ", content=" + content + ", createDate=" + createDate + ", reportCount=" + reportCount
				+ ", profileimg=" + profileimg + ", reportedId=" + reportedId + ", bTitle="
				+ bTitle + "]";
	}

	
}
