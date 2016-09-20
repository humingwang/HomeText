package com.yc.highgo.service.Impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.service.PhotoService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class PhotoServiceImplTest {

	@Autowired
	private PhotoService photoService;
	
	@Test
	public void testGetAllPhoto() {
		System.out.println(photoService.getAllPhoto(1020));
	}

	@Test
	public void testGetAllPics() {
		System.out.println(photoService.getAllPics());
	}

	@Test
	public void testGetCount() {
		System.out.println(photoService.getCount());
	}
	
	/*@Test
	public void testAddAds() {
		System.out.println(photoService.addAds("../images/1.png", "1024*890", "夏季凉席", 1020));
	}*/
	
}
