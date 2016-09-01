package com.yc.highgo.entity;

public class Orders {
	private int oid;
	private int onum;
	private int ostatus;
	private double omoney;
	private Address address;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public int getOstatus() {
		return ostatus;
	}
	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}
	public double getOmoney() {
		return omoney;
	}
	public void setOmoney(double omoney) {
		this.omoney = omoney;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Orders() {
	}
	public Orders(int oid, int onum, int ostatus, double omoney, Address address) {
		this.oid = oid;
		this.onum = onum;
		this.ostatus = ostatus;
		this.omoney = omoney;
		this.address = address;
	}
	@Override
	public String toString() {
		return "\nOrders [oid=" + oid + ", onum=" + onum + ", ostatus=" + ostatus + ", omoney=" + omoney + ", address="
				+ address + "]";
	}
	
}
