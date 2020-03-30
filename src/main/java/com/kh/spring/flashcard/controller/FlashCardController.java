package com.kh.spring.flashcard.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.vo.Member;
import com.kh.spring.schedule.model.vo.Schedule;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class FlashCardController {

	
	@RequestMapping("flashcard.fl")
	public ModelAndView selectFlashCard(ModelAndView mv,  HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.setViewName("flashcard/test");	
		return mv; 
	}
	
	@RequestMapping("flashcard2.fl")
	public ModelAndView selectFlashCard2(ModelAndView mv,  HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.setViewName("flashcard/maincardset");	
		return mv; 
	}
	
	
}
