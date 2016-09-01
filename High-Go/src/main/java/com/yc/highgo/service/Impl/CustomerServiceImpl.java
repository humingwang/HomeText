package com.yc.highgo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Customer;
import com.yc.highgo.mapper.CustomerMapper;
import com.yc.highgo.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerMapper customerMapper;
	@Override
	public boolean register(Customer cus) {
		if(customerMapper.register(cus)>0){
			return true;
		}
		return false;
	}

}
