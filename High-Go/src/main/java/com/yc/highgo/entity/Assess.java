package com.yc.highgo.entity;

import java.util.Date;

public class Assess {
	private int asid;
	private Date asdate;
	private String ascount;
	
	public Assess() {
	}

	public Assess(int asid, Date asdate, String ascount) {
		this.asid = asid;
		this.asdate = asdate;
		this.ascount = ascount;
	}

	public int getAsid() {
		return asid;
	}

	public void setAsid(int asid) {
		this.asid = asid;
	}

	public Date getAsdate() {
		return asdate;
	}

	public void setAsdate(Date asdate) {
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
		return "\nAssess [asid=" + asid + ", asdate=" + asdate + ", ascount=" + ascount + "]";
	}
	
	
	
}
