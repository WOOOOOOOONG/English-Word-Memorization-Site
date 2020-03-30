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

	public int updateComment(Friend f) {
		return fDao.updateComment(f);
	}

	public int updateGroup(Friend f) {
		return fDao.updateGroup(f);
	}

	public Member findFriend2(String nickname) {
		return fDao.findFriend2(nickname);
	}

	public int cancelFriend(Friend f) {
		// TODO Auto-generated method stub
		return fDao.cancelFriend(f);
	}
}
