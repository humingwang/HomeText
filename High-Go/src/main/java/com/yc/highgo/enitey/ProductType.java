package com.yc.highgo.enitey;

public class ProductType {
	private int ptid;
	private String ptname;
	private String fpid;
	public int getPtid() {
		return ptid;
	}
	public void setPtid(int ptid) {
		this.ptid = ptid;
	}
	public String getPtname() {
		return ptname;
	}
	public void setPtname(String ptname) {
		this.ptname = ptname;
	}
	public String getFpid() {
		return fpid;
	}
	public void setFpid(String fpid) {
		this.fpid = fpid;
	}
	public ProductType() {
	}
	@Override
	public String toString() {
		return "\nProductType [ptid=" + ptid + ", ptname=" + ptname + ", fpid=" + fpid + "]";
	}
	public ProductType(int ptid, String ptname, String fpid) {
		this.ptid = ptid;
		this.ptname = ptname;
		this.fpid = fpid;
	}
	
}
