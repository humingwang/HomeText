package com.yc.highgo.handler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.highgo.entity.Admin;
import com.yc.highgo.service.AdminService;

@Controller
@RequestMapping("/admin")
@SessionAttributes("admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;

	@ModelAttribute
	private void getModel(ModelMap map){
		map.put("admin",new Admin());
		
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin,ModelMap map,HttpServletRequest request){
		String ip=request.getRemoteAddr();
		System.out.println("ip====>"+ip);
		admin=adminService.login(admin);
		System.out.println("admin login..."+admin);
		if(admin==null){
			map.put("errorMsg", "用户名或密码错误");
			return "redirect:../back/login.jsp";
		}
		map.put("aid",admin.getAid());
		map.put("admin", admin);
		return "redirect:../back/index.jsp";
	}
	
	@RequestMapping("/updateInfo")
	public void update(String aname,String asex,int aage,String atel ,String aemail,ModelMap map,HttpSession session,HttpServletResponse response){
		System.out.println("update admin...");
		Admin admin=(Admin) session.getAttribute("admin");
		int aid=admin.getAid();
		int data=adminService.udateInfo(aname,asex,aage,atel,aemail,aid);
		if(data<=0){
			map.put("errorMsg", "信息修改不成功");
		}else{
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
	}
}
