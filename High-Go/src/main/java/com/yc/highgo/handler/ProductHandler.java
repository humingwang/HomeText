package com.yc.highgo.handler;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Store;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.yc.highgo.entity.Product;
import com.yc.highgo.service.ProductService;

@Controller
@RequestMapping("/product")
@SessionAttributes(value={"lists","product"})
public class ProductHandler {
	@Autowired
	private ProductService productService;
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("lists", new ArrayList<Product>());
		map.put("product", new Product());

	}
	@RequestMapping(value="/findAll",method=RequestMethod.GET)
	@ResponseBody
	public List<Product> findAll(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//查询方法成功到达处理方法中.....");
		List<Product> lists=productService.findAll();
		HttpSession session = request.getSession();
        session.removeAttribute("lists");
        map.remove("lists");
		map.put("lists", lists);
		return lists;
	}
	
	@RequestMapping(value="/del",method=RequestMethod.POST)
	@ResponseBody
	public int del(HttpServletRequest request){
		LogManager.getLogger().debug("//删除方法成功到达处理方法中.....");
		int pid=Integer.parseInt(request.getParameter("pid"));
		System.out.println(pid);
		int res=productService.delProduct(pid);
		return res;
	}
	@RequestMapping(value="/delpros",method=RequestMethod.POST)
	@ResponseBody
	public boolean delpros(HttpServletRequest request){
		LogManager.getLogger().debug("//批量删除方法成功到达处理方法中.....");
		String pids=request.getParameter("pros_ids");
		System.out.println(pids);
		boolean res=productService.delPros(pids);
		return res;
	}
	@RequestMapping(value="/findAllBynd",method=RequestMethod.POST)
	@ResponseBody
	public List<Product> findAllBynd(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//按条件方法成功到达处理方法中.....");
		String pname=request.getParameter("pname");
		String pdate=request.getParameter("pdate");
		System.out.println("ssasdasda"+pname.trim()+pdate.trim());
		Product product=new Product(pname,pdate);
		List<Product>  pros=productService.findAllBynd(product);
		HttpSession session = request.getSession();
        session.removeAttribute("lists");
        map.remove("lists");
        map.put("lists", pros);
		return pros;
	}
	
	
	@RequestMapping(value="/findById",method=RequestMethod.POST)
	@ResponseBody
	public Product findAllById(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//按条件方法成功到达处理方法中.....");
		String pid=request.getParameter("pid");
		Product product=productService.findById(Integer.parseInt(pid));
		map.put("product", product);
		return product;
	}
	
	@RequestMapping(value="/findByPtid",method=RequestMethod.POST)
	@ResponseBody
	public boolean findAllByPtid(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//按条件方法成功到达处理方法中.....");
		String ptid=request.getParameter("ptid");
		List<Product>  pros=productService.findByPtId(Integer.parseInt(ptid));
		HttpSession session = request.getSession();
        session.removeAttribute("lists");
        map.remove("lists");
        map.put("lists", pros);
		return true;

	}
	@RequestMapping(value="/findCount",method=RequestMethod.POST)
	@ResponseBody
	public int findCount(HttpServletRequest request,ModelMap map){
		LogManager.getLogger().debug("//按条件方法成功到达处理方法中.....");
		int result=productService.findCount();
		System.out.println("总数量是"+result);
		return result;
	}
	@ResponseBody
	@RequestMapping("/update"	)
	public boolean update(@RequestParam(value = "pic", required = false) MultipartFile[] files, HttpServletRequest request, Product product) throws IllegalStateException, IOException {
		System.out.println("===>" + product);
		String uploadPath="";
        String path = request.getServletContext().getRealPath("/")+"/pics";
        for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			File targetFile = new File(path, fileName);
			File testFile = new File("F:/GitWork/WorkGit/HomeText/High-Go/src/main/webapp/pics", fileName);
			
			System.out.println(targetFile + " ==> " + testFile);
			try {
				files[i].transferTo(targetFile);
				files[i].transferTo(testFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath += "/High-Go/pics/" + fileName + ",";
		}
        product.setPict(uploadPath.substring(0, uploadPath.length() - 1));
        System.out.println(uploadPath.substring(0, uploadPath.length() - 1));
       return productService.UpdateById(product);

	}
		
		@ResponseBody
		@RequestMapping("/add"	)
		public int addStore(@RequestParam(value = "pic", required = false) MultipartFile[] files, HttpServletRequest request, Product product) throws IllegalStateException, IOException {
			System.out.println("===>" + product);
			String uploadPath="";
	        String path = request.getServletContext().getRealPath("/")+"/pics";
	        for (int i = 0; i < files.length; i++) {
				String fileName = files[i].getOriginalFilename();
				File targetFile = new File(path, fileName);
				File testFile = new File("F:/GitWork/WorkGit/HomeText/High-Go/src/main/webapp/pics", fileName);
				
				System.out.println(targetFile + " ==> " + testFile);
				try {
					files[i].transferTo(targetFile);
					files[i].transferTo(testFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
				uploadPath += "pics/" + fileName + ",";
			}
	        product.setPict(uploadPath.substring(0, uploadPath.length() - 1));
	        System.out.println(uploadPath.substring(0, uploadPath.length() - 1));
	       return productService.addProduct(product);

		}

}
