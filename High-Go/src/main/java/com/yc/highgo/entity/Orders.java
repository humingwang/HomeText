package com.yc.highgo.entity;

public class Orders {
	private String oid;
	private int onum;
	private String odate;
	private int ostutas;
	private double omoney;
	private int success;
	private int allnum;
	private String pname;
	private Address address;
	private int waits;
	private int aid;
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getWaits() {
		return waits;
	}
	public void setWaits(int waits) {
		this.waits = waits;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getAllnum() {
		return allnum;
	}
	public void setAllnum(int allnum) {
		this.allnum = allnum;
	}
	public int getSuccess() {
		return success;
	}
	public void setSuccess(int success) {
		this.success = success;
	}
	public String getOdate() {
		return odate;
	}
	public void setOdate(String odate) {
		this.odate = odate;
	}
	public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public int getOstutas() {
		return ostutas;
	}
	public void setOstutas(int ostutas) {
		this.ostutas = ostutas;
	}
	public double getOmoney() {
		return omoney;
	}
	public void setOmoney(double omoney) {
		this.omoney = omoney;
	}
	
	public Orders() {
	}
	public Orders(String oid, int onum, String odate, int ostutas, double omoney, int success,
			int allnum, String pname) {
		this.oid = oid;
		this.onum = onum;
		this.odate = odate;
		this.ostutas = ostutas;
		this.omoney = omoney;
		this.success = success;
		this.allnum = allnum;
		this.pname = pname;
	}
	
	public Orders(String oid, double omoney,int aid) {
		this.oid = oid;
		this.omoney = omoney;
		this.aid=aid;
	}
	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", onum=" + onum + ", odate=" + odate + ", ostutas=" + ostutas + ", omoney="
				+ omoney + ", success=" + success + ", allnum=" + allnum + ", pname=" + pname + ", address=" + address
				+ "]";
	}
	
}
