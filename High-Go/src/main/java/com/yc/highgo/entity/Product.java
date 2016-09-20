package com.yc.highgo.entity;

import java.util.Date;

public class Product {
	private int pid;
	private String pname;
	private String pdesc;
	private String pnorms;
	private String pprice;
	private String pict;
	private int pview;
	private Date pdate;
	private ProductType productType;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPnorms() {
		return pnorms;
	}
	public void setPnorms(String pnorms) {
		this.pnorms = pnorms;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPict() {
		return pict;
	}
	public void setPict(String pict) {
		this.pict = pict;
	}
	public int getPview() {
		return pview;
	}
	public void setPview(int pview) {
		this.pview = pview;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public ProductType getProductType() {
		return productType;
	}
	public void setProductType(ProductType productType) {
		this.productType = productType;
	}
	public Product(int pid, String pname, String pdesc, String pnorms, String pprice, String pict, int pview,
			Date pdate, ProductType productType) {
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pnorms = pnorms;
		this.pprice = pprice;
		this.pict = pict;
		this.pview = pview;
		this.pdate = pdate;
		this.productType = productType;
	}
	
	public Product() {
	}
	@Override
	public String toString() {
		return "\nProduct [pid=" + pid + ", pname=" + pname + ", pdesc=" + pdesc + ", pnorms=" + pnorms + ", pprice="
				+ pprice + ", pict=" + pict + ", pview=" + pview + ", pdate=" + pdate + ", productType=" + productType
				+ "]";
	}
	
}
