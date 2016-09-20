package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Product;
import com.yc.highgo.mapper.ProductMapper;
import com.yc.highgo.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductMapper productMapper;

@Override
	public List<Product> searchGoodsByName(String pname) {
		return productMapper.searchGoodsByName(pname);
	}
	
	@Override
	public List<Product> findAll() {
		return productMapper.findAll();
	}

	@Override
	public int findCount() {
		return productMapper.findCount();
	}

	@Override
	public int delProduct(int pid) {
		return productMapper.delProduct(pid);
	}

	@Override
	public List<Product> findAllBynd(Product product) {
		return productMapper.findAllBynd(product);
	}

	@Override
	public Product findById(int pid) {
		return productMapper.findById(pid);
	}

	@Override
	public boolean UpdateById(Product product) {
		return productMapper.UpdateById(product);
	}

	@Override
	public List<Product> findByPtId(int ptid) {
		// TODO Auto-generated method stub
		return productMapper.findByPtId(ptid);
	}

	@Override
	public int addProduct(Product product) {
		return productMapper.addProduct(product);
	}

	@Override
	public Product getDetail(int pid) {
		return productMapper.getDetail(pid);
	}


	


}
