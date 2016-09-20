drop table admin;
drop table orderdetails;
drop table orders;
drop table assess;
drop table customer;
drop table photos;
drop table photoTypes;
drop table product;
drop table productType;
drop table address;
drop table stock;
drop table response;

drop sequence admin_aid;
drop sequence customer_cid;
drop sequence productTypes_ptid;
drop sequence product_pid;
drop sequence assess_asid;
drop sequence orderdetails_odid;
drop sequence photos_phid;
drop sequence photoTypes_phtid;
drop sequence stock_kid;
drop sequence response_rid;
drop sequence address_aid;

create sequence admin_aid start with 1000 increment by 1;
create sequence customer_cid start with 1000 increment by 1;
create sequence productTypes_ptid start with 1 increment by 1;
create sequence product_pid start with 1 increment by 1;
create sequence assess_asid start with 1000 increment by 1;
create sequence orderdetails_odid start with 1000 increment by 1;
create sequence photoTypes_phtid start with 1000 increment by 1;
create sequence photos_phid start with 1000 increment by 1;
create sequence stock_kid start with 1000 increment by 1;
create sequence address_aid start with 2 increment by 1;
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
	select *from admin;
	
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
	
  	select *from producttype;
  	
	insert into productType values(productTypes_ptid.nextval,'床上用品',0);
	insert into productType values(productTypes_ptid.nextval,'装饰设计',0);
	insert into productType values(productTypes_ptid.nextval,'家居用品',0);
	insert into productType values(productTypes_ptid.nextval,'床上四件套',1);
	insert into productType values(productTypes_ptid.nextval,'床单/被套',1);
	insert into productType values(productTypes_ptid.nextval,'枕头',1);
	insert into productType values(productTypes_ptid.nextval,'棉被',1);
	insert into productType values(productTypes_ptid.nextval,'竹凉席',1);
	insert into productType values(productTypes_ptid.nextval,'板材',2);
	insert into productType values(productTypes_ptid.nextval,'墙纸',2);
	insert into productType values(productTypes_ptid.nextval,'窗帘',2);
	insert into productType values(productTypes_ptid.nextval,'天花板',2);
	insert into productType values(productTypes_ptid.nextval,'家具',2);
	insert into productType values(productTypes_ptid.nextval,'毛巾',3);
	insert into productType values(productTypes_ptid.nextval,'毛毯',3);
	insert into productType values(productTypes_ptid.nextval,'靠垫',3);
	insert into productType values(productTypes_ptid.nextval,'地毯',3);
	insert into productType values(productTypes_ptid.nextval,'沙发',3);
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
	create table photoTypes(
		phtid int primary key,
		phtname varchar2(500)		
	);
	
	insert into photoTypes values(photoTypes_phtid.nextval,'首页轮播广告大','首页顶部广告轮播图，图片大于其他',to_date('2016-7-7','yyyy-mm-dd'));
	insert into photoTypes values(photoTypes_phtid.nextval,'轮播广告小1','首页右侧广告轮播图1',to_date('2016-7-22','yyyy-mm-dd'));
	insert into photoTypes values(photoTypes_phtid.nextval,'轮播广告小2','首页右侧广告轮播图2',to_date('2016-3-27','yyyy-mm-dd'));
	insert into photoTypes values(photoTypes_phtid.nextval,'轮播广告小3','首页右侧广告轮播图3',to_date('2016-4-17','yyyy-mm-dd'));
	insert into photoTypes values(photoTypes_phtid.nextval,'横排广告','首页底部横排广告轮播图',to_date('2016-5-8','yyyy-mm-dd'));
	delete from photoTypes where phtid=1040;
	select phtid,phtname,phdes,to_char(phdate,'yyyy-mm-dd') phdate from photoTypes 
	select count(*) from photos where phtid=1040;
	select count(1) from photoTypes
	
--图片
	create table photos(
		phid int primary key,--图片编号
		phname varchar2(20), --图片名称
		pict varchar2(1500),--图片
		psize varchar2(300),--图片大小
		phdate date,--加入时间
		phstatus int ,--状态
		phtid int
	);
	insert into photos values(photos_phid.nextval,'简约式四件套','images/cp1.jpg','1024*1024',to_date('2016-5-23','yyyy-mm-dd'),1,1072);
	insert into photos values(photos_phid.nextval,'欧美风四件套','images/cp12.jpg','1024*1024',to_date('2016-5-07','yyyy-mm-dd'),1,1072);
	insert into photos values(photos_phid.nextval,'田园四件套','images/cp13.jpg','1024*1024',to_date('2016-4-26','yyyy-mm-dd'),1,1072);
	insert into photos values(photos_phid.nextval,'韩式风四件套','images/cp14.jpg','1024*1024',to_date('2016-7-29','yyyy-mm-dd'),1,1072);
	insert into photos values(photos_phid.nextval,'婚庆四件套','images/cp15.jpg','1024*1024',to_date('2016-5-14','yyyy-mm-dd'),1,1072);

	select phid,phname,pict,psize,to_char(p.phdate,'yyyy-mm-dd') phdate,phstatus,phtname from photos p,photoTypes t where p.phtid=t.phtid
	select phid,phname,pict,psize,to_char(p.phdate,'yyyy-mm-dd') phdate,phstatus,phtname from photos p,photoTypes t where p.phtid=t.phtid
			and p.phtid=1068
	delete from photos where phtid=1040;
	select phname,psize,to_char(phdate,'yyyy-mm-dd') phdate from photos where phid=1145
	select count(*) from photos;
	update photos set phstatus=0 where phid=1063;
	
	
	select * from productTypes;
	--商品表
	create table product(
		pid int primary key,--商品编号
		pname varchar2(300) ,--商品名
		pdesc varchar2(1000),--商品描述 	
		pnorms varchar2(100),--规格
		pprice number(6,2),--价格
		pdate date,--上架时间
		pview int,--浏览次数
		phid int ,--图片
		ptid int,--类型编号
		sid int --库存
	);
	delete product
		select pid,ptid,pname,pdesc,pnorms,pprice,to_char(pdate,'yyyy-MM-dd') pdate,pview,pict,sid from product 
	);
	
			 select * from (select a.*,rownum rn from (select pid,ptid,pname,pdesc,pnorms,pprice,to_char(pdate,'yyyy-MM-dd') pdate,pview,pict,sid from product where ptid=2 order by pview desc,pid asc)a and 1*12>=rownum) where rn>(1-1)*12


	insert into product values(product_pid.nextval,'棉被','被子被芯磨绒加厚春秋被单人空调被 学生太空被保暖棉被双人冬被 ',
	'150*200cm3斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pic/cp1.jpg',1,2);	
	insert into product values(product_pid.nextval,'棉被','冬被子冬被加厚保暖冬季棉被被芯春秋被太空被被褥丝棉被学生宿舍  ',
	'150*200cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp2.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','Homeplus被子加厚被芯春秋被冬天棉被保暖冬被双人空调被夏凉被 ',
	'200*230cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp3.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','北极绒冬天被子冬被加厚保暖被芯双人太空被空调被单人棉被春秋被  ',
	'200*230cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp4.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','被子被芯双人加厚棉被 冬被保暖子母被学生空调被 单人被褥春秋被  ',
	'220*240cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp5.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','维科冬天被子被芯棉被太空被褥单人双人空调被夏凉被特价春秋薄被  ',
	'220*240cm6斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp6.jpg',7,2);
		insert into product values(product_pid.nextval,'棉被','被子被芯磨绒加厚春秋被单人空调被 学生太空被保暖棉被双人冬被 ',
	'150*200cm3斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp7.jpg',7,2);	
	insert into product values(product_pid.nextval,'棉被','冬被子冬被加厚保暖冬季棉被被芯春秋被太空被被褥丝棉被学生宿舍  ',
	'150*200cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp8.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','Homeplus被子加厚被芯春秋被冬天棉被保暖冬被双人空调被夏凉被 ',
	'200*230cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp9.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','北极绒冬天被子冬被加厚保暖被芯双人太空被空调被单人棉被春秋被  ',
	'200*230cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp10.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','被子被芯双人加厚棉被 冬被保暖子母被学生空调被 单人被褥春秋被  ',
	'220*240cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp11.jpg',7,2);
	insert into product values(product_pid.nextval,'棉被','维科冬天被子被芯棉被太空被褥单人双人空调被夏凉被特价春秋薄被  ',
	'220*240cm6斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp12.jpg',7,2);
	insert into product values(product_pid.nextval,'床上四件套','春夏季1.5/1.8m床上用品四件套学生宿舍1.2米床单人被子套三件套4 ','2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','大学生床上用品四件套1.8m被单1.2寝室床单被套米1.5宿舍三件套4',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'床上四件套','水晶绒四件套加厚保暖秋冬法兰绒纯色绣花被套1.8m床1.5米珊瑚绒  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','床上用品纯棉四件套 全棉4件套1.5/1.8/2.0m床简约单双人床单被套 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'床上四件套','顺丰 南极人珊瑚绒四件套法莱绒1.8m床单被套法兰绒1.5米床上用品 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','雅娴条纹全棉四件套纯色纯棉1.5/1.8m床单被套床上三件套2.0双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'床上四件套','简约纯色素色床上用品1.5m纯棉磨毛床单被套三件套1.8m全棉四件套  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','欧式全棉贡缎提花四件套1.8m床单婚庆床品四件套纯棉天丝被套双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
		insert into product values(product_pid.nextval,'床上四件套','床上用品纯棉四件套 全棉4件套1.5/1.8/2.0m床简约单双人床单被套 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'床上四件套','顺丰 南极人珊瑚绒四件套法莱绒1.8m床单被套法兰绒1.5米床上用品 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','雅娴条纹全棉四件套纯色纯棉1.5/1.8m床单被套床上三件套2.0双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'床上四件套','简约纯色素色床上用品1.5m纯棉磨毛床单被套三件套1.8m全棉四件套  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1000);
	insert into product values(product_pid.nextval,'床上四件套','欧式全棉贡缎提花四件套1.8m床单婚庆床品四件套纯棉天丝被套双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/cp1.jpg',4,1001);
	insert into product values(product_pid.nextval,'枕头','恒源祥枕头 枕芯 颈椎枕五星级酒店软枕头 包邮zhentou 正品 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','暖舒舒太空记忆枕慢回弹记忆枕头颈椎枕头记忆棉护颈保健枕头枕芯  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd1.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','包邮专柜枕头枕芯决明子保健护颈枕夏单人薰衣草正品荞麦一对成人 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd2.jpg',6,1001);
	insert into product values(product_pid.nextval,'枕头','送枕套正品决明子枕头薰衣草荞麦壳皮枕芯护颈椎学生成人单人一对 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd4.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','迪缦 酒店枕头枕芯 全棉面料特价羽丝绒纯棉成人护颈椎一对拍2  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd3.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','枕头可水洗羽丝棉防螨枕芯五星酒店宿舍宾馆枕头特价一对拍2包邮 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd5.jpg',6,1001);
	insert into product values(product_pid.nextval,'枕头','枕头枕芯一对拍2 酒店保健水洗羽丝绒真空护颈椎宿舍记忆枕心包邮 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd6.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','专柜正品枕芯枕头一对决明子枕头单人磁疗保健护颈枕成人正品特价 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd7.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','莫凡家纺正品舒梦枕芯一只五星酒店枕珍珠棉枕芯学生枕头枕芯包邮',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd8.jpg',6,1001);
	insert into product values(product_pid.nextval,'枕头','水星家纺枕头枕芯一对抗菌防螨羽丝绒枕头保健枕成人正品特价包邮 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/dkd9.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','【第二件1元】南极人酒店枕头枕芯全棉面料羽丝绒酒店枕一对拍2',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd11.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','可水洗枕头枕芯记忆好睡眠成人保健护脊椎创意时尚酒店中高枕包邮 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd12.jpg',6,1001);
		insert into product values(product_pid.nextval,'枕头','枕头枕芯一对拍2 酒店保健水洗羽丝绒真空护颈椎宿舍记忆枕心包邮 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd13.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','专柜正品枕芯枕头一对决明子枕头单人磁疗保健护颈枕成人正品特价 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd14.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','莫凡家纺正品舒梦枕芯一只五星酒店枕珍珠棉枕芯学生枕头枕芯包邮',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd15.jpg',6,1001);
	insert into product values(product_pid.nextval,'枕头','水星家纺枕头枕芯一对抗菌防螨羽丝绒枕头保健枕成人正品特价包邮 ',
	'1m*2m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd16.jpg',6,2);
	insert into product values(product_pid.nextval,'枕头','【第二件1元】南极人酒店枕头枕芯全棉面料羽丝绒酒店枕一对拍2',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd17.jpg',6,1000);
	insert into product values(product_pid.nextval,'枕头','可水洗枕头枕芯记忆好睡眠成人保健护脊椎创意时尚酒店中高枕包邮 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/kd18.jpg',6,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj35.jpg',14,1002);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj36.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj37.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj38.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj39.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj40.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj41.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj42.jpg',14,1001);
		insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj43.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj44.jpg',14,1001);	
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj45.jpg',14,1001);	
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj46.jpg',14,1001);
	insert into product values(product_pid.nextval,'浴巾','美容院宾馆洗浴桑拿足浴汗蒸沙发抹胸专用浴巾柔软吸水床单大毛巾 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj47.jpg',14,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj48.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj49.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj50.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj51.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj52.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj53.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj54.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj55.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj56.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj57.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj58.jpg',11,1001);
		insert into product values(product_pid.nextval,'窗帘','名门 现代纯色棉麻布客厅卧室落地窗环保全遮光窗帘成品定制加厚 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/yj59.jpg',11,1001);
		insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt1.jpg',17,1001);
		insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt2.jpg',17,1001);	
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt3.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt4.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt5.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt6.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt7.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt8.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt9.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt10.jpg',17,1001);	
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt11.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt12.jpg',17,1001);	
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt1.jpg',17,1001);
	insert into product values(product_pid.nextval,'地毯','土耳其简约抽象地毯 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'pics/ddt2.jpg',17,1001);
	select *from product;
	
	 select rownum,a.* from (select rownum,s.*,(select count(1) from studyCourse where courseid = s.courseid ) memberCount,
		(select avg(assess) from studyCourse where courseid = s.courseid) assessAvg
		 from course s where rownum>=12*(1-1))a where 12*#{pagenumber}>=rownum 
	
		 select rownum,a.* from (select)

		 
		 select * from (select a.*,rownum rn from
		 (select pid,ptid,pname,pdesc,pnorms,pprice,to_char(pdate,'yyyy-MM-dd') pdate,pview,pict,sid from product  order by pview desc,pid asc)a where rownum>=12*(0))a where 12*1>=rownum 
select * from (select a.*,rownum rn from (select pid,ptid,pname,pdesc,pnorms,pprice,to_char(pdate,'yyyy-MM-dd') pdate,pview,pict,sid from product order by pview desc,pid asc)a where rownum>=12*(2-1))a where 12*2>=rownum 	
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
  
  drop table address
--地址表
	create table address(
		aid int primary key,--地址编号
		aarea varchar2(40),--地区
		adetail varchar2(100),--详细地址
		amail int,--邮政编号
		aname varchar2(20),--姓名
		atel varchar2(15)     --手机号码
	);
	
  	insert into address values(1,'湖南','湖南工学院',414000,'胡明望','15674732978');
	drop table orders;
	  --订单表
	create table orders(
		oid varchar2(20) primary key,--订单号
		omoney number(12,2),--订单价
		odate date,--下单时间时间
		ostutas int, --订单状态  1 待付款  2已付款   3代发货
		aid int references address(aid)--地址
	);
  	
	
	
  	insert into orders values('20160105213313',1000.00,to_date('2016-1-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160105214413',2000.00,to_date('2016-1-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160105215513',3000.00,to_date('2016-1-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160205211113',1000.00,to_date('2016-2-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160205212213',2000.00,to_date('2016-2-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160205213313',3000.00,to_date('2016-2-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160305242413',1000.00,to_date('2016-3-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160305252513',3000.00,to_date('2016-3-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160305272613',2000.00,to_date('2016-3-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160405212213',1000.00,to_date('2016-4-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160405232413',2000.00,to_date('2016-4-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160405211253',3000.00,to_date('2016-4-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160505213313',1000.00,to_date('2016-5-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160505215213',2000.00,to_date('2016-5-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160505212513',3000.00,to_date('2016-5-07','YYYY-mm-dd'),3,1);
  	insert into orders values('20160605213313',1000.00,to_date('2016-6-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160605214413',3000.00,to_date('2016-6-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160605215513',2000.00,to_date('2016-6-07','YYYY-mm-dd'),3,1);
  	insert into orders values('20160705213313',1000.00,to_date('2016-7-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160705214413',4000.00,to_date('2016-7-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160705215513',2000.00,to_date('2016-7-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160805211113',1000.00,to_date('2016-8-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160805212213',3000.00,to_date('2016-8-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160805213313',2000.00,to_date('2016-8-07','YYYY-mm-dd'),3,1);
	insert into orders values('20160905211113',2000.00,to_date('2016-9-07','YYYY-mm-dd'),1,1);
	insert into orders values('20160905212213',3000.00,to_date('2016-9-07','YYYY-mm-dd'),2,1);
	insert into orders values('20160905213313',4000.00,to_date('2016-9-07','YYYY-mm-dd'),3,1);
	insert into orders values('201601005242413',1000.00,to_date('2016-10-07','YYYY-mm-dd'),1,1);
	insert into orders values('201601005252513',5000.00,to_date('2016-10-07','YYYY-mm-dd'),2,1);
	insert into orders values('201601005272613',8000.00,to_date('2016-10-07','YYYY-mm-dd'),3,1);
	insert into orders values('201601005212213',1000.00,to_date('2016-11-07','YYYY-mm-dd'),1,1);
	insert into orders values('201601005232413',3000.00,to_date('2016-11-07','YYYY-mm-dd'),2,1);
	insert into orders values('201601005211253',2000.00,to_date('2016-11-07','YYYY-mm-dd'),3,1);
	insert into orders values('201601005213313',2000.00,to_date('2016-12-07','YYYY-mm-dd'),1,1);
	insert into orders values('201601005215213',7000.00,to_date('2016-12-07','YYYY-mm-dd'),2,1);
	insert into orders values('201601005212513',8000.00,to_date('2016-12-07','YYYY-mm-dd'),3,1);
	insert into orderdetails values(orderdetails_odid.nextval,1000,1000,'201601005252513');	
	insert into orderdetails values(orderdetails_odid.nextval,1001,1001,'201601005252513');	
	insert into orderdetails values(orderdetails_odid.nextval,1000,1001,'201601005232413');	
	
drop table orderdetails;
--订单详细表
create table orderdetails(
    odid int primary key,--订单详细编号
    pid  int references product(pid),--商品编号
    cid  int references customer(cid),--客户编号
    oid  varchar2(20) references orders(oid)--订单编号
  );
  

	select * from admin;

select * from assess;
select * from photos;
select * from photoTypes;
select * from product;
select * from orderdetails;
select * from orders;
select * from customer;
select * from productType;
select * from address;
select * from stock;
select * from response;	
