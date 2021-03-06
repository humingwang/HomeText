package com.yc.highgo.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.highgo.entity.Admin;
import com.yc.highgo.mapper.AdminMapper;
import com.yc.highgo.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}

	@Override
	public int udateInfo(String aname, String asex, int aage, String atel, String aemail, int aid) {
			return adminMapper.update(aname,asex,aage,atel,aemail,aid);
		}
	}




	

