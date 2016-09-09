package com.yc.highgo.entity;

public class Orders {
	private String oid;
	private int onum;
	private String odate;
	private int ostutas;
	private double omoney;
	private Address address;
	
	
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
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	public Orders() {
	}
	public Orders(String oid, int onum, int ostutas, double omoney, Address address) {
		this.oid = oid;
		this.onum = onum;
		this.ostutas = ostutas;
		this.omoney = omoney;
		this.address = address;
	}
	@Override
	public String toString() {
		return "\nOrders [oid=" + oid + ", onum=" + onum + ", ostutas=" + ostutas + ", odate=" + odate + ", omoney="
				+ omoney + ", address=" + address + "]";
	}
	
}
