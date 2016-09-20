package com.yc.highgo.mapper;

import java.util.List;

import com.yc.highgo.entity.Product;

public interface ProductMapper {

	List<Product> searchGoodsByName(String pname);

	List<Product> findAll();
	int findCount();
	int delProduct(int pid);
	List<Product> findAllBynd(Product product);
	Product findById(int pid);
	List<Product> findByPtId(int ptid);
	boolean UpdateById(Product productss);
	int addProduct(Product product);

	Product getDetail(int pid);
}
