package com.yc.highgo.service;

import java.util.List;

import com.yc.highgo.entity.Assess;

public interface AssessService {

	int findCount();

	List<Assess> getAllAssess();

	Assess findAssessById(int id);

	int delAssessById(int id);

	int insertResponse(String content, int asid);

	List<Assess> searchAssess(String ascount, String date);

	int delAssess(List<String> delList);

}
