package com.yc.highgo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.highgo.entity.Photo;

public interface PhotoMapper {

	List<Photo> getAllPhoto(int phtid);

	List<Photo> getAllPics();

	int delPhotoById(int id);

	int updateAdsByID(int id);

	int startAdsById(int id);

	int getCount();

	//int addAds(@Param("pict")String pict, @Param("psize")String psize, @Param("phname")String phname, @Param("phtid")int phtid);
	int addAds(Photo photo);
	int DeleteAds(List delList);

	Photo editAdsById(int phid);

	//int updateAds(@Param("phname")String phname,@Param("psize") String psize, @Param("phdate")String phdate, @Param("phid")int phid);

	int updateAds(Photo photo);


}
