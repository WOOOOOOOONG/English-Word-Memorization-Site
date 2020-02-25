package com.kh.spring.friend.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.friend.model.dao.FriendDao;
import com.kh.spring.friend.model.vo.Friend;

@Service("fService")
public class FriendService {
	@Autowired
	private FriendDao fDao;

	public ArrayList<Friend> friendList(String mId) {
		return fDao.friendList(mId);
	}
}
