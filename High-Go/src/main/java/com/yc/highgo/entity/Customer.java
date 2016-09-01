package com.yc.highgo.entity;

public class Customer {
	private int cid;
	private String cname;
	private String cpwd;
	private int cmoney;
	private String csex;
	private int cage;
	private String cemail;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCpwd() {
		return cpwd;
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public int getCmoney() {
		return cmoney;
	}
	public void setCmoney(int cmoney) {
		this.cmoney = cmoney;
	}
	public String getCsex() {
		return csex;
	}
	public void setCsex(String csex) {
		this.csex = csex;
	}
	public int getCage() {
		return cage;
	}
	public void setCage(int cage) {
		this.cage = cage;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public Customer(int cid, String cname, String cpwd, int cmoney, String csex, int cage, String cemail) {
		this.cid = cid;
		this.cname = cname;
		this.cpwd = cpwd;
		this.cmoney = cmoney;
		this.csex = csex;
		this.cage = cage;
		this.cemail = cemail;
	}
	public Customer(String cname, String cpwd) {
		this.cname = cname;
		this.cpwd = cpwd;
	}
	public Customer() {
	}
	
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", cpwd=" + cpwd + ", cmoney=" + cmoney + ", csex=" + csex
				+ ", cage=" + cage + ", cemail=" + cemail + "]";
	}
	
}
