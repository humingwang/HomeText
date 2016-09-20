package com.yc.highgo.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.highgo.entity.Product;
import com.yc.highgo.service.ProductService;

@Controller
@RequestMapping("/onLine")
@SessionAttributes("products")
public class OnLineHandler {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/searchGoods")
	public String searchGoods(String pname,ModelMap map){
		System.out.println("searchGoods coming...");
		List<Product> products=productService.searchGoodsByName(pname);
		System.out.println(products);
		return "types";
	}
}
