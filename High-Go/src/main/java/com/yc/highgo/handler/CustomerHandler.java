package com.yc.highgo.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.highgo.entity.Customer;
import com.yc.highgo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerHandler {
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/register")
	public String cusRegister(Customer cus,ModelMap map){
		if(!customerService.register(cus)){
			map.put("ErrorMsg", "注册失败!!!");
			return "register";
		}
		return "login";
	}
}
