package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.service.PhotoService;
import com.yc.highgo.service.ProductService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProductServiceImplTest {
	@Autowired
	private ProductService productService;
	
	@Test
	public void testSearchGoodsByName() {
		System.out.println(productService.searchGoodsByName("四"));
	}

}
