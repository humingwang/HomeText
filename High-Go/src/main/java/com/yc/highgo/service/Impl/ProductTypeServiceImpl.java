package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.ProductType;
import com.yc.highgo.mapper.ProductTypeMapper;
import com.yc.highgo.service.ProductTypeService;

@Service("productTypeService")
public class ProductTypeServiceImpl implements ProductTypeService {

	@Autowired
	private ProductTypeMapper productTypeMapper;
	@Override
	public List<ProductType> findAll() {
		return productTypeMapper.findAll();
	}
	@Override
	public int insertPros(ProductType productType) {
		return productTypeMapper.insertPros(productType);
	}
	@Override
	public ProductType findAllById(int ptid) {
		return productTypeMapper.findAllById(ptid);
	}
	@Override
	public boolean delPros(String name) {
		return productTypeMapper.delPros(name);
	}
	@Override
	public boolean updatePros(ProductType productType) {
		// TODO Auto-generated method stub
		return productTypeMapper.updatePros(productType);
	}
	@Override
	public List<ProductType> findAllByfptId(int fptid) {
		// TODO Auto-generated method stub
		return productTypeMapper.findAllByfptId(fptid);
	}

}
