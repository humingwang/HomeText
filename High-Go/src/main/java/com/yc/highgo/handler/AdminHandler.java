package com.yc.highgo.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.highgo.entity.Admin;
import com.yc.highgo.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin,ModelMap map){
		System.out.println("admin login..."+admin);
		admin=adminService.login(admin);
		if(admin==null){
			map.put("errorMsg", "用户名或密码错误");
			return "redirect:../back/login.jsp";
		}
		return "redirect:../back/index.jsp";
	}
}
