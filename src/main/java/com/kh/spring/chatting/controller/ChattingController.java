package com.kh.spring.chatting.controller;


import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.spring.chatting.model.vo.Chatting;
import com.kh.spring.member.model.service.MemberService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@SessionAttributes({"chatuser"})
@Controller
public class ChattingController {
	@Autowired
	private MemberService mService;
	@RequestMapping("chatuserimg.do")
	public void getChatUserImg(String fId, Model model, HttpServletResponse response) throws IOException {
		String img = mService.selectProfileImg(fId);
		System.out.println(img);
		model.addAttribute("chatuser",  img);
		PrintWriter out = response.getWriter();
		out.print(img);
	}
	
	@RequestMapping(value = "chat.do", method = RequestMethod.POST)
	public void doChat(String mId, String fId, String content, HttpServletResponse response) throws IOException {
		// 순서 작성자,내용,받는이
		String file = mId + fId + "chatlog.txt";
		/* ArrayList<Chatting> clist = new ArrayList<Chatting>(); */
		String filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\" + file;
		File f = new File(filepath);
		if (!f.exists()) {
			file = fId + mId + "chatlog.txt";
			filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\" + file;
			f = new File(filepath);
			f.createNewFile();
		}
		try {
			FileReader fr = new FileReader(f);
			int a;
			String readcontent = "";
			while ((a = fr.read()) != -1) {
				readcontent += (char) a;
			}
			/*
			 * String[] rc = readcontent.split("\n"); for(int i=0; i<rc.length;i++) { int
			 * sp1 = rc[i].indexOf(","); int sp2 = rc[i].lastIndexOf(","); String str1 =
			 * rc[i].substring(0,sp1); String str2 = rc[i].substring(sp2+1,rc[i].length());
			 * clist.add(new Chatting(i,str1,str2,rc[i].substring(sp1+1, sp2)));
			 * 
			 * }
			 */

			FileWriter fw = new FileWriter(f);
			content = content.replaceAll("\n", "<br>");
			if(readcontent.length() >0) {
				fw.write(readcontent);
				fw.append("\n");
			}
			fw.write(mId + "," + content + "," + fId);
			fw.close();
			PrintWriter out = response.getWriter();
			out.print("success");
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	@RequestMapping("chatlog.ck")
	public void getChat(String mId, String fId,int chatleng, HttpServletResponse response) throws IOException {
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject send = new JSONObject();
		//chatleng +=1;
		String file = mId + fId + "chatlog.txt";
		ArrayList<Chatting> clist = new ArrayList<Chatting>();
		String filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\" + file;
		File f = new File(filepath);
		if (!f.exists()) {
			file = fId + mId + "chatlog.txt";
			filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\" + file;
			f = new File(filepath);
			f.createNewFile();
		}
		FileReader fr = new FileReader(f);
		int a;
		String readcontent = "";
		while ((a = fr.read()) != -1) {
			readcontent += (char) a;
		}
		String[] rc = readcontent.split("\n");
		if(readcontent.length() > 0 && rc.length != chatleng) {
		for (int i = 0; i < rc.length; i++) {
			int sp1 = rc[i].indexOf(",");
			int sp2 = rc[i].lastIndexOf(",");
			String str1 = rc[i].substring(0, sp1);
			String str2 = rc[i].substring(sp2 + 1, rc[i].length());
			clist.add(new Chatting(i, str1, str2, rc[i].substring(sp1 + 1, sp2).replace("<br>", "\n")));

		}

		JSONArray jarr = new JSONArray();
		for (Chatting c : clist) {
			// 1_1. JSON 배열에 담기 위해 user 객체를 JSON 객체에 담기
			JSONObject chat = new JSONObject();
			chat.put("chSeq", c.getChSeq());
			chat.put("writerId", c.getWriterId());
			chat.put("fId", c.getfId());
			chat.put("content", c.getContent());

			jarr.add(chat);
		}
		// 2. 전송을 하기 위해
		
		send.put("clist", jarr);
		out.print(send);
		
		}else {
			send.put("msg", "none");
			out.print(send);
		}
	}
}
