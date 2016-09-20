package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.ProductType;
import com.yc.highgo.service.ProductTypeService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProductTypeServiceImplTest {

	@Autowired
	private ProductTypeService pro;
	@Test
	public void test() {
		System.out.println(pro.findAll());
		assertNotNull(pro.findAll());
	}
	@Test
	public void testAdd() {
		ProductType pros=new ProductType("日常",3);
		int result=pro.insertPros(pros);
		assertEquals(1, result);
	}
	
	@Test
	public void testGetPtypes() {
		System.out.println(pro.getPtypes());
	}
	
	@Test
	public void testGetPstylesById() {
		System.out.println(pro.getPstylesById(66));
	}
}
