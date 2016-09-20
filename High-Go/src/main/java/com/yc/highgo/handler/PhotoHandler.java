package com.yc.highgo.handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.basic.BasicBorders.SplitPaneBorder;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.yc.highgo.entity.Photo;
import com.yc.highgo.entity.PhotoType;
import com.yc.highgo.service.PhotoService;

@Controller
@RequestMapping("/photo")
@SessionAttributes("pics")
public class PhotoHandler {
	@Autowired
	private PhotoService photoService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("pics", new ArrayList<Photo>());
	}
	
	//根据类型id获取广告图片
	@RequestMapping("/getAllPhoto")
	public void getAllPhoto(int phtid,ModelMap map,PrintWriter out,HttpServletRequest request){
		System.out.println("getAllPhoto coming..."+phtid);
		Gson gson=new Gson();
		List<Photo> photos=photoService.getAllPhoto(phtid);
		HttpSession session= request.getSession();
		session.removeAttribute("pics");
		map.remove("pics");
		map.put("pics", photos);
		System.out.println(photos);
		out.print(gson.toJson(photos));
		out.flush();
		out.close();
	}
	
	//根据类型id获取广告图片
		@RequestMapping("/getAllPhotoes")
		public String getAllPhotoes(int phtid,ModelMap map,PrintWriter out){
			System.out.println("getAllPhoto coming..."+phtid);
			List<Photo> pics=photoService.getAllPhoto(phtid);
			System.out.println(pics);
			map.put("pics", pics);
			return "redirect:../back/Ads_list.jsp";
		}
		
	@RequestMapping("/getAll")
	public void getAll(ModelMap map,PrintWriter out,HttpServletRequest request){
		System.out.println("getAll coming...");
		Gson gson=new Gson();
		List<Photo> all=photoService.getAllPics();
		HttpSession session= request.getSession();
		session.removeAttribute("pics");
		map.remove("pics");
		map.put("pics", all);
		System.out.println(all);
		out.print(gson.toJson(all));
		out.flush();
		out.close();
	}
	
	//显示全部的广告
	@RequestMapping("/getAllPics")
	public String getAllPics(Photo photo,ModelMap map,PrintWriter out,HttpSession session){
		System.out.println("getAllPics coming...");
		List<Photo> pics=photoService.getAllPics();
		int count=photoService.getCount();
		session.setAttribute("count",count);
		session.setAttribute("pics", pics);
		session.removeAttribute("pics");
		map.put("count", count);
		map.put("pics", pics);
		return "forward:../back/advertising.jsp";
	}
	
	//通过id删除广告
	@RequestMapping("/delPhoto")
	public void delPhoto(int id,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("delPhoto coming...");
		int data=photoService.delPhotoById(id);
		System.out.println(data);
		if(data<=0){
			map.put("errorMsg","删除不成功..." );
		}
		try {
			out = response.getWriter();
			out.println(1);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//广告停用
	@RequestMapping("/stopAds")
	public void stopAds(int id,ModelMap map,PrintWriter out){
		System.out.println("stopAds coming...");
		int data=photoService.updateAdsById(id);
		System.out.println(data);
		if(data>0){
			out.println(1);
			out.flush();
			out.close();
		}
	}
	
	//广告企用
	@RequestMapping("/startAds")
	public void startAds(int id,ModelMap map,PrintWriter out){
		System.out.println("startAds coming...");
		int data=photoService.startAdsById(id);
		System.out.println(data);
		if(data>0){
			out.println(1);
			out.flush();
			out.close();
		}
	}
	
	//获取广告条数
	@RequestMapping("/getCount")
	public String getCount(Photo photo,ModelMap map,PrintWriter out,HttpSession session){
		System.out.println("getAllPics coming...");
		int count=photoService.getCount();
		session.setAttribute("count",count);
		map.put("count", count);
		return "redirect:../back/advertising.jsp";
	}
	
	
	//添加广告
	@ResponseBody
	@RequestMapping("/addAds"	)
	public int addStore(@RequestParam(value = "pic", required = false) MultipartFile[] files, HttpServletRequest request, Photo photo) throws IllegalStateException, IOException {
		System.out.println("===>" + photo);
		String uploadPath="";
        String path = request.getServletContext().getRealPath("../sources/");
        System.out.println(path);
        for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			File targetFile = new File(path, fileName);
			File testFile = new File("F:mygit/HomeText/High-Go/src/main/webapp/pics", fileName);
			
			System.out.println(targetFile + " ==> " + testFile);
			try {
				files[i].transferTo(targetFile);
				//files[i].transferTo(testFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath += "../../sources/" + fileName + ",";
		}
        photo.setPict(uploadPath.substring(0, uploadPath.length() - 1));
        System.out.println(uploadPath.substring(0, uploadPath.length() - 1));
       return photoService.addAds(photo);

	}


	
	
	//修改广告
	/*@RequestMapping("/updateAds")
	public void updateAds(String phname,String psize,String phdate,int phid,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("updateAds coming...");
		int data=photoService.updateAds(phname,psize,phdate,phid);
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
	}*/
	
	//修改图片
	@ResponseBody
	@RequestMapping("/update"	)
	public void update(@RequestParam(value = "pic", required = false) MultipartFile[] files, HttpServletRequest request, Photo photo) throws IllegalStateException, IOException {
		System.out.println("===>" + photo);
		String uploadPath="";
        String path = request.getServletContext().getRealPath("../sources/");
        for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			File targetFile = new File(path, fileName);
			File testFile = new File("F:mygit/HomeText/High-Go/src/main/webapp/pics", fileName);
			
			System.out.println(targetFile + " ==> " + testFile);
			try {
				files[i].transferTo(targetFile);
				files[i].transferTo(testFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath += "/High-Go/pics/" + fileName + ",";
		}
        photo.setPict(uploadPath.substring(0, uploadPath.length() - 1));
        System.out.println(uploadPath.substring(0, uploadPath.length() - 1));
        int data=photoService.updateAds(photo);
        if(data>0){
        	PrintWriter out=null;
        	HttpServletResponse response = null;
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

	//批量删除广告
	@RequestMapping("/DeleteAds")
	public void DeleteAds(String phids,ModelMap map,PrintWriter out,HttpServletResponse response){
		System.out.println("DeleteAds coming..."+phids);
		List<String> delList=new ArrayList<String>();
		String[] strs=phids.split(",");
		for(String str:strs){
			delList.add(str);
		}
		int data=photoService.DeleteAds(delList);
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
	
	//通过在弹框里获取数据
	@RequestMapping("/editAds")
	public void editAdsById(int phid,ModelMap map,PrintWriter out){
		System.out.println("editAdsById coming..."+phid);
		Gson gson=new Gson();
		Photo getAds=photoService.editAdsById(phid);
		System.out.println(getAds);
		out.print(gson.toJson(getAds));
		out.flush();
		out.close();
	}
	
	
	
}
