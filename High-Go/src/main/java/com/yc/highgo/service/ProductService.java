 package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Product;

public interface ProductService {
	List<Product> findAll();
	int findCount();
	int findCountById(int ptid);
	int delProduct(int pid);
	List<Product> findAllBynd(Product product);
	Product findById(int pid);
	boolean UpdateById(Product product);
	List<Product> findByPtId(int ptid);
	int addProduct(Product product);
	boolean delPros(String...pids);
	List<Product> findByPage(int pageNo);
	List<Product> findByPageId(Product product);


}
