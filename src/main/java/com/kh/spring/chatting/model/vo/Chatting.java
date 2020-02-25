package com.kh.spring.chatting.model.vo;

import java.util.Date;

public class Chatting {
	private int chSeq; //순서
	private String writerId; // 작성자
	private String fId; // 받는사람
	private String content; // 내용
	
	public Chatting() {}

	public Chatting(int chSeq, String writerId, String fId, String content) {
		super();
		this.chSeq = chSeq;
		this.writerId = writerId;
		this.fId = fId;
		this.content = content;
		
	}
	
	public String getfId() {
		return fId;
	}

	public void setfId(String fId) {
		this.fId = fId;
	}

	public int getChSeq() {
		return chSeq;
	}

	public void setChSeq(int chSeq) {
		this.chSeq = chSeq;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Chatting [chSeq=" + chSeq + ", writerId=" + writerId + ", fId=" + fId + ", content=" + content + "]";
	}
	
}
