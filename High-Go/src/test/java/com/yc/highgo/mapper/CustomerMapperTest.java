package com.yc.highgo.mapper;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.Customer;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CustomerMapperTest {

	@Autowired
	private CustomerMapper customerMapper;
	@Test
	public void testLogin() {
		System.out.println(customerMapper.findAllByNp(new Customer("sa","a")));
		assertNotNull(customerMapper.findAllByNp(new Customer("sa","a")));

	}

}
