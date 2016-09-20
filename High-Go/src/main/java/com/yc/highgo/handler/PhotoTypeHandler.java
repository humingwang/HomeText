package com.yc.highgo.handler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;
import com.yc.highgo.entity.Assess;
import com.yc.highgo.entity.PhotoType;
import com.yc.highgo.service.PhotoTypeService;

@Controller
@RequestMapping("/photoType")
@SessionAttributes("types")
public class PhotoTypeHandler {

	@Autowired
	private PhotoTypeService photoTypeService;
	
	@ModelAttribute
	private void getModel(ModelMap map){
		map.put("types", new ArrayList<PhotoType>());
	}
	
	
	//获取所有类型到advertising.jsp页面
	@RequestMapping("/getAllPname")
	public String getAllPname(PhotoType photoType,ModelMap map,HttpSession session){
		System.out.println("getAllPname coming...");
		List<PhotoType> types=photoTypeService.getAllTypes();
		session.setAttribute("types", types);
		map.put("types", types);
		return "redirect:../back/advertising.jsp";
	}
	
	@RequestMapping("/getAllTypes")
	public String getAllTypes(PhotoType photoType,ModelMap map){
		System.out.println("getAllTypes coming...");
		List<PhotoType> allTypes=photoTypeService.getAllTypes();
		System.out.println("allTypes====>"+allTypes);
		map.put("allTypes", allTypes);
		return "redirect:../back/Ads_list.jsp";
	}
	
	
	//获取所有类型到Sort_ads.jsp页面
	@RequestMapping("/findAllTypes")
	public String findAllTypes(PhotoType photoType,ModelMap map,HttpSession session){
		System.out.println("findAllTypes coming...");
		List<PhotoType> types=photoTypeService.getAllTypes();
		int number=photoTypeService.findCount();
		session.setAttribute("number",number);
		session.setAttribute("types", types);
		map.put("number", number);
		map.put("types", types);
		return "redirect:../back/Sort_ads.jsp";
	}
	
	//通过id删除类型
	@RequestMapping("/delType")
	public void delType(int id,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("delType coming...");
		int data=photoTypeService.delType(id);
		if(data<=0){
			System.out.println("删除失败!!!");
		}
		try {
			out=response.getWriter();
			out.println(1);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	//添加分类
	@RequestMapping("/addTypes")
	public void addTypes(String phtname,String phdes,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("addTypes coming.....");
		int data=photoTypeService.addTypes(phtname,phdes);
		System.out.println(data);
		if(data>0){
			try {
				out=response.getWriter();
				out.println(1);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	//批量删除
	@RequestMapping("/DeleteTypes")
	public void DeleteTypes(String phtids,ModelMap map,HttpServletResponse response,PrintWriter out){
		System.out.println("DeleteTypes coming....");
		List<String> delList=new ArrayList<String>();
		String[] strs=phtids.split(",");
		for(String str:strs){
			delList.add(str);
		}
		int data=photoTypeService.DeleteTypes(delList);
		if(data>0){
			try {
				out=response.getWriter();
				out.println(1);
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	

}
