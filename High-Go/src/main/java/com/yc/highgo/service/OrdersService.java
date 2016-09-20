package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Orders;

public interface OrdersService {

	List<Orders> findAll();

	List<Orders> findAllNum();

	List<Orders> orderList();

	int sendOrder(String oid);

	boolean delOrder(String oid);
	
	int addOrder(Orders orders);


}
