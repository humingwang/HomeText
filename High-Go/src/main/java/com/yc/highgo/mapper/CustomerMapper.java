package com.yc.highgo.mapper;


import com.yc.highgo.entity.Customer;

public interface CustomerMapper {
	Customer findAllByNp(Customer customer);
	int insertCustomer(Customer customer);
}
