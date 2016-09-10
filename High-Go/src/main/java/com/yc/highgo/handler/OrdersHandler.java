package com.yc.highgo.handler;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.highgo.entity.Orders;
import com.yc.highgo.service.OrdersService;

@Controller
@RequestMapping("/order")
@SessionAttributes(value={"all"})
public class OrdersHandler {
	
	@Autowired
	private OrdersService orderService;
	
	
	public void getModel(Map<String, Object> map){
		map.put("all", new Orders() );
	}
	
	
	
	@RequestMapping(value="/report",method=RequestMethod.POST)
	public void report(ModelMap map,PrintWriter out){
		List<Orders> orderList=orderService.findAll();
		Gson json=new Gson();
		String orderStr=json.toJson(orderList);
		out.print(orderStr);
		out.flush();
		out.close();
	}
	
	
	
	@RequestMapping(value="/reports",method=RequestMethod.POST)
	public void reports(ModelMap map,PrintWriter out ){
		List<Orders> orderList=orderService.findAllNum();
		map.put("all", orderList.get(0));
		System.out.println(orderList.get(0));
		Gson json=new Gson();
		String orderStr=json.toJson(orderList);
		out.print(orderStr);
		out.flush();
		out.close();
	}
}
