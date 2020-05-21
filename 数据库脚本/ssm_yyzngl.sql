/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.53 : Database - ssm_yyzngl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm_yyzngl` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `ssm_yyzngl`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`username`,`password`,`realname`,`contact`) values 
('1','admin','123456','admin','admin'),
('A20200413095658924','admin1','123456','管理员1','15211111111');

/*Table structure for table `advice` */

DROP TABLE IF EXISTS `advice`;

CREATE TABLE `advice` (
  `adviceid` varchar(255) NOT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `doctorid` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `advice` */

insert  into `advice`(`adviceid`,`ano`,`usersid`,`doctorid`,`contents`,`addtime`) values 
('A20200413103201484','A20200413102914346','U20190107100551419','D20200413100754117','在家好好休息，不要乱跑','2020-04-13'),
('A20200413103316422','A20200413102948899','U20190107100551419','D20200413100754117','换种药吃吃看','2020-04-13');

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `articleid` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `bannerid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `istop` varchar(255) DEFAULT NULL,
  `isflv` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `article` */

insert  into `article`(`articleid`,`title`,`bannerid`,`image`,`istop`,`isflv`,`contents`,`addtime`,`hits`) values 
('A20190107015344639','医疗知识1','B20190107004900515','upfiles/20200413101722.jpg','是','是','<p>医疗知识1医疗知识1医疗知识1医疗知识1医疗知识1医疗知识1医疗知识1医疗知识1</p>\r\n','2019-01-07','4'),
('A20190107171051399','新闻公告1','B20190107004845495','upfiles/20200413101532.jpg','是','是','<p>新闻公告1新闻公告1新闻公告1新闻公告1新闻公告1</p>\r\n','2019-01-07','3'),
('A20200413101833525','保健理疗1','B20200413101150688','upfiles/20200413101823.jpg','是','是','<p>保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1保健理疗1</p>\r\n','2020-04-13','4');

/*Table structure for table `asign` */

DROP TABLE IF EXISTS `asign`;

CREATE TABLE `asign` (
  `asignid` varchar(255) NOT NULL,
  `ano` varchar(255) DEFAULT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `deptid` varchar(255) DEFAULT NULL,
  `doctorid` varchar(255) DEFAULT NULL,
  `orderdate` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`asignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `asign` */

insert  into `asign`(`asignid`,`ano`,`usersid`,`deptid`,`doctorid`,`orderdate`,`status`,`memo`) values 
('A20200413102931254','A20200413102914346','U20190107100551419','D20200413095807905','D20200413100754117','2020-04-13','完成','肚子痛'),
('A20200413103001542','A20200413102948899','U20190107100551419','D20200413095807905','D20200413100754117','2020-04-13','完成','肚子又痛'),
('A20200413103437553','A20200413103428207','U20190107100551419','D20200413095807905','D20200413100754117','2020-04-13','未完成','第一次'),
('A20200413103449838','A20200413103442689','U20190107100551419','D20200413095807905','D20200413100754117','2020-04-13','未完成','第二次'),
('A20200413103628208','A20200413103616489','U20190107100551419','D20200413095807905','D20200413100754117','2020-04-14','未完成','第三次');

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `bannerid` varchar(255) NOT NULL,
  `bannername` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `banner` */

insert  into `banner`(`bannerid`,`bannername`,`addtime`) values 
('B20190107004845495','新闻公告','2020-02-07'),
('B20190107004900515','医疗知识','2020-02-07'),
('B20200413101150688','保健理疗','2020-04-12');

/*Table structure for table `bbs` */

DROP TABLE IF EXISTS `bbs`;

CREATE TABLE `bbs` (
  `bbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `repnum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bbs` */

insert  into `bbs`(`bbsid`,`usersid`,`title`,`contents`,`addtime`,`hits`,`repnum`) values 
('B20200413103947563','U20190107100551419','神医','<p>我肚子痛了几天，去了好几个医院都解决不了，可是我到这个医院后，只是拿了药，吃了就见效了, 神奇</p>\r\n','2020-04-13 10:39:47','2','1');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptid` varchar(255) NOT NULL,
  `deptname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

insert  into `dept`(`deptid`,`deptname`) values 
('D20190107004829788','外科'),
('D20190107004832661','内科'),
('D20190107170840577','妇科'),
('D20200413095807905','肠胃科');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `doctorid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `deptid` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `xueli` varchar(255) DEFAULT NULL,
  `biye` varchar(255) DEFAULT NULL,
  `themax` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `doctor` */

insert  into `doctor`(`doctorid`,`username`,`password`,`realname`,`deptid`,`image`,`sex`,`birthday`,`xueli`,`biye`,`themax`,`contents`) values 
('D20190107095728396','doctor4','123456','医生4','D20190107004829788','upfiles/20200413100422.jpg','男','2020-04-13','大学本科','南通医科大学','2','<p>南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学南通医科大学</p>\r\n'),
('D20190107095753657','doctor3','123456','医生3','D20190107004832661','upfiles/20200413100238.jpg','男','2020-04-13','大学本科','牛津医学院','10','<p>这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生这是一个全球知名的医生</p>\r\n'),
('D20190107095836319','doctor2','123456','医生2','D20190107170840577','upfiles/20200413100134.jpg','男','2020-04-13','大学本科','北京医科大学','10','<p>这是医生是海归</p>\r\n'),
('D20190107170947857','doctor1','123456','医生1','D20200413095807905','upfiles/20200413100017.jpg','男','2020-04-13','大学本科','南京医科大学','5','<p>这个医生在这边挺有名的</p>\r\n'),
('D20200413100754117','doctor5','123456','医生5','D20200413095807905','upfiles/20200413100656.jpg','男','2020-04-13','博士','上海军医大学','4','<p>上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学上海军医大学</p>\r\n');

/*Table structure for table `drugs` */

DROP TABLE IF EXISTS `drugs`;

CREATE TABLE `drugs` (
  `drugsid` varchar(255) NOT NULL,
  `drugsname` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `productor` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`drugsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `drugs` */

insert  into `drugs`(`drugsid`,`drugsname`,`price`,`productor`,`memo`) values 
('D20190107094122553','药品6','66','生产商6','药品6'),
('D20190107094141562','药品5','19','生产商5','药品5'),
('D20190107094220278','药品4','28','生产商4','药品4'),
('D20190107095522103','药品3','50','生产商3','药品3'),
('D20190107095541168','药品2','25','生产商2','药品2'),
('D20190107171120984','药品1','20','生产厂1','药品1'),
('D20200413104513822','药品7','77','生产商7','备注7');

/*Table structure for table `rebbs` */

DROP TABLE IF EXISTS `rebbs`;

CREATE TABLE `rebbs` (
  `rebbsid` varchar(255) NOT NULL,
  `usersid` varchar(255) DEFAULT NULL,
  `bbsid` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rebbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rebbs` */

insert  into `rebbs`(`rebbsid`,`usersid`,`bbsid`,`contents`,`addtime`) values 
('R20200413104219865','U20190107171150308','B20200413103947563','<p>有这么神吗</p>\r\n','2020-04-13 10:42:19');

/*Table structure for table `sell` */

DROP TABLE IF EXISTS `sell`;

CREATE TABLE `sell` (
  `sellid` varchar(255) NOT NULL,
  `sno` varchar(255) DEFAULT NULL,
  `drugsid` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `addtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sellid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sell` */

insert  into `sell`(`sellid`,`sno`,`drugsid`,`num`,`price`,`total`,`addtime`) values 
('S20200413103151708','A20200413102914346','D20190107171120984','1','20','20.0','2020-04-13'),
('S20200413103153859','A20200413102914346','D20190107171120984','1','20','20.0','2020-04-13'),
('S20200413103159357','A20200413102914346','D20190107095541168','2','25','50.0','2020-04-13'),
('S20200413103256671','A20200413102948899','D20190107095522103','2','50','100.0','2020-04-13'),
('S20200413103315543','A20200413102948899','D20190107095522103','2','50','100.0','2020-04-13'),
('S20200413103315651','A20200413102948899','D20190107095522103','2','50','100.0','2020-04-13'),
('S20200413103315760','A20200413102948899','D20190107095522103','2','50','100.0','2020-04-13');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `usersid` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`usersid`,`username`,`password`,`realname`,`sex`,`birthday`,`contact`,`address`,`regdate`) values 
('U20190107100551419','user1','123456','用户1','男','2020-04-13','15222222222','南京雨花台','2020-01-07'),
('U20190107171150308','user2','123456','用户2','女','2019-01-07','15233333333','南京雨花台','2020-01-07'),
('U20200413100859433','user3','123456','用户3','男','2020-04-13','15211111111','南京雨花台','2020-04-13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
