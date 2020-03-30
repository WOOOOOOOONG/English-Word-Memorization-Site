package com.kh.spring.member.model.vo;

import java.sql.Date;

public class Member {
	private String mId;
	private String pwd;
	private String name;
	private String birthDate;
	private String email;
	private String address;
	private Date enrollDate;
	private Date updateDate;
	private String userStatus;
	private String introduce;
	private String nickname;
	private String profileimg;
	private String msgStatus;
	
	public String getMsgStatus() {
		return msgStatus;
	}

	public void setMsgStatus(String msgStatus) {
		this.msgStatus = msgStatus;
	}

	public Member() {}

	public Member(String mId, String pwd, String name, String birthDate, String email, String address, Date enrollDate,
			Date updateDate, String userStatus, String introduce, String nickname) {
		super();
		this.mId = mId;
		this.pwd = pwd;
		this.name = name;
		this.birthDate = birthDate;
		this.email = email;
		this.address = address;
		this.enrollDate = enrollDate;
		this.updateDate = updateDate;
		this.userStatus = userStatus;
		this.introduce = introduce;
		this.nickname = nickname;
	}
	
	public String getProfileimg() {
		return profileimg;
	}

	public void setProfileimg(String profileimg) {
		this.profileimg = profileimg;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "Member [mId=" + mId + ", pwd=" + pwd + ", name=" + name + ", birthDate=" + birthDate + ", email="
				+ email + ", address=" + address + ", enrollDate=" + enrollDate + ", updateDate=" + updateDate
				+ ", userStatus=" + userStatus + ", introduce=" + introduce + ", nickname=" + nickname + ", profileimg="
				+ profileimg + ", msgStatus=" + msgStatus + "]";
	}

	
	
}
