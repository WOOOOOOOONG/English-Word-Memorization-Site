package com.kh.spring.friend.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.friend.model.vo.Friend;

@Repository("fDao")
public class FriendDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Friend> friendList(String mId) {
		return (ArrayList)sqlSession.selectList("friendMapper.friendList",mId);
	}

}
