package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Address;
import com.yc.highgo.mapper.AddressMapper;
import com.yc.highgo.mapper.AdminMapper;
import com.yc.highgo.service.AddressService;
@Service("addressService")

public class AddressServiceImpl implements AddressService {

	
	@Autowired
	private AddressMapper addressMapper;
	
	@Override
	public List<Address> findAll() {
		return addressMapper.findAll();
	}

	@Override
	public boolean addAll(Address address) {
		return addressMapper.addAll(address);
	}

}
