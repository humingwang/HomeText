package com.yc.highgo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.highgo.entity.Photo;
import com.yc.highgo.entity.PhotoType;

public interface PhotoTypeMapper {

	List<PhotoType> getAllTypes();

	int getAdsCount();

	int delType(int id);

	int findCount();

	int addTypes(@Param("phtname")String phtname,@Param("phdes") String phdes);

	int DeleteTypes(List<String> delList);


}
