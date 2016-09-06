package com.yc.highgo.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.ProductType;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProductTypeMapperTest {
	
	@Autowired
	private ProductTypeMapper pro;
	@Test
	public void testFindAll() {
		System.out.println(pro.findAll());
		assertNotNull(pro.findAll());
	}
	@Test
	public void testAdd() {
		ProductType pros=new ProductType("日常所需",3);
		int result=pro.insertPros(pros);
		assertEquals(1, result);
	}
	@Test
	public void findById() {
		System.out.println(pro.findAllById(4));
		assertNotNull(pro.findAllById(4));
	}
}
