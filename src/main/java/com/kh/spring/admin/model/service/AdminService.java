package com.kh.spring.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.admin.model.dao.AdminDao;
import com.kh.spring.admin.model.vo.Inquire;

@Service("aService")
public class AdminService {
	@Autowired
	private AdminDao aDao;

	public ArrayList<Inquire> selectInquireList() {
		return aDao.selectInquireList();
	}

	public Inquire selectInquireOne(int iId) {
		return aDao.selectInquireOne(iId);
	}

	public int insertResponse(Inquire inq) {
		return aDao.insertResponse(inq);
	}

	public int deleteResponse(int iId) {
		return aDao.deleteResponse(iId);
	}
}
