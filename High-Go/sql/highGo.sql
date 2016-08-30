drop table admin;
drop table orderdetails;
drop table orders;
drop table assess;
drop table customer;
drop table product;
drop table productType;
drop table address;
drop table stock;

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
	insert into admin values(admin_aid.nextval,'high','a');
	
--客户表：
	create table customer(
		cid int primary key,--客户编号
		cname varchar2(20) not null,--客户名
		cpwd varchar2(20) not null,--客户密码
		cmoney number(10,2),--余额
		csex varchar2(2), --性别
		cage int,---年龄
		cemail varchar2(20) not null unique --邮箱
	);
	insert into customer values(customer_cid.nextval,'sa','a',1000,'女',18,'123@qq.com');
	
--商品类型：
	create table productType(
		ptid int primary key,--类型编号
		ptname varchar2(10),--类型名
		fptid  int default 0
	);
	insert into productType values(productType_ptid.nextval,'床上用品',0);
	insert into productType values(productType_ptid.nextval,'装饰设计',0);
	insert into productType values(productType_ptid.nextval,'家居用品',0);
	insert into productType values(productType_ptid.nextval,'四件套',1);
	insert into productType values(productType_ptid.nextval,'装饰设计',1);
	insert into productType values(productType_ptid.nextval,'家居用品',1);
	insert into productType values(productType_ptid.nextval,'床上用品','');
	insert into productType values(productType_ptid.nextval,'装饰设计','');
	insert into productType values(productType_ptid.nextval,'家居用品','');
	
--商品表：
	create table product(
		pid int primary key,--商品编号
		pname varchar2(30) ,--商品名
		pdesc varchar2(100),--商品描述
		pnorms varchar2(100),--规格
		pprice number(6,2),--价格
		ppic varchar2(100),--图片
		pdate date,--上架时间
		pview int,--浏览次数
		ptid int references productType(ptid)--类型编号
	);
	
	
--库存表
	create table stock(
		sid int primary key,--库存编号
		snum int     --数量
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
		onum int,---数量
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
--地址表
	create table address(
		aid int primary key,--地址编号
		aarea varchar2(40),--地区
		adetail varchar2(100),--详细地址
		amail int,--邮政编号
		aname varchar2(20),--姓名
		atel varchar2(15)     --手机号码
	);