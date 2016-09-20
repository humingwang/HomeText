package com.yc.highgo.handler;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.highgo.entity.Address;
import com.yc.highgo.service.AddressService;

@Controller
@RequestMapping("/address")
public class AddressHandler {
	@Autowired
	private AddressService addressService;
	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	@ResponseBody
	public List<Address> findAll(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//查询方法成功到达处理方法中.....");
		List<Address> lists=addressService.findAll();
		return lists;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(Address address){
		LogManager.getLogger().debug("//添加方法成功到达处理方法中.....");
		addressService.addAll(address);
		return "shopcar";
	}

}
