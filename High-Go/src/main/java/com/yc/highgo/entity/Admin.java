package com.yc.highgo.entity;

public class Admin {
	private int aid;
	private String aname;
	private String apwd;
	private String asex;
	private int aage;
	private String atel;
	private String aemail;
	
	
	public String getAsex() {
		return asex;
	}
	public void setAsex(String asex) {
		this.asex = asex;
	}
	public int getAage() {
		return aage;
	}
	public void setAage(int aage) {
		this.aage = aage;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public Admin(String aname, String apwd) {
		this.aname = aname;
		this.apwd = apwd;
	}
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
	
	public Admin(int aid, String aname,  String asex, int aage, String atel, String aemail) {
		this.aid = aid;
		this.aname = aname;
		this.asex = asex;
		this.aage = aage;
		this.atel = atel;
		this.aemail = aemail;
	}
	public Admin( String aname,  String asex, int aage, String atel, String aemail,int aid) {
		this.aid = aid;
		this.aname = aname;
		this.asex = asex;
		this.aage = aage;
		this.atel = atel;
		this.aemail = aemail;
	}
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", apwd=" + apwd + ", asex=" + asex + ", aage=" + aage
				+ ", atel=" + atel + ", aemail=" + aemail + "]";
	}
	
	
}
