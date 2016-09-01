 package com.yc.highgo.service;

import com.yc.highgo.entity.Customer;

public interface CustomerService {

	public boolean register(Customer cus);

	Customer Login(Customer customer);
}
