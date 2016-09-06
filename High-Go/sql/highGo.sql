drop table admin;
drop table orderdetails;
drop table orders;
drop table assess;
drop table customer;
drop table photo;
drop table photoType;
drop table product;
drop table productType;
drop table address;
drop table stock;
drop table response;

drop sequence admin_aid;
drop sequence customer_cid;
drop sequence productType_ptid;
drop sequence product_pid;
drop sequence assess_asid;
drop sequence orderdetails_odid;
drop sequence photo_phid;
drop sequence photoType_phtid;
drop sequence stock_kid;
drop sequence response_rid;

create sequence admin_aid start with 1000 increment by 1;
create sequence customer_cid start with 1000 increment by 1;
create sequence productType_ptid start with 1 increment by 1;
create sequence product_pid start with 1000 increment by 1;
create sequence assess_asid start with 1000 increment by 1;
create sequence orderdetails_odid start with 1000 increment by 1;

create sequence photoType_phtid start with 1000 increment by 1;
create sequence photo_phid start with 1000 increment by 1;
create sequence stock_kid start with 1000 increment by 1;
create sequence response_rid start with 1000 increment by 1;
select*from admin;

--管理员表：
	create table admin(
		aid int primary key,--管理员编号
		aname varchar2(20) not null,--管理员名
		apwd varchar2(20) not null, --管理员密码
		asex varchar2(10) not null,--性别
		aage int not null,--年龄
		atel number(15) not null,--电话
		aemail varchar2(20) not null unique--邮件
	);
	insert into admin values(admin_aid.nextval,'sa','a','女',22,13245238956,'123@qq.com');
	update admin set(aname=${aname},asex=${asex},aage=${aage},atel=${atel},aemail=${aamail} where aid=${aid})

	
--客户表：
	create table customer(
		cid int primary key,--客户编号
		cname varchar2(20) not null,--客户名
		cpwd varchar2(20) not null,--客户密码
		cmoney number(10,2) default 0,--余额
		csex varchar2(2) default null, --性别
		cage int default 20,---年龄
		cemail varchar2(20) not null unique --邮箱
	);
	select *from customer;
	insert into customer values(customer_cid.nextval,'qq','a',1000,'女',18,'1234@qq.com');
	insert into customer values(customer_cid.nextval,'ww','a',1000,'男',18,'1320710348@qq.com'); 
	insert into customer values(customer_cid.nextval,'sa','a',1000,'女',18,'123@qq.com');
	insert into customer values(customer_cid.nextval,'w','a',default,default,default,'122@qq.com');
	
	delete customer 
	select * from customer
	
	
--商品类型：
	create table productType(
		ptid int primary key,--类型编号
		name varchar2(10),--类型名
		fptid  int default 0
	);
	delete productType
	delete  productType  on delete cascade;
  	select *from producttype;
  	
	insert into productType values(productType_ptid.nextval,'床上用品',0);
	insert into productType values(productType_ptid.nextval,'装饰设计',0);
	insert into productType values(productType_ptid.nextval,'家居用品',0);
	insert into productType values(productType_ptid.nextval,'床上四件套',1);
	insert into productType values(productType_ptid.nextval,'床单/被套',1);
	insert into productType values(productType_ptid.nextval,'枕头',1);
	insert into productType values(productType_ptid.nextval,'棉被',1);
	insert into productType values(productType_ptid.nextval,'竹凉席',1);
	insert into productType values(productType_ptid.nextval,'板材',2);
	insert into productType values(productType_ptid.nextval,'墙纸',2);
	insert into productType values(productType_ptid.nextval,'窗帘',2);
	insert into productType values(productType_ptid.nextval,'天花板',2);
	insert into productType values(productType_ptid.nextval,'家具',2);
	insert into productType values(productType_ptid.nextval,'毛巾',3);
	insert into productType values(productType_ptid.nextval,'毛毯',3);
	insert into productType values(productType_ptid.nextval,'靠垫',3);
	insert into productType values(productType_ptid.nextval,'地毯',3);
	insert into productType values(productType_ptid.nextval,'沙发',3);
	select * from productType;
	
--库存表
	create table stock(
		sid int primary key,--库存编号
		snum int     --数量
	);
  select *from stock;
  insert into stock values(stock_kid.nextval,333);
  insert into stock values(stock_kid.nextval,2345);
  insert into stock values(stock_kid.nextval,5000);
  insert into stock values(stock_kid.nextval,300);
  
--图片类型
	create table photoType(
		phtid int primary key,
		phtname varchar2(20)		
	);
--图片
	create table photo(
		phid int primary key,
		phname varchar2(20),
		phstatus int ,
		phdate date,
		phtid int references photoType(phtid)
	);
--商品表
	create table product(
		pid int primary key,--商品编号
		pname varchar2(300) ,--商品名
		pdesc varchar2(1000),--商品描述
		pnorms varchar2(100),--规格
		pprice number(6,2),--价格
		pdate date,--上架时间
		pview int,--浏览次数
		phid int references photo(phid),--图片
		ptid int references productType(ptid),--类型编号
		sid int references stock(sid)--库存
	);
	insert into product values(product_pid.nextval,'学生床垫','加厚寝室上下铺床垫折叠0.9m单人大学生宿舍用床褥子防潮1米1.2米',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,null,1,2);
	insert into product values(product_pid.nextval,'四件套','春夏季1.5/1.8m床上用品四件套学生宿舍1.2米床单人被子套三件套4 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,null,2,1000);
	insert into product values(product_pid.nextval,'四件套','大学生床上用品四件套1.8m被单1.2寝室床单被套米1.5宿舍三件套4',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,null,3,1001);
	select *from product;
	
	
--商品评价表：
	create table assess(
		asid int primary key,--编号
		asdate date,--时间
		ascount varchar2(2000),--内容
		cid  int references customer(cid),--客户编号
		pid  int references product(pid)--商品编号
	);	
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'轻便，无异味，做工好，可拆洗，面料柔软，厚度也够,也介绍给了朋友，很惊喜的床垫哦，很满意。',1,1004);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'垫子确实不错，物流特别快，床垫的厚度适中，很舒服很柔软，超喜欢，夏天嫌热睡反面，冬天睡绒面舒适暖和，特别适合大学生宿舍使用，值得买。',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'直接垫下面可以的，冬天更舒服。不会太软也不会太硬，刚刚好，物流也挺快的。卖家态度很好。',1001,1006);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'包装挺好，快递速度超快滴！就是垫子厚度一般在5cm，自作了一个加厚的褥子加在里面了，竟然装的正正好！！',3001,1007);
	select * from assess;
	select count(1) from assess;
	select asid,c.cname,ascount,to_char(asdate,'yyyy-mm-dd') asdate from assess a,customer c where a.cid=c.cid;
	delete from assess where asid in (select asid from response where asid=1001);
	
	select asid,c.cname,ascount,to_char(asdate,'yyyy-mm-dd') asdate from assess a,customer c where a.cid=c.cid 
		and ascount like '%加厚%' and asdate=to_date('2016-02-27', 'yyyy-MM-dd')

	delete from assess where asid=1001 on delete cascade;
	
	--回复表
	 create table response(
	 rid int primary key,--回复编号
	 content varchar2(1000) not null,--回复内容
	 asid int references assess(asid)--评价表的id
  	);
  
  	insert into response values(response_rid.nextval,'你好',1001);
  
  
--地址表
	create table address(
		aid int primary key,--地址编号
		aarea varchar2(40),--地区
		adetail varchar2(100),--详细地址
		amail int,--邮政编号
		aname varchar2(20),--姓名
		atel varchar2(15)     --手机号码
	);
	
	
	
--订单表
	create table orders(
		oid varchar2(20) primary key,--订单号
		omoney number(12,2),--订单价
    onum int,---数量
    ostutas int, --订单状态
    aid int references address(aid)--地址
  );
  
  
  
--订单详细表
  create table orderdetails(
    odid int primary key,--订单详细编号
    pid  int references product(pid),--商品编号
    cid  int references customer(cid),--客户编号
    oid  varchar2(20) references orders(oid)--订单号
  );

 