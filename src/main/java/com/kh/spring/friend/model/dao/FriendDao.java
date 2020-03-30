package com.kh.spring.friend.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.friend.model.vo.Friend;
import com.kh.spring.member.model.vo.Member;

@Repository("fDao")
public class FriendDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Friend> friendList(String mId) {
		return (ArrayList)sqlSession.selectList("friendMapper.friendList",mId);
	}

	public Member findFriend(String id) {
		return sqlSession.selectOne("friendMapper.findFriend",id);
	}

	public int insertFriend(Friend f) {
		int result =0;
		try {
			result = sqlSession.insert("friendMapper.insertFriend",f);
		}catch(Exception e) {
			result = 2;
		}
		return result;
		
	}

	public ArrayList<Friend> selectFriendAcceptList(String id) {
		return (ArrayList)sqlSession.selectList("friendMapper.selectFriendAcceptList",id);
	}

	public int updateStatus(Friend f) {
		int result = sqlSession.update("friendMapper.updateStatus",f);
		String mId = f.getmId();
		f.setmId(f.getfId());
		f.setfId(mId);
		result += sqlSession.update("friendMapper.updateStatus",f);
		return result;
	}

	public int deleteFriend(Friend f) {
		int result = sqlSession.delete("friendMapper.deleteFriend",f);
		String mId = f.getmId();
		f.setmId(f.getfId());
		f.setfId(mId);
		result += sqlSession.delete("friendMapper.deleteFriend",f);
		return result;
	}

	public int updateComment(Friend f) {
		return sqlSession.update("friendMapper.updateComment",f);
	}

	public int updateGroup(Friend f) {
		return sqlSession.update("friendMapper.updateGroup",f);
	}

	public Member findFriend2(String nickname) {
		Member m = sqlSession.selectOne("friendMapper.findFriend2",nickname);
		return sqlSession.selectOne("friendMapper.findFriend",m.getmId());
	}

	public int cancelFriend(Friend f) {
		return sqlSession.update("friendMapper.deleteFriend",f);
	}

}
