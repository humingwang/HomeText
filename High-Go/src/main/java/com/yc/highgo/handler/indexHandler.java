package com.yc.highgo.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class indexHandler {
	
	
	@RequestMapping("/NewProduct")
	public String NewProduct(ModelMap map){
		LogManager.getLogger().debug("//新品上架页面成功到达.....");
		return "NewProduct";
	}
	
	@RequestMapping("/suggest")
	public String suggest(ModelMap map){
		LogManager.getLogger().debug("//客户留言页面成功到达.....");
		return "suggest";
	}
	
	@RequestMapping("/about")
	public String about(ModelMap map){
		LogManager.getLogger().debug("//关于我们页面成功到达.....");
		return "about";
	}
	
	@RequestMapping("/types")
	public String types(ModelMap map){
		LogManager.getLogger().debug("//类型页面成功到达.....");
		return "types";
	}
	
	
	@RequestMapping("/index")
	public String index(ModelMap map){
		LogManager.getLogger().debug("//首页面成功到达.....");
		return "index";
	}
	
}
