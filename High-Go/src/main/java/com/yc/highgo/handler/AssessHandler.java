package com.yc.highgo.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.highgo.entity.Admin;
import com.yc.highgo.entity.Assess;
import com.yc.highgo.service.AssessService;

@Controller
@RequestMapping("/assess")
@SessionAttributes("assesses")
public class AssessHandler {
	
	@Autowired
	private AssessService assessService;
	
	@ModelAttribute
	private void getModel(ModelMap map){
		map.put("assesses",new ArrayList<Assess>());
		map.put("assess", new Assess());
	}
	
	
	//显示留言条数,查看所有留言
	@RequestMapping("/findCount")
	public String findAssess(Assess assess,ModelMap map,HttpSession session){
		System.out.println("find Count...");
		int count=assessService.findCount();
		List<Assess> assesses = assessService.getAllAssess();
		System.out.println("[-------------"+assesses);
		session.setAttribute("count",count);
		map.put("count", count);
		map.put("assesses", assesses);
		return "redirect:../back/Guestbook.jsp"; 
	}
	
	
	//查看留言
	@RequestMapping("/findAssessById")
	public void findAssessById(int id,HttpServletResponse response,PrintWriter out){
		System.out.println("findAssessById cmoing...");
		Gson gson = new Gson();
		Assess assess=assessService.findAssessById(id);
		System.out.println(assess);
		out.print(gson.toJson(assess));
		out.flush();
		out.close();
	}
	
	
	//删除留言
	@RequestMapping("/delAssessById")
	public void delAssessById(int id,ModelMap map,HttpServletResponse response){
		System.out.println("delAssessById coming....");
		int data=assessService.delAssessById(id);
		System.out.println(data);
		if(data<=0){
			map.put("errorMsg","删除不成功..." );
		}
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println(1);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//留言回复
	@RequestMapping("/response")
	public void insertResponse(String content,int id,ModelMap map,HttpServletResponse response){
		System.out.println("responde coming...");
		int data=assessService.insertResponse(content,id);
		if(data<0){
			System.out.println("回复失败！！！");
		}
		PrintWriter out;
		try {
			out=response.getWriter();
			out.println(1);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	
	//搜索查询
	@RequestMapping("/searchAssess")
	public void searchAssess(String ascount,String date,ModelMap map,PrintWriter out){
		System.out.println("searchAssess coming...");
		List<Assess> assesses=assessService.searchAssess(ascount,date);
		Gson gson=new Gson();
		out.print(gson.toJson(assesses));
		out.flush();
		out.close();
	}
	
	//批量删除留言
	@RequestMapping("/delAssess")
	public void delAssess(String asids,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("delAssess coming....."+asids);
		List<String> delList=new ArrayList<String>();
		String[] strs=asids.split(",");
		for(String asid:strs){
			delList.add(asid);
		}
		int data=assessService.delAssess(delList);
		if(data>0){
			try {
				out=response.getWriter();
				out.println(1);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
}
