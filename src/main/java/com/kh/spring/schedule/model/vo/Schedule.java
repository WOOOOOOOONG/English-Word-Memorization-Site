package com.kh.spring.schedule.model.vo;

import java.sql.Date;

public class Schedule {
	private int sId; //스케쥴 고유넘버
	private String uId; // 스케쥴주인아이디
	private String sTitle; // 일정명
	private Date startDate; // 시작일
	private Date endDate; // 종료일 
	private String vocaId; // 참조할 id
	
	
	
}
