package com.kh.spring.flashcard.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping("flashcard_other_RO.fl")
	public ModelAndView oneCardView(ModelAndView mv,
			@RequestParam(value="csid", required=true) String CSID,
			@RequestParam(value="title", required=true) String title,
			@RequestParam(value="edit", required=false) boolean edit,
			HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.addObject("csid", CSID);
		mv.addObject("title", title);
		mv.addObject("edit", edit);
		mv.setViewName("flashcard/just_view");	
		return mv; 
	}
	
	@RequestMapping("flashcardMine.fl")
	public ModelAndView myFlashEdit(ModelAndView mv,
			@RequestParam(value="csid", required=true) String CSID,
			@RequestParam(value="title", required=true) String title,
		
			HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.addObject("csid", CSID);
		mv.addObject("title", title);
	
		mv.setViewName("flashcard/my_card_edit");	
		return mv; 
	}
	
	
	@RequestMapping("flashcard_edit.fl")
	public ModelAndView oneEditView(ModelAndView mv,
			@RequestParam(value="csid", required=true) String CSID,
			@RequestParam(value="title", required=true) String title,
		
			HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.addObject("csid", CSID);
		mv.addObject("title", title);
	
		mv.setViewName("flashcard/just_readview");	
		return mv; 
	}
	
	@RequestMapping("flashcard_other_ROcl.fl")
	public ModelAndView oneCardViewClass(ModelAndView mv,
			@RequestParam(value="csid", required=true) String CSID,
			@RequestParam(value="title", required=true) String title,
			@RequestParam(value="edit", required=false) boolean edit,
			@RequestParam(value="cNo", required=true) String cNo,
			HttpSession session ) {
		//Member mem = (Member)session.getAttribute("loginMember");
		//System.out.println(mem);
		//mv.addObject("loginMember",mem);
		mv.addObject("csid", CSID);
		mv.addObject("title", title);
		mv.addObject("edit", edit);
		mv.addObject("cNo",cNo);
		mv.setViewName("flashcard/just_view2");	
		return mv; 
	}
}
