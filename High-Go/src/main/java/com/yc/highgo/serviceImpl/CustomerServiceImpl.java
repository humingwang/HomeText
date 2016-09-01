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
		//customer.setCpwd(Encrypt.md5AndSha(customer.getCpwd()));
		return customerMapper.findAllByNp(customer);
	}
	@Override
	public boolean register(Customer customer) {
		//customer.setCpwd(Encrypt.md5AndSha(customer.getCpwd()));
		try {
			return customerMapper.insertCustomer(customer)>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;	
	}

}
