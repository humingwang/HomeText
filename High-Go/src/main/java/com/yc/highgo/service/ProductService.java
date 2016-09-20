package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Product;

public interface ProductService {

	List<Product> searchGoodsByName(String pname);

	List<Product> findAll();
	int findCount();
	int delProduct(int pid);
	List<Product> findAllBynd(Product product);
	Product findById(int pid);
	boolean UpdateById(Product product);
	List<Product> findByPtId(int ptid);
	int addProduct(Product product);

	Product getDetail(int pid);
}
