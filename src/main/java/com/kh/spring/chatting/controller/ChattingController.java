package com.kh.spring.chatting.controller;


import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.spring.chatting.model.vo.Chatting;
import com.kh.spring.classs.model.service.ClassService;
import com.kh.spring.classs.model.vo.ClassMember;
import com.kh.spring.classs.model.vo.Classs;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@SessionAttributes({"chatuser","chatclassList"})
@Controller
public class ChattingController {
	@Autowired
	private MemberService mService;
	@Autowired
	private ClassService cService;
	@RequestMapping("chatuserimg.do")
	public void getChatUserImg(String fId, Model model, HttpServletResponse response) throws IOException {
		String img = mService.selectProfileImg(fId);
		model.addAttribute("chatuser",  img);
		PrintWriter out = response.getWriter();
		out.print(img);
	}
	@RequestMapping("chatclassimg.do")
	public void getChatClassImg(String cId, HttpServletResponse response, Model model) throws IOException {
		JSONObject jobj = new JSONObject();
		ArrayList<ClassMember> cmlist = cService.selectClassMemberList(cId);
		response.setContentType("application/json; charset=utf-8");
		for(int i=0; i<cmlist.size(); i++) {
			String fId = cmlist.get(i).getId();
			Member m = new Member();
			m.setProfileimg(mService.selectProfileImg(fId));
			m.setNickname(mService.getNickname(fId));
			jobj.put(fId,  m);
		}
		PrintWriter out = response.getWriter();
		
		out.print(jobj);
	}
	
	@RequestMapping(value = "chat.do", method = RequestMethod.POST)
	public void doChat(String mId, String fId, String content, HttpServletResponse response) throws IOException {
		// 순서 작성자,내용,받는이
		String file="";
		if(fId.substring(0,3).equals("cNo")) {
			file = fId + "chatlog.txt";
		}else {
			file = mId + fId + "chatlog.txt";
		}
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
	
	@RequestMapping("chatclasslog.ck")
	public void getClassChat(String mId, String cId,int chatleng, HttpServletResponse response) throws IOException {
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject send = new JSONObject();
		if(chatleng != 0) {
			chatleng +=1;
		}
		String file = cId + "chatlog.txt";
		ArrayList<Chatting> clist = new ArrayList<Chatting>();
		String filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\" + file;
		File f = new File(filepath);
		if (!f.exists()) {
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
	
		
		}else if(readcontent.length() < 1) {
			send.put("msg", "nothing");
		}
		else {
			send.put("msg", "none");	
		}
		out.print(send);
	}
	
	
	@RequestMapping("chatlog.ck")
	public void getChat(String mId, String fId,int chatleng, HttpServletResponse response) throws IOException {
		response.setContentType("application/json; charset=utf-8");
		PrintWriter out = response.getWriter();
		JSONObject send = new JSONObject();
		if(chatleng != 0) {
			chatleng +=1;
		}
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
	
		
		}else if(readcontent.length() < 1) {
			send.put("msg", "nothing");
		}
		else {
			send.put("msg", "none");	
		}
		out.print(send);
	}
	
	@RequestMapping(value = "adminChat.do", method = RequestMethod.POST)
	public void adminChat(String mId, String fId, String content, HttpServletResponse response) throws IOException {
		// 순서 작성자,내용,받는이
		String file="";
		if(fId.substring(0,3).equals("cNo")) {
			file = fId + "chatlog.txt";
		}else {
			file = mId + fId + "chatlog.txt";
		}
		mService.adminChat(fId);
		
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

	
	@RequestMapping("admingetchat.do")
	   public void admingetChat(String mId, HttpServletResponse response) throws IOException {
	      response.setContentType("application/json; charset=utf-8");
	      PrintWriter out = response.getWriter();
	      JSONObject send = new JSONObject();
	      ArrayList<HashMap<String,String>> chatlist = new ArrayList<HashMap<String,String>>();
	      
	      // 개인 채팅 불러오기
	      File folder = new File("C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog");
	      if(folder.isDirectory()) {
	         File[] fileList = folder.listFiles(); 
	         for(int z = 0 ; z < fileList.length ; z++){
	            File file = fileList[z]; 
	            if(file.isFile()){
	               if(file.getName().contains(mId)) {
	                  String filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\"
	                        + file.getName();
	                  File f = new File(filepath);
	                  if (f.exists()) {
	                     FileReader fr = new FileReader(f);
	                     int a;
	                     String readcontent = "";
	                     while ((a = fr.read()) != -1) {
	                        readcontent += (char) a;
	                     }
	                     if(!readcontent.isEmpty()) {
		                     String[] rc = readcontent.split("\n");
		                     for (int j = 0; j < rc.length; j++) {
		                        int sp1 = rc[j].indexOf(",");
		                        int sp2 = rc[j].lastIndexOf(",");
		                        String str1 = rc[j].substring(0, sp1);
		                        String fId = rc[j].substring(sp2 + 1, rc[j].length());
		                        if(str1.equals(mId)) {
		                           HashMap<String,String> hash = new HashMap<>();
		                           hash.put(fId, rc[j].substring(sp1 + 1, sp2).replace("<br>", "\n"));
		                           chatlist.add(hash);
		                        }   
		                     }   
	                     }
	                  }
	               }            
	            }
	         }
	      }
	      
	      // 클래스에 친 자기 채팅내용 가져오기
	      ArrayList<ClassMember> cmList = cService.selectMyClassList(mId);
	      
	      if (!cmList.isEmpty()) {
	         for (int i = 0; i < cmList.size(); i++) {
	            Classs classs = cService.selectClassOne(cmList.get(i).getcNo());
	            String cNo = classs.getcNo();
	            String file = cNo + "chatlog.txt";
	            String filepath = "C:\\Users\\user2\\git\\It-Where-Project\\src\\main\\webapp\\resources\\chatlog\\"
	                  + file;
	            File f = new File(filepath);
	            if (f.exists()) {
	               FileReader fr = new FileReader(f);
	               int a;
	               String readcontent = "";
	               while ((a = fr.read()) != -1) {
	                  readcontent += (char) a;
	               }
	               if(!readcontent.isEmpty()) {
		               String[] rc = readcontent.split("\n");
		               for (int j = 0; j < rc.length; j++) {
		                  int sp1 = rc[j].indexOf(",");
		                  int sp2 = rc[j].lastIndexOf(",");
		                	  String str1 = rc[j].substring(0, sp1);
			                  if(str1.equals(mId)) {
			                     HashMap<String,String> hash = new HashMap<>();
			                     hash.put(cNo, rc[j].substring(sp1 + 1, sp2).replace("<br>", "\n"));
			                     chatlist.add(hash);
			                  }     
		                  
		                  
		               }
	               }
	            }
	         }
	      }
	      // 클래스 채팅내용 끝
	      if(chatlist.size() > 0) {
	         JSONArray jarr = new JSONArray();
	         int v = 1;
	         for (HashMap<String,String> h : chatlist) {
	            JSONObject chat = new JSONObject();
	            chat.put(v++, h);
	            jarr.add(chat);
	         }
	         send.put("userchatlist", jarr);
	         out.print(send);
	      }else {
	         out.print("none");
	      }
	      
	   }
	
}
