package com.yc.highgo.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.highgo.entity.PhotoType;

public interface PhotoTypeService {

	List<PhotoType> getAllTypes();

	int getAdsCount();

	int delType(int id);

	int findCount();

	int addTypes(String phtname, String phdes);

	int DeleteTypes(List<String> delList);



}
