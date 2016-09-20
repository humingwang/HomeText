package com.yc.highgo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yc.highgo.entity.Assess;

public interface AssessMapper {

	int findAssCount();

	List<Assess> findAllAssess();

	Assess findAssessById(int id);

	int delAssessById(int id);

	int insertResponse(@Param("content")String content, @Param("asid")int asid);

	List<Assess> searchAssess(@Param("ascount")String ascount,@Param("asdate") String asdate);

	void delResponseByAssessId(int id);

	int delAssess(List<String> delList);
	
}
