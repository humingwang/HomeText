package com.yc.highgo.handler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.highgo.entity.Admin;

@Controller
@RequestMapping("/admin")
public class AdminHandler {

	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(Admin admin,ModelMap map){
		System.out.println("admin login...");
		return "index";
	}
}
