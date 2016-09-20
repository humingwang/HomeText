package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.service.AssessService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AssessServiceImplTest {

	@Autowired
	private AssessService assessService;
	
	@Test
	public void testFindCount() {
		System.out.println(assessService.findCount());
	}
	
	@Test
	public void testFindAllAssess() {
		System.out.println(assessService.getAllAssess());
	}

	@Test
	public void testFindAssessById() {
		System.out.println(assessService.findAssessById(1000));
	}
	
	@Test
	public void testDelAssessById() {
		System.out.println(assessService.delAssessById(1004));
	}
	
	@Test
	public void testInsertResponse() {
		System.out.println(assessService.insertResponse("你好", 1002));
	}
	
	@Test
	public void testSearchAssess() {
		System.out.println(assessService.searchAssess("加厚", "2016-02-27"));
	}
}
