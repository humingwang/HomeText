package com.yc.highgo.mapper;

import org.apache.ibatis.annotations.Param;

import com.yc.highgo.entity.Admin;

public interface AdminMapper {

	Admin login(Admin admin);

	int update(@Param("aname")String aname, @Param("asex")String asex, @Param("aage")int aage, @Param("atel")String atel, @Param("aemail")String aemail, @Param("aid")int aid);

}
