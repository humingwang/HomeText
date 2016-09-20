package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Address;

public interface AddressService {
	List<Address> findAll();
	boolean addAll(Address address);

}
