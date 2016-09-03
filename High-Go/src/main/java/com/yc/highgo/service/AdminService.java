package com.yc.highgo.service;


import com.yc.highgo.entity.Admin;

public interface AdminService {

	Admin login(Admin admin);

	int udateInfo(String aname, String asex, int aage, String atel, String aemail, int aid);

}
