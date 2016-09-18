 package com.yc.highgo.handler;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.highgo.entity.ProductType;
import com.yc.highgo.service.ProductTypeService;

@Controller
@RequestMapping("/productType")
@SessionAttributes(value={"list","types"})

public class ProductTypeHandler {
	@Autowired
	private ProductTypeService productTypeService;

	
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("list", new ProductType());
		map.put("types", new ArrayList<ProductType>());

	}
	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	@ResponseBody
	public List<ProductType> findAll(ModelMap map){
		LogManager.getLogger().debug("//查询方法成功到达处理方法中.....");
		List<ProductType> list=productTypeService.findAll();
		System.out.println(list);
		map.put("types", list);
		return list;
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public void add(HttpServletRequest request,PrintWriter out){
		LogManager.getLogger().debug("//添加方法成功到达处理方法中.....");
		String name=request.getParameter("name");
		int fptid=Integer.parseInt(request.getParameter("fptid"));
		ProductType pros=new ProductType(name,fptid);
		int result=productTypeService.insertPros(pros);
		out.print(result);
		out.flush();
		out.close();
	}
	@RequestMapping(value="/findById",method=RequestMethod.POST)
	@ResponseBody
	public ProductType findById(ModelMap map,HttpServletRequest request){
		HttpSession session = request.getSession();
        session.removeAttribute("list");
        map.remove("list");
		LogManager.getLogger().debug("//按Id查询方法成功到达处理方法中.....");
		String ptid=request.getParameter("ptid");
		ProductType list=productTypeService.findAllById(Integer.parseInt(ptid));
		map.put("list", list);
		System.out.println(list);
		return list;
	}
	
	@RequestMapping(value="/del",method=RequestMethod.POST)
	@ResponseBody
	public boolean del(ModelMap map,HttpServletRequest request){
		LogManager.getLogger().debug("//按Id查询方法成功到达处理方法中.....");
		String name=request.getParameter("name");
		boolean pros=productTypeService.delPros(name);
		return pros;
	}
	
	@RequestMapping(value="/updatePros",method=RequestMethod.POST)
	@ResponseBody
	public boolean updatePros(HttpServletRequest request){
		LogManager.getLogger().debug("/修改方法成功到达处理方法中.....");
		int ptid=Integer.parseInt(request.getParameter("ptid"));
		String name=request.getParameter("name");
		int fptid=Integer.parseInt(request.getParameter("fptid"));
		ProductType productType=new ProductType(ptid,name,fptid);
		boolean bool=productTypeService.updatePros(productType);
		return bool;
	
	}
}
