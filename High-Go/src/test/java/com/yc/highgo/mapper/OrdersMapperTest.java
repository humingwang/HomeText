package com.yc.highgo.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.highgo.entity.Orders;
import com.yc.highgo.service.OrdersService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OrdersMapperTest {
	@Autowired
	private OrdersService ordersService;
	@Test
	public void testOrderList() {
		List<Orders> orders=ordersService.orderList();
		System.out.println(orders);
	}

}
