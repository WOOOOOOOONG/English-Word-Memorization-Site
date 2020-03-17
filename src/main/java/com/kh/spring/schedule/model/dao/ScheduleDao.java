package com.kh.spring.schedule.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.spring.schedule.model.vo.Schedule;

@Repository("sDao")
public class ScheduleDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertSchedule(Schedule sc) {
		return sqlSession.insert("scheduleMapper.insertSchedule",sc);
	}

	public ArrayList<Schedule> selectScheduleList(String mId) {
		return (ArrayList)sqlSession.selectList("scheduleMapper.selectScheduleList",mId);
	}

	public int deleteSchedule(String sId) {
		return sqlSession.delete("scheduleMapper.deleteSchedule",sId);
	}

	public Schedule selectSchedule(String sId) {
		return sqlSession.selectOne("scheduleMapper.selectSchedule",sId);
	}

	public int updateSchedule(Schedule sc) {
		return sqlSession.update("scheduleMapper.updateSchedule",sc);
	}
	
}
