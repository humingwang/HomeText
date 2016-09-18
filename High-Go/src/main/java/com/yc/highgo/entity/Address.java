package com.yc.highgo.entity;

public class Address {
	private int aid;
	private String aarea;
	private String adetail;
	private int amail;
	private String aname;
	private String atel;
	
	
	
	public Address() {
	}
	public Address(int aid, String aarea, String adetail, int amail, String aname, String atel) {
		this.aid = aid;
		this.aarea = aarea;
		this.adetail = adetail;
		this.amail = amail;
		this.aname = aname;
		this.atel = atel;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAarea() {
		return aarea;
	}
	public void setAarea(String aarea) {
		this.aarea = aarea;
	}
	public String getAdetail() {
		return adetail;
	}
	public void setAdetail(String adetail) {
		this.adetail = adetail;
	}
	public int getAmail() {
		return amail;
	}
	public void setAmail(int amail) {
		this.amail = amail;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAtel() {
		return atel;
	}
	public void setAtel(String atel) {
		this.atel = atel;
	}
	@Override
	public String toString() {
		return "Address [aid=" + aid + ", aarea=" + aarea + ", adetail=" + adetail + ", amail=" + amail + ", aname="
				+ aname + ", atel=" + atel + "]";
	}
	
}
