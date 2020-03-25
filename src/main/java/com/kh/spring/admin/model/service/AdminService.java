package com.kh.spring.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.admin.model.dao.AdminDao;
import com.kh.spring.admin.model.vo.Inquire;
import com.kh.spring.member.model.vo.VisitRecord;

@Service("aService")
public class AdminService {
	@Autowired
	private AdminDao aDao;

	public ArrayList<Inquire> selectInquireList() {
		return aDao.selectInquireList();
	}

	public ArrayList<Inquire> selectMemberInquireList(String inquirerId) {
		return aDao.selectMemberInquireList(inquirerId);
	}

	public Inquire selectInquireOne(int iId) {
		return aDao.selectInquireOne(iId);
	}

	public int deleteInquire(int iId) {
		return aDao.deleteInquire(iId);
	}

	public int insertResponse(Inquire inq) {
		return aDao.insertResponse(inq);
	}

	public int deleteResponse(int iId) {
		return aDao.deleteResponse(iId);
	}

	public ArrayList<VisitRecord> selectLogList() {
		return aDao.selectLogList();
	}

	public int insertInquire(Inquire inq) {
		return aDao.insertInquire(inq);
	}
}
