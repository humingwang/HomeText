package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Orders;

public interface OrdersService {

	List<Orders> findAll();

	List<Orders> findAllNum();

}
