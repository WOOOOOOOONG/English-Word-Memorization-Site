package com.kh.spring.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.PageInfo;
import com.kh.spring.board.model.vo.Reply;
import com.kh.spring.board.model.vo.Search;

@Repository("bDao")
public class BoardDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("boardMapper.getListCount");
	}
	
	public int addReadCount(int bId) {
		return sqlSession.update("boardMapper.updateCount", bId);
	}
	
	public Board selectBoardOne(int bId) {
		return sqlSession.selectOne("boardMapper.selectBoardOne", bId);
	}
	
	public ArrayList<Board> selectBoardList(PageInfo pi) {
		// 마이바티스에서 페이징처리는 RowBounds를 이용
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectBoardList", null, rowBounds);
	}

	public ArrayList<Board> BoardAllList() {
		return (ArrayList)sqlSession.selectList("boardMapper.boardAllList");
	}

	public int insertBoard(Board board) {
		return sqlSession.insert("boardMapper.insertBoard", board);
	}

	public int updateBoard(Board board) {
		return sqlSession.update("boardMapper.updateBoard", board);
	}

	public int deleteBoard(int bId) {
		return sqlSession.delete("boardMapper.deleteBoard", bId);
	}

	public int insertBoardReply(Reply reply) {
		return sqlSession.insert("boardMapper.insertBoardReply", reply);
	}

	public ArrayList<Reply> selectBoardReplyList(int bId) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBoardReplyList", bId);
	}

	public ArrayList<Board> searchList(Search search) {
		return (ArrayList)sqlSession.selectList("boardMapper.searchList", search);
	}

	public int deleteBoardReply(int rId) {
		return sqlSession.delete("boardMapper.deleteBoardReply", rId);
	}
}
