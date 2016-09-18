package com.yc.highgo.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.Product;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ProductMapperTest {
	
	@Autowired
	private ProductMapper pro;
	
	@Test
	public void add(){
		Product product=new Product("枕头12","这是个好点","12m",34.0,"2012-09-12","images/pic4.jpg",4);
		pro.addProduct(product);
	}
	

}
