package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Photo;
import com.yc.highgo.mapper.PhotoMapper;
import com.yc.highgo.service.PhotoService;

@Service("photoService")
public class PhotoServiceImpl implements PhotoService {

	@Autowired
	private PhotoMapper photoMapper;

	@Override
	public List<Photo> getAllPhoto(int phtid) {
		
		return photoMapper.getAllPhoto(phtid);
	}

	@Override
	public List<Photo> getAllPics() {
		return photoMapper.getAllPics();
	}

	@Override
	public int delPhotoById(int id) {
		return photoMapper.delPhotoById(id);
	}

	@Override
	public int updateAdsById(int id) {
		return photoMapper.updateAdsByID(id);
	}

	@Override
	public int startAdsById(int id) {
		return photoMapper.startAdsById(id);
	}

	@Override
	public int getCount() {
		return photoMapper.getCount();
	}


	@Override
	public int addAds(Photo photo) {
		return photoMapper.addAds(photo);
	}



	@Override
	public int DeleteAds(List delList) {
		return photoMapper.DeleteAds(delList);
	}

	@Override
	public Photo editAdsById(int phid) {
		return photoMapper.editAdsById(phid);
	}

	@Override
	public int updateAds(Photo photo) {
		return photoMapper.updateAds(photo);
	}

}
