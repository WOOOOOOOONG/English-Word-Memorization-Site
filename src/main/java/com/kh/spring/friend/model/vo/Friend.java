package com.kh.spring.friend.model.vo;

public class Friend {
	private String mId; // 사용자 아이디
	private String fId; // 친구 아이디
	private String groupName; // 그룹명
	private String comment; // 친구에 대한 코멘트
	private String nickname;
	
	public Friend() {}

	public Friend(String mId, String fId, String groupName, String comment, String nickname) {
		super();
		this.mId = mId;
		this.fId = fId;
		this.groupName = groupName;
		this.comment = comment;
		this.nickname = nickname;
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
	
	
}
