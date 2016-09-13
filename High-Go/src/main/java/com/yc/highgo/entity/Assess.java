package com.yc.highgo.entity;

import java.util.Date;

public class Assess {
	private int asid;
	private String asdate;
	private String ascount;
	private String cname;
	private String pname;
	
	
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public Assess() {
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
		return "Assess [asid=" + asid + ", asdate=" + asdate + ", ascount=" + ascount + ", cname=" + cname + ", pname="
				+ pname + "]";
	}

	public Assess(int asid, String asdate, String ascount, String cname, String pname) {
		this.asid = asid;
		this.asdate = asdate;
		this.ascount = ascount;
		this.cname = cname;
		this.pname = pname;
	}

	

	
	
	
	
}
