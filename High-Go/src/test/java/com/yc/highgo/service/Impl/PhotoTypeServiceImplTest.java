package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.service.PhotoService;
import com.yc.highgo.service.PhotoTypeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class PhotoTypeServiceImplTest {

	@Autowired
	private PhotoTypeService photoTypeService;
	
	@Test
	public void testGetAllTypes() {
		System.out.println(photoTypeService.getAllTypes());
	}
	
	@Test
	public void testAddTypes() {
		System.out.println(photoTypeService.addTypes("轮播图", "大图片"));
	}
}
