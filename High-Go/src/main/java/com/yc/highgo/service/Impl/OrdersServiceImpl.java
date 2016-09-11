package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Orders;
import com.yc.highgo.mapper.OrdersMapper;
import com.yc.highgo.service.OrdersService;

@Service("orderService")
public class OrdersServiceImpl implements OrdersService{

	@Autowired
	private OrdersMapper orderMapper;

	@Override
	public List<Orders> findAll() {
		return orderMapper.findAll();
	}

	@Override
	public List<Orders> findAllNum() {
		return orderMapper.findAllNum();
	}
	
}
