drop table admin;
drop table orders;
drop table orderdetails;
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
drop sequence productType_ptid;
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
create sequence productType_ptid start with 1 increment by 1;
create sequence product_pid start with 1000 increment by 1;
create sequence assess_asid start with 1000 increment by 1;
create sequence orderdetails_odid start with 1000 increment by 1;

create sequence photoTypes_phtid start with 1000 increment by 1;
create sequence photos_phid start with 1000 increment by 1;
create sequence stock_kid start with 1000 increment by 1;
create sequence response_rid start with 1000 increment by 1;
create sequence address_aid start with 1 increment by 1;

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
	insert into customer values(customer_cid.nextval,'bb','a',1000,'女',18,'123456@qq.com');
	insert into customer values(customer_cid.nextval,'cc','a',1000,'男',18,'132071034@qq.com'); 
	insert into customer values(customer_cid.nextval,'dd','a',1000,'女',18,'123888@qq.com');
	select *from customer
	
	
--商品类型：
	create table productType(
		ptid int primary key,--类型编号
		name varchar2(10),--类型名
		fptid  int default 0
	);
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
	create table photoTypes(
		phtid int primary key,
		phtname varchar2(500)		
	);
	alter table photoTypes add phdes varchar2(800);
	alter table photoTypes add phdate date;
	
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
	select *from photos;
	insert into photos values(photos_phid.nextval,'床上用品四件套','images/pic1.jpg','1024*1024',to_date('2016-5-23','yyyy-mm-dd'),1,1068);
	insert into photos values(photos_phid.nextval,'棉被','images/pic2.jpg','1024*1024',to_date('2016-5-07','yyyy-mm-dd'),1,1068);
	insert into photos values(photos_phid.nextval,'床单四件套','images/pic3.jpg','1024*1024',to_date('2016-4-26','yyyy-mm-dd'),1,1068);
	insert into photos values(photos_phid.nextval,'家居用品','images/pic4.jpg','1024*1024',to_date('2016-7-29','yyyy-mm-dd'),1,1068);
	insert into photos values(photos_phid.nextval,'家居用品','images/pic4.jpg','1024*1024',to_date('2016-5-14','yyyy-mm-dd'),1,1068);
	insert into photos values(photos_phid.nextval,'床上用品四件套','images/pic5.jpg','1024*1024',to_date('2016-4-13','yyyy-mm-dd'),1,1068);
	
	insert into photos values(photos_phid.nextval,'欧式窗帘','images/cl1.jpg','1024*1024',to_date('2016-5-23','yyyy-mm-dd'),1,1069);
	insert into photos values(photos_phid.nextval,'简约现代式窗帘','images/cl2.jpg','1024*1024',to_date('2016-5-07','yyyy-mm-dd'),1,1069);
	insert into photos values(photos_phid.nextval,'绝色美式窗帘','images/cl3.jpg','1024*1024',to_date('2016-4-26','yyyy-mm-dd'),1,1069);
	insert into photos values(photos_phid.nextval,'高档加厚式窗帘','images/cl4.jpg','1024*1024',to_date('2016-7-29','yyyy-mm-dd'),1,1069);
	insert into photos values(photos_phid.nextval,'田园式窗帘','images/cl5.jpg','1024*1024',to_date('2016-5-14','yyyy-mm-dd'),1,1069);
	
	insert into photos values(photos_phid.nextval,'珊瑚绒毯','images/ddt1.jpg','1024*1024',to_date('2016-5-23','yyyy-mm-dd'),1,1070);
	insert into photos values(photos_phid.nextval,'拉舍尔毛毯','images/ddt2.jpg','1024*1024',to_date('2016-5-07','yyyy-mm-dd'),1,1070);
	insert into photos values(photos_phid.nextval,'羊毛羊绒','images/ddt3.jpg','1024*1024',to_date('2016-4-26','yyyy-mm-dd'),1,1070);
	insert into photos values(photos_phid.nextval,'竹纤维毯','images/ddt4.jpg','1024*1024',to_date('2016-7-29','yyyy-mm-dd'),1,1070);
	insert into photos values(photos_phid.nextval,'蚕丝毯','images/ddt4.jpg','1024*1024',to_date('2016-5-14','yyyy-mm-dd'),1,1070);
	
	insert into photos values(photos_phid.nextval,'卡通靠垫','images/dkd1.jpg','1024*1024',to_date('2016-5-23','yyyy-mm-dd'),1,1071);
	insert into photos values(photos_phid.nextval,'办公座椅靠垫','images/dkd2.jpg','1024*1024',to_date('2016-5-07','yyyy-mm-dd'),1,1071);
	insert into photos values(photos_phid.nextval,'韩式靠垫','images/dkd3.jpg','1024*1024',to_date('2016-4-26','yyyy-mm-dd'),1,1071);
	insert into photos values(photos_phid.nextval,'多功能纯棉靠垫','images/dkd4.jpg','1024*1024',to_date('2016-7-29','yyyy-mm-dd'),1,1071);
	insert into photos values(photos_phid.nextval,'可爱抱枕','images/dkd4.jpg','1024*1024',to_date('2016-5-14','yyyy-mm-dd'),1,1071);
	
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
	update photos set phname='nihao',psize=111,phdate=to_date('2016-7-29','yyyy-mm-dd') where phid=1140
	delete from photos where phid in(1140,1141);
	
--商品表
	create table product(
		pid int primary key,--商品编号
		pname varchar2(300) ,--商品名
		pdesc varchar2(1000),--商品描述
		pnorms varchar2(100),--规格
		pprice number(6,2),--价格
		pdate date,--上架时间
		pview int,--浏览次数
		pict varchar2(1000) ,--图片
		ptid int,--类型编号
		sid int --库存
	);
	select pname,pict,pprice from product where pname like '四%'
	insert into product values(product_pid.nextval,'窗帘','韩式田园全遮光定制窗帘布欧式客厅拼接成品绿色蕾丝飘窗卧室清新 ',
	'每米布料不加工单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl1.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','纯色美式乡村窗帘飘窗棉麻简约现代客厅卧室成品地中海蓝色qfxl ',
	'每米纱不加工单价',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl2.jpg',2,1000);
	insert into product values(product_pid.nextval,'窗帘','物理遮光隔热窗帘布定制 简约现代短帘 卧室阳台飘窗窗帘成品特价 ',
	'1米布挂钩单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl3.jpg',3,1001);
	insert into product values(product_pid.nextval,'窗帘','高档加厚涤纶防水防霉浴帘布宜家卫生间窗帘隔断帘子浴室淋浴挂帘 ',
	'1米纱挂钩单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl4.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','舒娅慕 田园窗帘布成品定制飘窗短帘半帘 半遮光布卧室阳台窗帘 ',
	'1米布打孔单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl5.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','现代简约成品窗帘布客厅卧室半遮光布田园飘窗窗帘定制  ',
	'每米布料不加工单价',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl6.jpg',2,1000);
	insert into product values(product_pid.nextval,'窗帘','简约现代纯色全遮光窗帘布料成品特价遮阳飘窗窗帘遮光布卧室客厅',
	'每米布料加工单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl7.jpg',3,1001);
	insert into product values(product_pid.nextval,'窗帘','韩式田园半遮光客厅卧室飘窗窗帘布成品定制窗帘布料  ',
	'1米纱挂钩单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl8.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','定制美式纯色窗帘成品白纱半遮光窗纱帘子客厅卧室飘窗落地窗特价  ',
	'1米布挂钩单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl9.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','美式乡村卧室加厚棉麻窗帘隔音亚麻布料遮光定制纯色窗帘成品客厅 ',
	'1米布打孔单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl10.jpg',1,2);
	insert into product values(product_pid.nextval,'窗帘','简约现代定制韩式全遮光窗帘成品隔热遮阳卧室客厅落地飘窗纱特价 ',
	'每米布料不加工单价',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl11.jpg',2,1000);
	insert into product values(product_pid.nextval,'窗帘','卡通窗帘成品定制飘窗短帘半帘半遮光布客厅卧室阳台便宜布料田园 ',
	'每米布料不加工单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl12.jpg',3,1001);
	insert into product values(product_pid.nextval,'窗帘','窗帘布批发现代田园卧室客厅遮光窗帘红碎花成品窗帘特价欧式定制  ',
	'1米布打孔单价',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cl13.jpg',1,2);
	
	
	insert into product values(product_pid.nextval,'棉被','冬被子冬被加厚保暖冬季棉被被芯春秋被太空被被褥丝棉被学生宿舍  ',
	'150*200cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb1.png',1,2);
	insert into product values(product_pid.nextval,'棉被','Homeplus被子加厚被芯春秋被冬天棉被保暖冬被双人空调被夏凉被 ',
	'200*230cm4斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb2.png',1,2);
	insert into product values(product_pid.nextval,'棉被','北极绒冬天被子冬被加厚保暖被芯双人太空被空调被单人棉被春秋被  ',
	'200*230cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb3.png',1,2);
	insert into product values(product_pid.nextval,'棉被','被子被芯双人加厚棉被 冬被保暖子母被学生空调被 单人被褥春秋被  ',
	'220*240cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb4.png',1,2);
	insert into product values(product_pid.nextval,'棉被','维科冬天被子被芯棉被太空被褥单人双人空调被夏凉被特价春秋薄被  ',
	'220*240cm6斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb5.png',1,2);
	insert into product values(product_pid.nextval,'棉被','被子被芯双人加厚棉被 冬被保暖子母被学生空调被 单人被褥春秋被  ',
	'220*240cm5斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb6.png',1,2);
	insert into product values(product_pid.nextval,'棉被','维科冬天被子被芯棉被太空被褥单人双人空调被夏凉被特价春秋薄被  ',
	'220*240cm6斤',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mb7.png',1,2);
	
	insert into product values(product_pid.nextval,'床上四件套','春夏季1.5/1.8m床上用品四件套学生宿舍1.2米床单人被子套三件套4 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp1.jpg',2,1000);
	insert into product values(product_pid.nextval,'床上四件套','大学生床上用品四件套1.8m被单1.2寝室床单被套米1.5宿舍三件套4',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp2.jpg',3,1001);
	insert into product values(product_pid.nextval,'床上四件套','水晶绒四件套加厚保暖秋冬法兰绒纯色绣花被套1.8m床1.5米珊瑚绒  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp3.jpg',2,1000);
	insert into product values(product_pid.nextval,'床上四件套','床上用品纯棉四件套 全棉4件套1.5/1.8/2.0m床简约单双人床单被套 ',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp4.jpg',3,1001);
	insert into product values(product_pid.nextval,'床上四件套','顺丰 南极人珊瑚绒四件套法莱绒1.8m床单被套法兰绒1.5米床上用品 ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp5.jpg',2,1000);
	insert into product values(product_pid.nextval,'床上四件套','雅娴条纹全棉四件套纯色纯棉1.5/1.8m床单被套床上三件套2.0双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp6.jpg',3,1001);
	insert into product values(product_pid.nextval,'床上四件套','简约纯色素色床上用品1.5m纯棉磨毛床单被套三件套1.8m全棉四件套  ',
	'2.2m',213,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp7.jpg',2,1000);
	insert into product values(product_pid.nextval,'床上四件套','欧式全棉贡缎提花四件套1.8m床单婚庆床品四件套纯棉天丝被套双人',
	'1.8m',89,to_date('2016-8-12','yyyy-mm-dd'),2,'images/cp8.jpg',3,1001);
	
	insert into product values(product_pid.nextval,'枕头','恒源祥枕头 枕芯 颈椎枕五星级酒店软枕头 包邮zhentou 正品 ',
	'单边枕',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt1.png',1,2);
	insert into product values(product_pid.nextval,'枕头','暖舒舒太空记忆枕慢回弹记忆枕头颈椎枕头记忆棉护颈保健枕头枕芯  ',
	'低枕',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt2.png',2,1000);
	insert into product values(product_pid.nextval,'枕头','包邮专柜枕头枕芯决明子保健护颈枕夏单人薰衣草正品荞麦一对成人 ',
	'中枕',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt3.png',3,1001);
	insert into product values(product_pid.nextval,'枕头','送枕套正品决明子枕头薰衣草荞麦壳皮枕芯护颈椎学生成人单人一对 ',
	'高枕',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt4.png',1,2);
	insert into product values(product_pid.nextval,'枕头','迪缦 酒店枕头枕芯 全棉面料特价羽丝绒纯棉成人护颈椎一对拍2  ',
	'单边枕',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt5.png',2,1000);
	insert into product values(product_pid.nextval,'枕头','枕头可水洗羽丝棉防螨枕芯五星酒店宿舍宾馆枕头特价一对拍2包邮 ',
	'低枕',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt6.png',3,1001);
	insert into product values(product_pid.nextval,'枕头','枕头枕芯一对拍2 酒店保健水洗羽丝绒真空护颈椎宿舍记忆枕心包邮 ',
	'高枕',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt7.png',1,2);
	insert into product values(product_pid.nextval,'枕头','专柜正品枕芯枕头一对决明子枕头单人磁疗保健护颈枕成人正品特价 ',
	'中枕',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt8.png',2,1000);
	insert into product values(product_pid.nextval,'枕头','莫凡家纺正品舒梦枕芯一只五星酒店枕珍珠棉枕芯学生枕头枕芯包邮',
	'低枕',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt9.png',3,1001);
	insert into product values(product_pid.nextval,'枕头','水星家纺枕头枕芯一对抗菌防螨羽丝绒枕头保健枕成人正品特价包邮 ',
	'中枕',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt10.png',1,2);
	insert into product values(product_pid.nextval,'枕头','【第二件1元】南极人酒店枕头枕芯全棉面料羽丝绒酒店枕一对拍2',
	'单边枕',31.2,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt11.png',2,1000);
	insert into product values(product_pid.nextval,'枕头','可水洗枕头枕芯记忆好睡眠成人保健护脊椎创意时尚酒店中高枕包邮 ',
	'单边枕',35,to_date('2016-8-12','yyyy-mm-dd'),2,'images/zt12.png',3,1001);
	
	insert into product values(product_pid.nextval,'凉席','折叠席子1.5米 1.8m床双面竹凉席单人宿舍学生席 竹席 ',
	'1m*2m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx1.png',1,2);
	insert into product values(product_pid.nextval,'凉席','汇舒凉席单人床学生宿舍上下铺0.9米双面席子夏季卡通冰丝凉席1.2   ',
	'2.2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx2.png',2,1000);
	insert into product values(product_pid.nextval,'凉席','亏本清仓凉席竹席学生宿舍单人床席子1.2米双面折叠1.5批发包邮  ',
	'1.8m',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx3.png',3,1001);
	insert into product values(product_pid.nextval,'凉席','夏季学生凉席宿舍宝宝床凉席儿童竹席幼儿园午睡席婴儿床竹凉席子 ',
	'1m*2m',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx4.png',1,2);
	insert into product values(product_pid.nextval,'凉席','凉席藤席1.2米1.5m双人学生单人0.9可折叠夏天席子送枕套 清仓 ',
	'2.2m',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx5.png',2,1000);
	insert into product values(product_pid.nextval,'凉席','加厚藤席子双面凉席 沙发垫夏季定做宿舍草席单双人1.5m1.8 2米床 ',
	'1.8m',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx6.png',3,1001);
	insert into product values(product_pid.nextval,'凉席','正品迪士尼儿童卡通席子0.9/1.2/1.35/1.5/1.8米冰丝凉席男孩女孩  ',
	'1m*2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx7.png',1,2);
	insert into product values(product_pid.nextval,'凉席','学生床竹凉席子宿舍双面折叠碳化镜面加厚竹席0.9/1.2/1.5 m包邮  ',
	'2.2m',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx8.png',2,1000);
	insert into product values(product_pid.nextval,'凉席','学生凉席宿舍0.9m米竹席竹青单人床上下铺单人凉席寝室冰席可折叠',
	'1.8m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx9.png',3,1001);
	insert into product values(product_pid.nextval,'凉席','寝室凉席定做双面折叠竹席子定制2/1.6/1.5m/1.4/1.3/1.1米床订做  ',
	'1m*2m',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx10.png',1,2);
	insert into product values(product_pid.nextval,'凉席','麻将凉席1.2宿舍0.8单人0.9席子麻将席竹凉席1.5折叠1.8m床包邮 ',
	'2.2m',31.2,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx11.png',2,1000);
	insert into product values(product_pid.nextval,'凉席','邦德学生凉席子 0.9米上下铺床格子床单人床学校宿舍草席清仓特价 ',
	'1.8m',35,to_date('2016-8-12','yyyy-mm-dd'),2,'images/lx12.png',3,1001);
	
	
	insert into product values(product_pid.nextval,'地毯','土耳其进口地毯办公室书房茶几客厅地毯现代简约抽象地毯 ',
	'精加密1.2*1.7m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt1.jpg',1,2);
	insert into product values(product_pid.nextval,'地毯','博尼亚 特价欧式客厅茶几卧室地毯可水洗地中海田园美式乡村地毯 ',
	'精加密1.4*2.0m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt2.jpg',2,1000);
	insert into product values(product_pid.nextval,'地毯','东升 米奇现代简约时尚卧室床前边客厅茶几地毯阳台入户防滑特价  ',
	'精加密1.6*2.3m',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt3.jpg',3,1001);
	insert into product values(product_pid.nextval,'地毯','特价加厚高档丝毛地毯茶几客厅卧室地毯飘窗床边满铺地毯  ',
	'精加密2*3m',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt4.jpg',1,2);
	insert into product values(product_pid.nextval,'地毯','特价可水洗客厅茶几地毯防滑防潮卧室床边地毯厨房飘窗毯可定做',
	'普通款1.2*1.7m',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt5.jpg',2,1000);
	insert into product values(product_pid.nextval,'地毯','简约现代书房客厅茶几房间地毯卧室满铺床边长方形地垫可机洗定制  ',
	'普通款1.4*2.0m',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt6.jpg',3,1001);
	insert into product values(product_pid.nextval,'地毯',' 时尚简约现代欧式客厅茶几沙发书房卧室床边手工腈纶地毯满铺定制   ',
	'普通款1.6*2.3m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt7.jpg',1,2);
	insert into product values(product_pid.nextval,'地毯','加厚珊瑚绒地毯 客厅茶几卧室床边厨房地毯地垫门垫大地毯可定制 ',
	'普通款2*3m',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt8.jpg',2,1000);
	insert into product values(product_pid.nextval,'地毯','皇朝 韩式可水洗毛绒地垫 客厅茶几 卧室床边地毯 婚房地毯可定制 ',
	'普通款1.8*1.8m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt9.jpg',3,1001);
	insert into product values(product_pid.nextval,'地毯','方块地毯可安装商用会议室写字楼台球室棋牌室商务工程办公室地毯  ',
	'普通款1.95*2.3m',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt10.jpg',1,2);
	insert into product values(product_pid.nextval,'地毯','加厚地毯地垫门厅进门入户脚垫卧室厨房卫生间浴室地垫吸水防滑垫  ',
	'精加密1.85*1.85m',31.2,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt11.jpg',2,1000);
	insert into product values(product_pid.nextval,'地毯','简约加厚弹力旗地毯家用客厅弹力丝毛地毯茶几地毯卧室沙发床边毯  ',
	'精加密1.9*2.3m',35,to_date('2016-8-12','yyyy-mm-dd'),2,'images/ddt12.jpg',3,1001);
	
	insert into product values(product_pid.nextval,'抱枕','折叠席子1.5米 1.8m床双面竹凉席单人宿舍学生席 竹席 ',
	'40*40cm(含芯)',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd1.jpg',1,2);
	insert into product values(product_pid.nextval,'抱枕','汇舒凉席单人床学生宿舍上下铺0.9米双面席子夏季卡通冰丝凉席1.2   ',
	'40*40cm(不含芯)',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd2.jpg',2,1000);
	insert into product values(product_pid.nextval,'抱枕','亏本清仓凉席竹席学生宿舍单人床席子1.2米双面折叠1.5批发包邮  ',
	'45*45cm(含芯)',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd3.jpg',3,1001);
	insert into product values(product_pid.nextval,'抱枕','夏季学生凉席宿舍宝宝床凉席儿童竹席幼儿园午睡席婴儿床竹凉席子 ',
	'45*45cm(不含芯)',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd4.jpg',1,2);
	insert into product values(product_pid.nextval,'抱枕','凉席藤席1.2米1.5m双人学生单人0.9可折叠夏天席子送枕套 清仓 ',
	'50*50cm(含芯)',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd5.jpg',2,1000);
	insert into product values(product_pid.nextval,'抱枕','加厚藤席子双面凉席 沙发垫夏季定做宿舍草席单双人1.5m1.8 2米床 ',
	'50*50cm(不含芯)',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd6.jpg',3,1001);
	insert into product values(product_pid.nextval,'抱枕','正品迪士尼儿童卡通席子0.9/1.2/1.35/1.5/1.8米冰丝凉席男孩女孩  ',
	'55*55cm(含芯)',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd7.jpg',1,2);
	insert into product values(product_pid.nextval,'抱枕','学生床竹凉席子宿舍双面折叠碳化镜面加厚竹席0.9/1.2/1.5 m包邮  ',
	'55*55cm(不含芯)',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd8.jpg',2,1000);
	insert into product values(product_pid.nextval,'抱枕','学生凉席宿舍0.9m米竹席竹青单人床上下铺单人凉席寝室冰席可折叠',
	'60*60cm(含芯)',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd9.jpg',3,1001);
	insert into product values(product_pid.nextval,'抱枕','寝室凉席定做双面折叠竹席子定制2/1.6/1.5m/1.4/1.3/1.1米床订做  ',
	'60*60cm(不含芯)',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/kd10.jpg',1,2);
	
	insert into product values(product_pid.nextval,'毛毯','冬季加厚法莱绒法兰绒毛毯珊瑚绒毯子单双人床单毛巾被学生空调毯  ',
	'1m*2m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt1.png',1,2);
	insert into product values(product_pid.nextval,'毛毯','夏季空调毯珊瑚绒毯子加厚法兰绒毛毯床单毛巾被午睡单人双人盖毯 ',
	'2.2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt2.png',2,1000);
	insert into product values(product_pid.nextval,'毛毯','初芒 法兰绒小毛毯盖毯沙发毯午睡毯单人 夏季午休毯办公室空调毯  ',
	'1.8m',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt3.png',3,1001);
	insert into product values(product_pid.nextval,'毛毯','夏季学生凉席宿舍宝宝床凉席儿童竹席幼儿园午睡席婴儿床竹凉席子 ',
	'1m*2m',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt4.png',1,2);
	insert into product values(product_pid.nextval,'毛毯','冬季珊瑚绒毯办公室盖毯空调毯午睡毯单人小毯子双人床单加厚毛毯  ',
	'2.2m',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt5.png',2,1000);
	insert into product values(product_pid.nextval,'毛毯','夏季法兰绒毛毯加厚珊瑚绒毯双人空调盖毯学生午睡毛巾被单人毯子 ',
	'1.8m',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt6.png',3,1001);
	insert into product values(product_pid.nextval,'毛毯','毛毯冬季盖毯空调毯加厚法兰绒珊瑚绒毯子午睡单人双人床单毛巾被   ',
	'1m*2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt7.png',1,2);
	insert into product values(product_pid.nextval,'毛毯','毛毯加厚冬季单双人毯子床单毛巾毯沙发盖毯宿舍空调毯珊瑚绒毛毯  ',
	'2.2m',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt8.png',2,1000);
	insert into product values(product_pid.nextval,'毛毯','珊瑚绒毯子加厚法兰绒单双人毛毯盖毯床单薄午睡空调毯夏季法莱绒',
	'1.8m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt9.png',3,1001);
	insert into product values(product_pid.nextval,'毛毯','法兰绒毛毯加厚双人珊瑚绒毯子 夏季毛巾被空调午睡单人床单盖毯 ',
	'1m*2m',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt10.png',1,2);
	insert into product values(product_pid.nextval,'毛毯','夏季珊瑚绒毯办公室盖毯空调毯婴儿小毛毯单人毯子儿童午睡毯毛毯 ',
	'2.2m',31.2,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt11.png',2,1000);
	insert into product values(product_pid.nextval,'毛毯','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'1.8m',35,to_date('2016-8-12','yyyy-mm-dd'),2,'images/mt12.png',3,1001);
	
	
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'1m*2m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj1.jpg',1,2);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'2.2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj2.jpg',2,1000);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'1.8m',20,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj3.jpg',3,1001);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'1m*2m',45,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj4.jpg',1,2);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'2.2m',33,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj5.jpg',2,1000);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'1.8m',24,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj6.jpg',3,1001);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'1m*2m',19,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj7.jpg',1,2);
	insert into product values(product_pid.nextval,'毛巾/浴巾','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'2.2m',21,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj8.jpg',2,1000);
	insert into product values(product_pid.nextval,'毛巾/浴巾','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾 ',
	'1.8m',22,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj9.jpg',3,1001);
	insert into product values(product_pid.nextval,'毛巾/浴巾','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'1m*2m',28.9,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj10.jpg',1,2);
	insert into product values(product_pid.nextval,'毛巾/浴巾','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'2.2m',31.2,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj11.jpg',2,1000);
	insert into product values(product_pid.nextval,'毛巾/浴巾','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'1.8m',35,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj12.jpg',3,1001);
	
	
	insert into product values(product_pid.nextval,'沙发',' 真皮沙发进口头层牛皮沙发现代简约皮沙发大户型转角皮艺沙发组合    ',
	'(国产)双+贵妃',2234,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj1.jpg',1,2);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+单+贵妃',3900,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj2.jpg',2,1000);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃+边几',4320,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj3.jpg',3,1001);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(国产)单+贵妃',2345,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj4.jpg',1,2);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃',3300,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj5.jpg',2,1000);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)双+单+贵妃',4200,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj6.jpg',3,1001);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'(进口)双+贵妃+边几',4390,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj7.jpg',1,2);
	insert into product values(product_pid.nextval,'沙发','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)单+贵妃+边几',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj8.jpg',2,1000);
	insert into product values(product_pid.nextval,'沙发','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾 ',
	'(中厚皮)双+贵妃',3820,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj9.jpg',3,1001);
	insert into product values(product_pid.nextval,'沙发','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+单+贵妃',4322,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj10.jpg',1,2);
	insert into product values(product_pid.nextval,'沙发','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+贵妃+边几',4580,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj11.jpg',2,1000);
	insert into product values(product_pid.nextval,'沙发','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'(中厚皮)单+贵妃',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj12.jpg',3,1001);
	
	insert into product values(product_pid.nextval,'壁纸',' 真皮沙发进口头层牛皮沙发现代简约皮沙发大户型转角皮艺沙发组合    ',
	'(国产)双+贵妃',2234,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj1.jpg',1,2);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+单+贵妃',3900,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj2.jpg',2,1000);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃+边几',4320,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj3.jpg',3,1001);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(国产)单+贵妃',2345,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj4.jpg',1,2);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃',3300,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj5.jpg',2,1000);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)双+单+贵妃',4200,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj6.jpg',3,1001);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'(进口)双+贵妃+边几',4390,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj7.jpg',1,2);
	insert into product values(product_pid.nextval,'壁纸','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)单+贵妃+边几',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj8.jpg',2,1000);
	insert into product values(product_pid.nextval,'壁纸','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾 ',
	'(中厚皮)双+贵妃',3820,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj9.jpg',3,1001);
	insert into product values(product_pid.nextval,'壁纸','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+单+贵妃',4322,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj10.jpg',1,2);
	insert into product values(product_pid.nextval,'壁纸','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+贵妃+边几',4580,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj11.jpg',2,1000);
	insert into product values(product_pid.nextval,'壁纸','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'(中厚皮)单+贵妃',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj12.jpg',3,1001);
	
	
	insert into product values(product_pid.nextval,'天花板',' 真皮沙发进口头层牛皮沙发现代简约皮沙发大户型转角皮艺沙发组合    ',
	'(国产)双+贵妃',2234,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj1.jpg',1,2);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+单+贵妃',3900,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj2.jpg',2,1000);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃+边几',4320,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj3.jpg',3,1001);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(国产)单+贵妃',2345,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj4.jpg',1,2);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃',3300,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj5.jpg',2,1000);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)双+单+贵妃',4200,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj6.jpg',3,1001);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'(进口)双+贵妃+边几',4390,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj7.jpg',1,2);
	insert into product values(product_pid.nextval,'天花板','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)单+贵妃+边几',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj8.jpg',2,1000);
	insert into product values(product_pid.nextval,'天花板','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾 ',
	'(中厚皮)双+贵妃',3820,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj9.jpg',3,1001);
	insert into product values(product_pid.nextval,'天花板','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+单+贵妃',4322,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj10.jpg',1,2);
	insert into product values(product_pid.nextval,'天花板','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+贵妃+边几',4580,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj11.jpg',2,1000);
	insert into product values(product_pid.nextval,'天花板','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'(中厚皮)单+贵妃',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj12.jpg',3,1001);
	
	
	insert into product values(product_pid.nextval,'吊灯',' 真皮沙发进口头层牛皮沙发现代简约皮沙发大户型转角皮艺沙发组合    ',
	'(国产)双+贵妃',2234,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj1.jpg',1,2);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+单+贵妃',3900,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj2.jpg',2,1000);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃+边几',4320,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj3.jpg',3,1001);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(国产)单+贵妃',2345,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj4.jpg',1,2);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾 ',
	'(国产)双+贵妃',3300,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj5.jpg',2,1000);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)双+单+贵妃',4200,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj6.jpg',3,1001);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾   ',
	'(进口)双+贵妃+边几',4390,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj7.jpg',1,2);
	insert into product values(product_pid.nextval,'吊灯','浴巾纯棉成人儿童男女裹胸情侣白柔软吸水性感酒店全棉大毛巾浴巾  ',
	'(进口)单+贵妃+边几',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj8.jpg',2,1000);
	insert into product values(product_pid.nextval,'吊灯','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾 ',
	'(中厚皮)双+贵妃',3820,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj9.jpg',3,1001);
	insert into product values(product_pid.nextval,'吊灯','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+单+贵妃',4322,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj10.jpg',1,2);
	insert into product values(product_pid.nextval,'吊灯','纯棉浴巾 成人加厚大浴巾酒店吸水大毛巾批 发婴儿童男女全棉浴巾  ',
	'(中厚皮)双+贵妃+边几',4580,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj11.jpg',2,1000);
	insert into product values(product_pid.nextval,'吊灯','特价全棉毛巾被 纯棉单人双人加厚大夏季空调被盖毯婴儿童毛毯子  ',
	'(中厚皮)单+贵妃',3500,to_date('2016-8-12','yyyy-mm-dd'),2,'images/dyj12.jpg',3,1001);
	
	
	select *from product;
	
	
--商品评价表：
	create table assess(
		asid int primary key,--编号
		asdate date,--时间
		ascount varchar2(2000),--内容
		cid  int references customer(cid),--客户编号
		pid  int references product(pid)--商品编号
	);	
	alter table assess update pid int;
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'轻便，无异味，做工好，可拆洗，面料柔软，厚度也够,也介绍给了朋友，很惊喜的床垫哦，很满意。',1,1004);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'垫子确实不错，物流特别快，床垫的厚度适中，很舒服很柔软，超喜欢，夏天嫌热睡反面，冬天睡绒面舒适暖和，特别适合大学生宿舍使用，值得买。',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'直接垫下面可以的，冬天更舒服。不会太软也不会太硬，刚刚好，物流也挺快的。卖家态度很好。',1001,1006);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'包装挺好，快递速度超快滴！就是垫子厚度一般在5cm，自作了一个加厚的褥子加在里面了，竟然装的正正好！！',3001,1007);
	
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子还可以，刚打开有一点点的味道，但物流真的是不怎么样，5号提交的订单，9号才有物流消息 一直显示的是等待揽件',1,1021);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'昨天收到，看上去不错，还没用，应该不会差，老品牌，好的话再来买一条，好评五分',2001,1008);
	
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'软软的，摸起来很舒服，也挺厚的，感觉足够了，也不会太重，也没有奇怪的味道，第一次在网上买被子，是南极人的，我很满意，',1041,1020);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'宝贝收到，和描述的一致，做工非常细致，蓬松度也是非常好，儿子非常喜欢，大爱，给个好评！满分！',3001,1022);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子收到了，很松软，手感也细腻，很喜欢，不错、、、赞一个；美中不足的是物流太慢了',1042,1023);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子摸起来软软的，好舒服，满意，也实惠，尺寸正规，当时拍的时候还怕尺寸会偏小，特意就拍了最大的尺寸，喜欢的朋友看中了，不要忧 异了!',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子挺厚实的，包装的很特别，我喜欢。唯一不足的是有好几处黄色的脏点点。不过总体很满意。会推荐给好友的。',1043,1024);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子真的特别特别好 我用了淘金币抵扣才19快多 被子很厚实还有拉链袋收纳 没有异味真的是超级好啊 而且好厚实的',3001,1025);
	
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子收到了，宝贝很不错，款式非常漂亮，柔软舒服，手感好，质量很棒，非常好的卖家与店铺！忠心地感谢你，让我买到了梦寐以求的宝贝',1042,1026);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子洗了一点也不掉色，而且很干净，洗过的水很清澈，也不掉毛，很厚实，真的赚到了',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'被子一边是黄色另外一边是白色的，枕头也是不同颜色，黄与蓝搭配得非常好！被子毛绒绒的，非常舒服，它的质量也非常好，与卖家描述的完全一致，非常满意,真的很喜欢，完全超出期望值',1043,1027);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'收到宝贝后真的很惊喜哦，我很满意，是双成的，摸着面料很舒服很柔软，这个价格能买到这么好又实惠的真的不错，南极人你值得拥有',1041,1028);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'轻便，无异味，做工好，可拆洗，面料柔软，厚度也够,也介绍给了朋友，很惊喜的床垫哦，很满意。',1,1029);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'垫子确实不错，物流特别快，床垫的厚度适中，很舒服很柔软，超喜欢，夏天嫌热睡反面，冬天睡绒面舒适暖和，特别适合大学生宿舍使用，值得买。',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'其实是抱着试一试的心态买的，虽然评价很高，但是也会担心有假的，后头一想反正99嘛，还是比较熟悉的品牌，就买了，收到货真的很惊讶，质量花纹做的都很完美，',1001,1030);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'发货快 第二天就收到了 宝贝实在太好了！搞活买的，之前质疑这个价位是不是纯棉的，还买了运费险，收到宝贝后扯了几根线头用打火机烧了下全成灰烬，好高兴是纯绵的，',3001,1031);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'今天很柔软，摸着很舒服，冬天应该挺暖和，不会冷。顺丰快递也十分给力，速度很快。店家服务态度非常好，主动给我打电话告诉我店里活动，真的很暖心。',1,1032);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'产品比想象中的还要好，法兰绒的面料摸着很舒服，枕头套两面都是法兰绒的，两面的颜色都不一样，图案和图片上也是一样的，很喜欢，使用之前建议先洗了之后再用哦',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'实物和图片上一样，很美，因为现在太热，还没有上被芯，手感非常舒服，洗过了也不会掉毛，厚实，这个冬天不怕冷了',1042,1033);
	
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'枕头不错，就是枕头套就有点难看了，反正送的就无所谓了，另外我买的那个枕头套质量一般般 ',3001,1034);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'挺好的，弹性好，但刚收到有一点气味，不过晒晒应该就好了 ',1,1035);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'真空包装，感觉还可以，毕竟这个价位，对吧，祝生意兴隆哈 ',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'直接垫下面可以的，冬天更舒服。不会太软也不会太硬，刚刚好，物流也挺快的。卖家态度很好。',1001,1036);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'质量对于这个价格来说很满意了，颜色比图片深偏艳丽反正套枕套也就无所谓了',1043,1037);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'枕头还可以，毕竟这个价钱，回来的时候被我拆了几层棉花有点不匀，捣鼓了好半天。花色还可以，我比较喜欢枕高枕，这个高度不太喜欢啊！ ',1042,1038);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'收到迫不及待的打开了了，不错，不错，卖家服务态度挺好的，有需要还会再来的 ',2001,1008);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'用过两天再评价的，首先，卖家服务真的特别好，一直耐心的解释。然后枕头也很满意，是店家说的中枕，躺下大概还有5厘米左右吧，软软的，很舒服，这个价位太值了，周末去了趟超市，不敢说特别好，但这个价格这个质量，棒棒哒 ',1001,1039);
	insert into assess values(assess_asid.nextval,to_date('2016-2-27','yyyy-mm-dd'),
	'刚开始包裹送来的时候扁扁的，还以为是只有枕套，拆开包装袋，把拉链一打开，突然膨胀了起来，这效果超棒的！
	枕套粉色的很漂亮花纹很精致，枕芯的棉花质量也不错，枕下去很舒适软软的弹性十足，物超所值，全五星好评～！(=^ω^=) ',3001,1040);
	select * from assess;
	select count(1) from assess;
	select asid,c.cname,ascount,to_char(asdate,'yyyy-mm-dd') asdate,pname from assess a,customer c,product p where a.cid=c.cid and a.pid=p.pid;
	delete from assess where asid in (select asid from response where asid=1001);
	
	select asid,c.cname,ascount,to_char(asdate,'yyyy-mm-dd') asdate,pname from assess a,customer c,product p where a.cid=c.cid and a.pid=p.pid
		and ascount like '%好%' and asdate=to_date('2016-02-27', 'yyyy-MM-dd')

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
	insert into address values(address_aid.nextval,'湖南衡阳','珠晖区湖南工学院',0,'ywb','15570974507');
 	select *from address;
--订单表
	create table orders(
		oid varchar2(20) primary key,--订单号
		omoney number(12,2),--订单价
		onum int,---数量
		odate date,--下单时间时间
		ostutas int, --订单状态  1 待付款  2已付款   3代发货
		aid int references address(aid),--地址
		odid  int references orderdetails(odid)--详细订单编号
	);
  	
  	insert into orders values('20160105213313',1000.00,3,to_date('2016-1-07','YYYY-mm-dd'),1,1,1000);
	insert into orders values('20160105214413',2000.00,3,to_date('2016-1-07','YYYY-mm-dd'),2,1,1001);
	insert into orders values('20160105215513',3000.00,3,to_date('2016-1-07','YYYY-mm-dd'),3,1,1002);
	insert into orders values('20160205211113',1000.00,3,to_date('2016-2-07','YYYY-mm-dd'),1,1,1001);
	insert into orders values('20160205212213',2000.00,3,to_date('2016-2-07','YYYY-mm-dd'),2,1,1000);
	insert into orders values('20160205213313',3000.00,3,to_date('2016-2-07','YYYY-mm-dd'),3,1,1001);
	insert into orders values('20160305242413',1000.00,3,to_date('2016-3-07','YYYY-mm-dd'),1,1,1002);
	insert into orders values('20160305252513',3000.00,3,to_date('2016-3-07','YYYY-mm-dd'),2,1,1002);
	insert into orders values('20160305272613',2000.00,3,to_date('2016-3-07','YYYY-mm-dd'),3,1,1000);
	insert into orders values('20160405212213',1000.00,3,to_date('2016-4-07','YYYY-mm-dd'),1,1,1001);
	insert into orders values('20160405232413',2000.00,3,to_date('2016-4-07','YYYY-mm-dd'),2,1,1002);
	insert into orders values('20160405211253',3000.00,3,to_date('2016-4-07','YYYY-mm-dd'),3,1,1001);
	insert into orders values('20160505213313',1000.00,3,to_date('2016-5-07','YYYY-mm-dd'),1,1,1002);
	insert into orders values('20160505215213',2000.00,3,to_date('2016-5-07','YYYY-mm-dd'),2,1,1003);
	insert into orders values('20160505212513',3000.00,3,to_date('2016-5-07','YYYY-mm-dd'),3,1,1003);
  	insert into orders values('20160605213313',1000.00,3,to_date('2016-6-07','YYYY-mm-dd'),1,1,1001);
	insert into orders values('20160605214413',3000.00,3,to_date('2016-6-07','YYYY-mm-dd'),2,1,1002);
	insert into orders values('20160605215513',2000.00,3,to_date('2016-6-07','YYYY-mm-dd'),3,1,1001);
  	insert into orders values('20160705213313',1000.00,3,to_date('2016-7-07','YYYY-mm-dd'),1,1,1000);
	insert into orders values('20160705214413',4000.00,3,to_date('2016-7-07','YYYY-mm-dd'),2,1,1002);
	insert into orders values('20160705215513',2000.00,3,to_date('2016-7-07','YYYY-mm-dd'),3,1,1003);
	insert into orders values('20160805211113',1000.00,3,to_date('2016-8-07','YYYY-mm-dd'),1,1,1001);
	insert into orders values('20160805212213',3000.00,3,to_date('2016-8-07','YYYY-mm-dd'),2,1,1003);
	insert into orders values('20160805213313',2000.00,3,to_date('2016-8-07','YYYY-mm-dd'),3,1,1002);
	insert into orders values('20160905211113',2000.00,3,to_date('2016-9-07','YYYY-mm-dd'),1,1,1002);
	insert into orders values('20160905212213',3000.00,3,to_date('2016-9-07','YYYY-mm-dd'),2,1,1000);
	insert into orders values('20160905213313',4000.00,3,to_date('2016-9-07','YYYY-mm-dd'),3,1,1001);
	insert into orders values('201601005242413',1000.00,3,to_date('2016-10-07','YYYY-mm-dd'),1,1,1001);
	insert into orders values('201601005252513',5000.00,3,to_date('2016-10-07','YYYY-mm-dd'),2,1,1000);
	insert into orders values('201601005272613',8000.00,3,to_date('2016-10-07','YYYY-mm-dd'),3,1,1002);
	insert into orders values('201601005212213',1000.00,3,to_date('2016-11-07','YYYY-mm-dd'),1,1,1002);
	insert into orders values('201601005232413',3000.00,3,to_date('2016-11-07','YYYY-mm-dd'),2,1,1001);
	insert into orders values('201601005211253',2000.00,3,to_date('2016-11-07','YYYY-mm-dd'),3,1,1002);
	insert into orders values('201601005213313',2000.00,3,to_date('2016-12-07','YYYY-mm-dd'),1,1,1002);
	insert into orders values('201601005215213',7000.00,3,to_date('2016-12-07','YYYY-mm-dd'),2,1,1001);
	insert into orders values('201601005212513',8000.00,3,to_date('2016-12-07','YYYY-mm-dd'),3,1,1000);
	
	
	--订单详细表
	create table orderdetails(
    odid int primary key,--订单详细编号
    pid  int references product(pid),--商品编号
    cid  int references customer(cid)--客户编号
  );
  
  insert into orderdetails values(orderdetails_odid.nextval,1004,2001);
  insert into orderdetails values(orderdetails_odid.nextval,1007,1001);
  insert into orderdetails values(orderdetails_odid.nextval,1008,3001);
  insert into orderdetails values(orderdetails_odid.nextval,1008,1000);
  
	--总金额  总数   成功数 
	select (select sum(onum) from orders where ostutas=2) success,(select sum(onum) from orders) allnum,
	(select sum(oMoney) from orders) omoney,sum(onum) onum,extract (MONTH from oDate) as oDate,oStutas from orders  
	group by oDate,oStutas  order by oDate,oStutas desc
	
	
	select max(omoney),sum(oMoney) omoney,extract (MONTH from oDate) as oDate,ostutas 
		from orders  group by oDate,ostutas  order by oDate,ostutas desc 
		
		
		
		
select * from admin;
select * from orders;
select * from orderdetails;
select * from customer;
select * from assess;
select * from photos;
select * from photoTypes;
select * from product;
select * from productType;
select * from address;
select * from stock;
select * from response;		

  select * from photos;
  select p.phtid,phtname,phdes,to_char(phdate,'yyyy-mm-dd') phdate , (select count(1) from photos where phtid = p.phtid) count from photoTypes p
 select p.* , (select count(1) from photos where phtid = p.phtid) count from photoTypes p;
