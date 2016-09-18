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

	@Override
	public List<Orders> orderList() {
		return orderMapper.orderList();
	}

	@Override
	public int sendOrder(String oid) {
		return orderMapper.sendOrder(oid);
	}

	@Override
	public boolean delOrder(String oid) {
		if(orderMapper.delOrder(oid)>0){
			return true;
		}
		return false;
	}
	
}
