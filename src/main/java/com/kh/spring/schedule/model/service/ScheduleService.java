package com.kh.spring.schedule.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.schedule.model.dao.ScheduleDao;
import com.kh.spring.schedule.model.vo.Schedule;

@Service("sService")
public class ScheduleService {
	@Autowired
	private ScheduleDao sDao;

	public int insertSchedule(Schedule sc) {
		return sDao.insertSchedule(sc);
	}

	public ArrayList<Schedule> selectScheduleList(String mId) {
		return sDao.selectScheduleList(mId);
	}

	public int deleteSchedule(String sId) {
		return sDao.deleteSchedule(sId);
	}

	public Schedule selectSchedule(String sId) {
		return sDao.selectSchedule(sId);
	}

	public int updateSchedule(Schedule sc) {
		return sDao.updateSchedule(sc);
	}
	
}
