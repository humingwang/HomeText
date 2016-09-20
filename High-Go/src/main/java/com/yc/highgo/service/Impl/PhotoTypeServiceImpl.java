package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Photo;
import com.yc.highgo.entity.PhotoType;
import com.yc.highgo.mapper.PhotoTypeMapper;
import com.yc.highgo.service.PhotoService;
import com.yc.highgo.service.PhotoTypeService;

@Service("photoTypeService")
public class PhotoTypeServiceImpl implements PhotoTypeService {

	@Autowired
	private PhotoTypeMapper photoTypeMapper;
	

	@Override
	public List<PhotoType> getAllTypes() {
		return photoTypeMapper.getAllTypes();
	}


	@Override
	public int getAdsCount() {
		return photoTypeMapper.getAdsCount();
	}


	@Override
	public int delType(int id) {
		return photoTypeMapper.delType(id);
	}


	@Override
	public int findCount() {
		return photoTypeMapper.findCount();
	}


	@Override
	public int addTypes(String phtname, String phdes) {
		return photoTypeMapper.addTypes(phtname,phdes);
	}


	@Override
	public int DeleteTypes(List<String> delList) {
		return photoTypeMapper.DeleteTypes(delList);
	}


	

}
