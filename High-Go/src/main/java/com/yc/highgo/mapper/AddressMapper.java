package com.yc.highgo.mapper;

import java.util.List;

import com.yc.highgo.entity.Address;

public interface AddressMapper {
	List<Address> findAll();
	boolean addAll(Address address);
}
