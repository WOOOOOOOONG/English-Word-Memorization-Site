package com.kh.spring.friend.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.friend.model.dao.FriendDao;
import com.kh.spring.friend.model.vo.Friend;
import com.kh.spring.member.model.vo.Member;

@Service("fService")
public class FriendService {
	@Autowired
	private FriendDao fDao;

	public ArrayList<Friend> friendList(String mId) {
		return fDao.friendList(mId);
	}

	public Member findFriend(String id) {
		return fDao.findFriend(id);
	}

	public int insertFriend(Friend f) {
		return fDao.insertFriend(f);
	}

	public ArrayList<Friend> selectFriendAcceptList(String id) {
		return fDao.selectFriendAcceptList(id);
	}

	public int updateStatus(Friend f) {
		return fDao.updateStatus(f);
	}

	public int deleteFriend(Friend f) {
		return fDao.deleteFriend(f);
	}
}