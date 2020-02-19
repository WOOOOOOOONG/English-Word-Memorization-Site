package com.kh.spring.member.model.vo;

import java.sql.Date;

public class Member {
	private String mId;
	private String pwd;
	private String name;
	private Date birthDate;
	private String email;
	private String address;
	private String enrollDate;
	private String updateDate;
	private String userStatus;
	private String introduce;
	private String nickname;
	
	public Member() {}

	public Member(String mId, String pwd, String name, Date birthDate, String email, String address, String enrollDate,
			String updateDate, String userStatus, String introduce, String nickname) {
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

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
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

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
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
				+ ", userStatus=" + userStatus + ", introduce=" + introduce + ", nickname=" + nickname + "]";
	}
}
