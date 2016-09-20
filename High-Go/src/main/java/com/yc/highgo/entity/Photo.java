package com.yc.highgo.entity;

import java.io.Serializable;

public class Photo implements Serializable{
	private static final long serialVersionUID = -1511854664240409651L;
	
	private int phid;
	private String phname;
	private String pict;
	private String psize;
	private String phdate;
	private int phstatus;
	private int phtid;
	private String phtname;
	
	
	
	public String getPhtname() {
		return phtname;
	}
	public void setPhtname(String phtname) {
		this.phtname = phtname;
	}
	public int getPhtid() {
		return phtid;
	}
	public void setPhtid(int phtid) {
		this.phtid = phtid;
	}
	public int getPhid() {
		return phid;
	}
	public void setPhid(int phid) {
		this.phid = phid;
	}
	public String getPhname() {
		return phname;
	}
	public void setPhname(String phname) {
		this.phname = phname;
	}
	public String getPict() {
		return pict;
	}
	public void setPict(String pict) {
		this.pict = pict;
	}
	public String getPsize() {
		return psize;
	}
	public void setPsize(String psize) {
		this.psize = psize;
	}
	public String getPhdate() {
		return phdate;
	}
	public void setPhdate(String phdate) {
		this.phdate = phdate;
	}
	public int getPhstatus() {
		return phstatus;
	}
	public void setPhstatus(int phstatus) {
		this.phstatus = phstatus;
	}
	
	
	
	public Photo(int phid, String phname, String pict, String psize, String phdate, int phstatus, int phtid,
			String phtname) {
		this.phid = phid;
		this.phname = phname;
		this.pict = pict;
		this.psize = psize;
		this.phdate = phdate;
		this.phstatus = phstatus;
		this.phtid = phtid;
		this.phtname = phtname;
	}
	public Photo() {
	}
	@Override
	public String toString() {
		return "Photo [phid=" + phid + ", phname=" + phname + ", pict=" + pict + ", psize=" + psize + ", phdate="
				+ phdate + ", phstatus=" + phstatus + ", phtid=" + phtid + ", phtname=" + phtname + "]";
	}
	
}
