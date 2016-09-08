package com.yc.highgo.mapper;

import java.util.List;

import com.yc.highgo.entity.ProductType;

public interface ProductTypeMapper {
	List<ProductType> findAll();
	int insertPros(ProductType productType);
	ProductType findAllById(int ptid);
	boolean delPros(String name);
	boolean updatePros(ProductType productType);
}