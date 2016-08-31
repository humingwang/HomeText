package com.yc.highgo.enitey;

public class Admin {
	private int aid;
	private String aname;
	private String apwd;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public Admin(int aid, String aname, String apwd) {
		this.aid = aid;
		this.aname = aname;
		this.apwd = apwd;
	}
	public Admin() {
	}
	@Override
	public String toString() {
		return "\nAdmin [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + "]";
	}
	
}
