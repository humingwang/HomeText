package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.Admin;
import com.yc.highgo.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {

	@Autowired
	private AdminService adminService;
	
	@Test
	public void testLogin() {
		Admin admin=adminService.login(new Admin("sa","a"));
		System.out.println(admin);
		assertNotNull(admin);
	}
	
	@Test
	public void testUpdate() {
		int data=adminService.udateInfo("sa","男",12,"111","123123@qq.com",22001);
		System.out.println(data);
	}

}
