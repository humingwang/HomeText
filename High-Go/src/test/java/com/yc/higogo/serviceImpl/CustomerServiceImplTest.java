package com.yc.higogo.serviceImpl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.Customer;
import com.yc.highgo.service.CustomerService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class CustomerServiceImplTest {

	@Autowired
	private CustomerService customerService;
	@Test
	public void testLogin() {
		System.out.println(customerService.Login(new Customer("sa","a")));
		assertNotNull(customerService.Login(new Customer("sa","a")));

	}

}
