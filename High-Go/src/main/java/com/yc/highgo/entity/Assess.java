package com.yc.highgo.entity;

import java.util.Date;

public class Assess {
	private int asid;
	private String asdate;
	private String ascount;
	private String cname;
	
	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Assess() {
	}

	public Assess(int asid, String asdate, String ascount,String cname) {
		this.asid = asid;
		this.asdate = asdate;
		this.ascount = ascount;
		this.cname=cname;
	}

	public int getAsid() {
		return asid;
	}

	public void setAsid(int asid) {
		this.asid = asid;
	}

	public String getAsdate() {
		return asdate;
	}

	public void setAsdate(String asdate) {
		this.asdate = asdate;
	}

	public String getAscount() {
		return ascount;
	}

	public void setAscount(String ascount) {
		this.ascount = ascount;
	}

	@Override
	public String toString() {
		return "\nAssess [asid=" + asid + ", asdate=" + asdate + ", ascount=" + ascount + ", cname=" + cname + "]";
	}

	
	
	
	
}
