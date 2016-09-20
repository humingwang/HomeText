package com.yc.highgo.entity;

public class PhotoType {
	private int phtid;
	private String phtname;
	private String phdes;
	private String phdate;
	private int count;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getPhdes() {
		return phdes;
	}
	public void setPhdes(String phdes) {
		this.phdes = phdes;
	}
	public String getPhdate() {
		return phdate;
	}
	public void setPhdate(String phdate) {
		this.phdate = phdate;
	}
	public int getPhtid() {
		return phtid;
	}
	public void setPhtid(int phtid) {
		this.phtid = phtid;
	}
	public String getPhtname() {
		return phtname;
	}
	public void setPhtname(String phtname) {
		this.phtname = phtname;
	}
	
	
	public PhotoType() {
	}
	
	@Override
	public String toString() {
		return "PhotoType [phtid=" + phtid + ", phtname=" + phtname + ", phdes=" + phdes + ", phdate=" + phdate
				+ ", count=" + count + "]";
	}
	public PhotoType(int phtid, String phtname, String phdes, String phdate, int count) {
		this.phtid = phtid;
		this.phtname = phtname;
		this.phdes = phdes;
		this.phdate = phdate;
		this.count = count;
	}
	
	
}
