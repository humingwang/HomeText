package com.yc.highgo.mapper;

import java.util.List;

import com.yc.highgo.entity.Orders;

public interface OrdersMapper {

	List<Orders> findAll();

	List<Orders> findAllNum();

	List<Orders> orderList();

	int sendOrder(String oid);

	int delOrder(String oid);

}
