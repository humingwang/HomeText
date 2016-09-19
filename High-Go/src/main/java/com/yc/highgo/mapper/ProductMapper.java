package com.yc.highgo.mapper;

import java.util.List;

import com.yc.highgo.entity.Product;


public interface ProductMapper {
	List<Product> findAll();
	int findCount();
	int findCountById(int ptid);
	int delProduct(int pid);
	List<Product> findAllBynd(Product product);
	Product findById(int pid);
	List<Product> findByPtId(int ptid);
	boolean UpdateById(Product product);
	int addProduct(Product product);
	boolean delPros(String...pids);
	List<Product> findByPage(int pageNo);
	List<Product> findByPageId(Product product);


}
