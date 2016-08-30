drop table admin;
drop table orderdetails;
drop table orders;
drop table assess;
drop table customer;
drop table product;
drop table productType;

drop sequence admin_aid;
drop sequence customer_cid;
drop sequence productType_ptid;
drop sequence product_pid;
drop sequence assess_asid;
drop sequence orderdetails_odid;

create sequence admin_aid start with 1 increment by 1;
create sequence customer_cid start with 1 increment by 1;
create sequence productType_ptid start with 1 increment by 1;
create sequence product_pid start with 1 increment by 1;
create sequence assess_asid start with 1 increment by 1;
create sequence orderdetails_odid start with 1 increment by 1;


--管理员表：
	create table admin(
		aid int primary key,--管理员编号
		aname varchar2(20) not null,--管理员名
		apwd varchar2(20) not null --管理员密码
	);
--客户表：
	create table customer(
		cid int primary key,--客户编号
		cname varchar2(20) not null,--客户名
		cpwd varchar2(20) not null,--客户密码
		cmoney number(10,2),--余额
		csex varchar2(2), --性别
		cemail varchar2(20) not null unique --邮箱
	);
--商品类型：
	create table productType(
		ptid int primary key,--类型编号
		ptname varchar2(10),--类型名
		fptid  int default 0
	);
--商品表：
	create table product(
		pid int primary key,--商品编号
		pname varchar2(30) ,--商品名
		pdesc varchar2(100),--商品描述
		pstock int ,--库存
		pnorms varchar2(100),--规格
		pprice number(6,2),--价格
		ppic varchar2(100),--图片
		pdate date,--上架时间
		pview int,--浏览次数
		ptid int references productType(ptid)--类型编号
	);
--商品评价表：
	create table assess(
		asid int primary key,--编号
		asdate date,--时间
		ascount varchar2(100),--内容
		cid  int references customer(cid),--客户编号
		pid  int references product(pid)--商品编号
	);		
--订单表
	create table orders(
		oid varchar2(20) primary key,--订单号
		omoney number(12,2),--订单价
		otel varchar2(15) not null,--电话
		oaddr varchar2(50) not null,--地址
		ostutas int --订单状态
	);
--订单详细表
	create table orderdetails(
		odid int primary key,--订单详细编号
		pid  int references product(pid),--商品编号
		cid  int references customer(cid),--客户编号
		oid  varchar2(20) references orders(oid)--订单号
	);
