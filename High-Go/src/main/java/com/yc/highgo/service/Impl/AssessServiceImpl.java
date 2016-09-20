package com.yc.highgo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Assess;
import com.yc.highgo.mapper.AssessMapper;
import com.yc.highgo.service.AssessService;

@Service("assessService")
public class AssessServiceImpl implements AssessService {

	@Autowired
	private AssessMapper assessMapper;
	
	@Override
	public int findCount() {
		return assessMapper.findAssCount();
	}

	@Override
	public List<Assess> getAllAssess() {
		return assessMapper.findAllAssess();
	}

	@Override
	public Assess findAssessById(int id) {
		return assessMapper.findAssessById(id);
	}

	@Override
	public int delAssessById(int id) {
		assessMapper.delResponseByAssessId(id);
		return assessMapper.delAssessById(id);
	}

	@Override
	public int insertResponse(String content, int asid) {
		return assessMapper.insertResponse(content,asid);
	}

	@Override
	public List<Assess> searchAssess(String ascount, String date) {
		return assessMapper.searchAssess(ascount,date);
	}

	@Override
	public int delAssess(List<String> delList) {
		return assessMapper.delAssess(delList);
	}

}
