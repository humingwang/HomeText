package com.yc.highgo.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.highgo.entity.Orders;
import com.yc.highgo.service.OrdersService;

@Controller
@RequestMapping("/order")
public class OrdersHandler {
	
	@Autowired
	private OrdersService orderService;
	
	@ResponseBody
	@RequestMapping(value="/report",method=RequestMethod.POST)
	public void report(ModelMap map,PrintWriter out){
		System.out.println("yes");
		System.out.println("b");
		List<Orders> orderList=orderService.findAll();
		Gson json=new Gson();
		String orderStr=json.toJson(orderList);
		System.out.println(orderStr);
		out.print(orderStr);
		out.flush();
		out.close();
	}
}
