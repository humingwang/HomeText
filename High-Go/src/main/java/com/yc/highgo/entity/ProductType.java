package com.yc.highgo.entity;

public class ProductType {
	private int ptid;
	private String name;
	private int fptid;
	public int getPtid() {
		return ptid;
	}
	public void setPtid(int ptid) {
		this.ptid = ptid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFptid() {
		return fptid;
	}
	public void setFptid(int fptid) {
		this.fptid = fptid;
	}
	public ProductType(int ptid, String name, int fptid) {
		this.ptid = ptid;
		this.name = name;
		this.fptid = fptid;
	}
	public ProductType() {
		super();
	}
	public ProductType(String name, int fptid) {
		this.name = name;
		this.fptid = fptid;
	}
	@Override
	public String toString() {
		return " {ptid=" + ptid + ", name=" + name + ", fptid=" + fptid + "}";
	}
	
	
}
