package com.yc.highgo.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Customer;
import com.yc.highgo.mapper.CustomerMapper;
import com.yc.highgo.service.CustomerService;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerMapper customerMapper;
	@Override
	public Customer Login(Customer customer) {
		return customerMapper.findAllByNp(customer);
	}
	@Override
	public boolean register(Customer cus) {
		return false;
	}

}
