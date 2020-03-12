package com.kh.spring.friend.model.vo;

public class Friend {
	private String mId; // 사용자 아이디
	private String fId; // 친구 아이디
	private String groupName; // 그룹명
	private String comment; // 친구에 대한 코멘트
	private String status; // 친구 상태
	private String nickname; // 닉네임
	
	public Friend() {}
	
	public Friend(String mId, String fId, String groupName, String comment, String status, String nickname) {
		super();
		this.mId = mId;
		this.fId = fId;
		this.groupName = groupName;
		this.comment = comment;
		this.status = status;
		this.nickname = nickname;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getfId() {
		return fId;
	}

	public void setfId(String fId) {
		this.fId = fId;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Friend [mId=" + mId + ", fId=" + fId + ", groupName=" + groupName + ", comment=" + comment + ", status="
				+ status + ", nickname=" + nickname + "]";
	}

	
	
	
}
