package com.kh.spring.schedule.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.kh.spring.schedule.model.service.ScheduleService;
import com.kh.spring.schedule.model.vo.Schedule;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService sService;
	
	//일정 가져오기
	@RequestMapping("mySchedule.ck")
	public void selectScheduleList(String mId,HttpServletResponse response)throws IOException {

		response.setContentType("application/json; charset=utf-8");

		ArrayList<Schedule> slist = sService.selectScheduleList(mId);

		JSONArray jarr = new JSONArray();
		for(int i=0; i<slist.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("sId", slist.get(i).getsId());
			jo.put("eventName", slist.get(i).getsTitle());
			jo.put("refId", slist.get(i).getRefId());
			jo.put("calendar", slist.get(i).getRefName());
			jo.put("color", slist.get(i).getColor());
			
			Date sd = slist.get(i).getStartDate();
			Date ed = slist.get(i).getEndDate();
			SimpleDateFormat sdf = new SimpleDateFormat("YYYYMMdd");
			jo.put("cday", sdf.format(sd).substring(6, 8));
			jo.put("cmonth", sdf.format(sd).substring(4, 6));
			jo.put("cyear", sdf.format(sd).substring(0, 4));
			
			if(sd.getTime() != ed.getTime()) {
				int betweenday = (int)(ed.getTime()-sd.getTime())/1000/60/60/24; 
				sd.setTime(sd.getTime()+86400000);
				i--;	
			}
			
			jarr.add(jo);
		}
		response.getWriter().print(jarr);
	}
	
	// 일정추가
	@RequestMapping("insertSchedule.do")
	public void insertSchedule(Schedule sc,HttpServletResponse response) throws IOException {
		
		int result = sService.insertSchedule(sc);

		if(result>0) {
			response.getWriter().print("good");
		}else {
			response.getWriter().print("bad");
		}
	}
	
	// 일정 삭제
	@RequestMapping("deleteSchedule.do")
	public void deleteSchedule(String sId,HttpServletResponse response) throws IOException {
		
		int result = sService.deleteSchedule(sId);
		if(result>0) {
			response.getWriter().print("good");
		}else {
			response.getWriter().print("bad");
		}
	}
	// 일정 변경전 값받아오기
		@RequestMapping("getSchedule.do")
		public void selectSchedule(String sId,HttpServletResponse response) throws IOException {
			response.setContentType("application/json; charset=utf-8");
			Schedule sc = sService.selectSchedule(sId);
			JSONObject jo = new JSONObject();
			jo.put("sId", sc.getsId());
			jo.put("sTitle", sc.getsTitle());
			jo.put("refId", sc.getRefId());
			jo.put("refName", sc.getRefName());
			jo.put("color", sc.getColor());
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
			jo.put("endDate", sdf.format(sc.getEndDate()));
			jo.put("startDate", sdf.format(sc.getStartDate()));
			
			response.getWriter().print(jo);
		}
		// 일정변경
		@RequestMapping("updateSchedule.do")
		public void updateSchedule(Schedule sc,HttpServletResponse response) throws IOException {
		
			int result = sService.updateSchedule(sc);
			if(result>0) {
				response.getWriter().print("good");
			}else {
				response.getWriter().print("bad");
			}
		}
		
}
