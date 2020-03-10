package com.kh.spring.friend.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.ui.Model;

import com.kh.spring.chatting.model.vo.Chatting;
import com.kh.spring.friend.model.service.FriendService;
import com.kh.spring.friend.model.vo.Friend;
import com.kh.spring.member.model.vo.Member;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@SessionAttributes({"friendList"})
@Controller
public class FriendController {
	@Autowired
	private FriendService fService;
	
	@RequestMapping("findfriend.ck")
	public void findFriend(String id,HttpServletResponse response) throws IOException {
		Member m = fService.findFriend(id);
		response.setContentType("application/json; charset=utf-8");
		JSONObject send = new JSONObject();
		send.put("id", id);
		send.put("name", m.getName());
		send.put("nickname", m.getNickname());

		PrintWriter out = response.getWriter();
		out.print(send);
	}
	@RequestMapping("updatingfriend.do")
	public void updatingfriend(String mId,Model model,HttpServletResponse response) throws IOException {
		ArrayList<Friend> flist = fService.friendList(mId);
		HashMap<Integer,String> glist = new HashMap<Integer,String>();
		glist.put(0, "일반");
		for(int i=1; i<flist.size();i++) {
			if(!glist.containsValue(flist.get(i).getGroupName())){
				glist.put(i, flist.get(i).getGroupName());
			}
		}
		
		model.addAttribute("friendList",flist);
		model.addAttribute("groupList",glist);
		PrintWriter out = response.getWriter();
		out.print("good");
	}
	@RequestMapping("insertfriend.do")
	public void insertFriend(String mId,String fId,HttpServletResponse response) throws IOException {
		Friend f = new Friend();
		f.setfId(fId);
		f.setmId(mId);
		f.setGroupName("일반");
		int result = fService.insertFriend(f);
		
		PrintWriter out = response.getWriter();
		String send="";
		switch(result) {
			case 0: send="zero";
			break;
			case 1: send="one";
			break;
			case 2: send="two";
			break;
		}
		out.print(send);
		
	}
	// 친구승인리스트 셀렉
	@RequestMapping("friendAccept.ck")
	public void selectFriendAcceptList(String id,HttpServletResponse response) throws IOException {
		ArrayList<Friend> fList = fService.selectFriendAcceptList(id);
		
		response.setContentType("application/json; charset=utf-8");
		
		JSONArray jarr = new JSONArray();
		for (Friend f : fList) {
			
			JSONObject fr = new JSONObject();
			fr.put("fId", f.getmId());
			fr.put("nickname", f.getNickname());

			jarr.add(fr);
		}
		PrintWriter out = response.getWriter();
		out.print(jarr);
		
	}
	// 친구 승인
	@RequestMapping("acceptfriend.do")
	public void acceptFriend(String mId, String fId,HttpServletResponse response) throws IOException {
		Friend f = new Friend();
		f.setfId(fId);
		f.setmId(mId);
		f.setGroupName("일반");
		String msg="fail";
		int result = fService.insertFriend(f);
		if(result == 1 ) {
			result = fService.updateStatus(f);
			msg = "success";
		}
		PrintWriter out = response.getWriter();
		out.print(msg);
	}
	
	// 친구 삭제
	@RequestMapping("deleteFriend.do")
	public void deleteFriend(String mId, String fId,HttpServletResponse response) throws IOException {
		Friend f = new Friend();
		f.setmId(mId);
		f.setfId(fId);
		int result = fService.deleteFriend(f);
		PrintWriter out = response.getWriter();
		if(result > 0 ) {
			out.print("good");
		}else {
			out.print("bad");
		}
	}
}
