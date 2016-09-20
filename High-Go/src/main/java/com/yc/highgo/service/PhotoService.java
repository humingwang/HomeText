package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Photo;

public interface PhotoService {

	List<Photo> getAllPhoto(int phtid);

	List<Photo> getAllPics();

	int delPhotoById(int id);

	int updateAdsById(int id);

	int startAdsById(int id);

	int getCount();

	//int addAds(String pict, String psize, String phname, int phtid);
	int addAds(Photo photo);

	int DeleteAds(List delList);

	Photo editAdsById(int phid);

	//int updateAds(String phname, String psize, String phdate, int phid);

	int updateAds(Photo photo);

}
