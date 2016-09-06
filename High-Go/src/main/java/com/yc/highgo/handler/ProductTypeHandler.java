package com.yc.highgo.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.highgo.entity.ProductType;
import com.yc.highgo.service.ProductTypeService;

@Controller
@RequestMapping("/productType")
public class ProductTypeHandler {
	@Autowired
	private ProductTypeService productTypeService;

	@RequestMapping(value="/findAll",method=RequestMethod.POST)
	@ResponseBody
	public List<ProductType> findAll(){
		LogManager.getLogger().debug("//查询方法成功到达处理方法中.....");
		List<ProductType> list=productTypeService.findAll();
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
}
