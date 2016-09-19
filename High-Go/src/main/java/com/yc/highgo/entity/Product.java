package com.yc.highgo.entity;


public class Product {
	private int pid;
	private String pids;
	private String pname;
	private String pdesc;
	private String pnorms;
	private double pprice;
	private String pict; 
	private int pview;
	private String pdate;
	private int ptid;
	private int pageNo;
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public String getPids() {
		return pids;
	}
	public void setPids(String pids) {
		this.pids = pids;
	}
	public int getPtid() {
		return ptid;
	}
	public void setPtid(int ptid) {
		this.ptid = ptid;
	}
	public String getPict() {
		return pict;
	}
	public void setPict(String pict) {
		this.pict = pict;
	}
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
	public double getPprice() {
		return pprice;
	}
	public void setPprice(double pprice) {
		this.pprice = pprice;
	}

	public int getPview() {
		return pview;
	}
	public void setPview(int pview) {
		this.pview = pview;
	}
	public String getPdate() {
		return pdate;
	}
	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	public ProductType getProductType() {
		return productType;
	}
	public void setProductType(ProductType productType) {
		this.productType = productType;
	}
	public Product(int pid, String pname, String pdesc, String pnorms, double pprice, String ppic, int pview,
			String pdate, String pict, ProductType productType) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pnorms = pnorms;
		this.pprice = pprice;
		this.pview = pview;
		this.pdate = pdate;
		this.pict = pict;
		this.productType = productType;
	}
	
	public Product( String pname, String pdesc, String pnorms, double pprice,String pdate, String pict, 
			int ptid) {
		super();

		this.pname = pname;
		this.pdesc = pdesc;
		this.pnorms = pnorms;
		this.pprice = pprice;
		this.pict = pict;
		this.pdate = pdate;
		this.ptid=ptid;
	
	}
	
	public Product(int pid, String pname, String pdesc,  double pprice,String pnorms,
			String pdate) {
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pnorms = pnorms;
		this.pprice = pprice;
		this.pdate = pdate;
	
	}
	public Product() {
	}
	public Product(String pname, String pdate) {
		this.pname = pname;
		this.pdate = pdate;

	}
	public Product(int ptid, int pageNo) {
		this.ptid = ptid;
		this.pageNo = pageNo;

	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pdesc=" + pdesc + ", pnorms=" + pnorms + ", pprice="
				+ pprice + ", pict=" + pict + ", pview=" + pview + ", pdate=" + pdate + ", ptid=" + ptid
				+ ", productType=" + productType + "]";
	}

	
}
