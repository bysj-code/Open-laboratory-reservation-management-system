/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shiyanshikaifangpaike
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shiyanshikaifangpaike` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shiyanshikaifangpaike`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-01 10:02:25'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-01 10:02:25'),(3,'yuanxi_types','院系',1,'院系1',NULL,NULL,'2023-03-01 10:02:25'),(4,'yuanxi_types','院系',2,'院系2',NULL,NULL,'2023-03-01 10:02:25'),(5,'banji_types','班级',1,'班级1',NULL,NULL,'2023-03-01 10:02:25'),(6,'banji_types','班级',2,'班级2',NULL,NULL,'2023-03-01 10:02:25'),(7,'shiyanshi_types','实验室类型',1,'类型1',NULL,NULL,'2023-03-01 10:02:25'),(8,'shiyanshi_types','实验室类型',2,'类型2',NULL,NULL,'2023-03-01 10:02:25'),(9,'shiyanshi_types','实验室类型',3,'类型3',NULL,NULL,'2023-03-01 10:02:25'),(10,'shiyanshi_yuyue_yesno_types','预约状态',1,'待审核',NULL,NULL,'2023-03-01 10:02:25'),(11,'shiyanshi_yuyue_yesno_types','预约状态',2,'同意',NULL,NULL,'2023-03-01 10:02:25'),(12,'shiyanshi_yuyue_yesno_types','预约状态',3,'拒绝',NULL,NULL,'2023-03-01 10:02:25'),(13,'shiyanshi_yuyue_types','课题类型',1,'课题类型1',NULL,NULL,'2023-03-01 10:02:25'),(14,'shiyanshi_yuyue_types','课题类型',2,'课题类型2',NULL,NULL,'2023-03-01 10:02:25'),(15,'shiyanshi_yuyue_types','课题类型',3,'课题类型3',NULL,NULL,'2023-03-01 10:02:25'),(16,'ketibaoming_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-01 10:02:25'),(17,'ketibaoming_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-01 10:02:25'),(18,'ketibaoming_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-01 10:02:25'),(19,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-01 10:02:25'),(20,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-01 10:02:25'),(21,'shiyanshi_types','实验室类型',4,'类型4',NULL,'','2023-03-01 11:31:32');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-01 10:02:37','公告详情1','2023-03-01 10:02:37'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-01 10:02:37','公告详情2','2023-03-01 10:02:37'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-01 10:02:37','公告详情3','2023-03-01 10:02:37'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-01 10:02:37','公告详情4','2023-03-01 10:02:37'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-01 10:02:37','公告详情5','2023-03-01 10:02:37'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-01 10:02:37','公告详情6','2023-03-01 10:02:37'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-01 10:02:37','公告详情7','2023-03-01 10:02:37'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-01 10:02:37','公告详情8','2023-03-01 10:02:37'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-01 10:02:37','公告详情9','2023-03-01 10:02:37'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-01 10:02:37','公告详情10','2023-03-01 10:02:37'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-01 10:02:37','公告详情11','2023-03-01 10:02:37'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-01 10:02:37','公告详情12','2023-03-01 10:02:37'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-01 10:02:37','公告详情13','2023-03-01 10:02:37'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-01 10:02:37','公告详情14','2023-03-01 10:02:37');

/*Table structure for table `ketibaoming` */

DROP TABLE IF EXISTS `ketibaoming`;

CREATE TABLE `ketibaoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_yuyue_id` int(11) DEFAULT NULL COMMENT '实验室预约',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `ketibaoming_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `ketibaoming_yesno_text` text COMMENT '审核回复',
  `ketibaoming_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `ketibaoming_zuoweihao` varchar(200) DEFAULT NULL COMMENT '分配座位号 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='课题报名';

/*Data for the table `ketibaoming` */

insert  into `ketibaoming`(`id`,`shiyanshi_yuyue_id`,`yonghu_id`,`insert_time`,`ketibaoming_yesno_types`,`ketibaoming_yesno_text`,`ketibaoming_shenhe_time`,`ketibaoming_zuoweihao`,`create_time`) values (1,1,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(2,2,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(3,3,3,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(4,4,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(5,5,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(6,6,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(7,7,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(8,8,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(9,9,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(10,10,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(11,11,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(12,12,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(13,13,2,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(14,14,1,'2023-03-01 10:02:37',1,NULL,NULL,NULL,'2023-03-01 10:02:37'),(15,6,1,'2023-03-01 10:27:21',2,'更好地三国杀','2023-03-01 11:32:54','a99','2023-03-01 10:27:21'),(17,3,1,'2023-03-01 10:29:10',2,'佛挡杀佛','2023-03-01 11:24:55','a14','2023-03-01 10:29:10'),(18,1,1,'2023-03-01 11:27:35',1,NULL,NULL,NULL,'2023-03-01 11:27:35'),(19,14,4,'2023-03-01 11:30:22',1,NULL,NULL,NULL,'2023-03-01 11:30:22'),(20,13,4,'2023-03-01 11:30:36',1,NULL,NULL,NULL,'2023-03-01 11:30:36');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_id_number`,`laoshi_photo`,`sex_types`,`laoshi_email`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','410224199010102001','upload/laoshi1.jpg',2,'1@qq.com','2023-03-01 10:02:37'),(2,'a2','123456','老师姓名2','17703786902','410224199010102002','upload/laoshi2.jpg',1,'2@qq.com','2023-03-01 10:02:37'),(3,'a3','123456','老师姓名3','17703786903','410224199010102003','upload/laoshi3.jpg',2,'3@qq.com','2023-03-01 10:02:37');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shiyanshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '实验室编号',
  `shiyanshi_name` varchar(200) DEFAULT NULL COMMENT '实验室名称  Search111 ',
  `shiyanshi_photo` varchar(200) DEFAULT NULL COMMENT '实验室照片',
  `shiyanshi_types` int(11) DEFAULT NULL COMMENT '实验室类型 Search111 ',
  `shiyanshi_address` varchar(200) DEFAULT NULL COMMENT '实验室位置',
  `shiyanshi_text` text COMMENT '规章制度',
  `shiyanshi_content` text COMMENT '实验室介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`shiyanshi_uuid_number`,`shiyanshi_name`,`shiyanshi_photo`,`shiyanshi_types`,`shiyanshi_address`,`shiyanshi_text`,`shiyanshi_content`,`insert_time`,`create_time`) values (1,'1677636157597','实验室名称1','upload/shiyanshi1.jpg',1,'实验室位置1','规章制度1','实验室介绍1','2023-03-01 10:02:37','2023-03-01 10:02:37'),(2,'1677636157525','实验室名称2','upload/shiyanshi2.jpg',3,'实验室位置2','规章制度2','实验室介绍2','2023-03-01 10:02:37','2023-03-01 10:02:37'),(3,'1677636157520','实验室名称3','upload/shiyanshi3.jpg',3,'实验室位置3','规章制度3','实验室介绍3','2023-03-01 10:02:37','2023-03-01 10:02:37'),(4,'1677636157572','实验室名称4','upload/shiyanshi4.jpg',1,'实验室位置4','规章制度4','实验室介绍4','2023-03-01 10:02:37','2023-03-01 10:02:37'),(5,'1677636157555','实验室名称5','upload/shiyanshi5.jpg',3,'实验室位置5','规章制度5','实验室介绍5','2023-03-01 10:02:37','2023-03-01 10:02:37'),(6,'1677636157606','实验室名称6','upload/shiyanshi6.jpg',3,'实验室位置6','规章制度6','实验室介绍6','2023-03-01 10:02:37','2023-03-01 10:02:37'),(7,'1677636157525','实验室名称7','upload/shiyanshi7.jpg',2,'实验室位置7','规章制度7','实验室介绍7','2023-03-01 10:02:37','2023-03-01 10:02:37'),(8,'1677636157519','实验室名称8','upload/shiyanshi8.jpg',1,'实验室位置8','规章制度8','实验室介绍8','2023-03-01 10:02:37','2023-03-01 10:02:37'),(9,'1677636157598','实验室名称9','upload/shiyanshi9.jpg',3,'实验室位置9','规章制度9','实验室介绍9','2023-03-01 10:02:37','2023-03-01 10:02:37'),(10,'1677636157608','实验室名称10','upload/shiyanshi10.jpg',2,'实验室位置10','规章制度10','实验室介绍10','2023-03-01 10:02:37','2023-03-01 10:02:37'),(11,'1677636157593','实验室名称11','upload/shiyanshi11.jpg',1,'实验室位置11','规章制度11','实验室介绍11','2023-03-01 10:02:37','2023-03-01 10:02:37'),(12,'1677636157590','实验室名称12','upload/shiyanshi12.jpg',2,'实验室位置12','规章制度12','实验室介绍12','2023-03-01 10:02:37','2023-03-01 10:02:37'),(13,'1677636157560','实验室名称13','upload/shiyanshi13.jpg',1,'实验室位置13','规章制度13','实验室介绍13','2023-03-01 10:02:37','2023-03-01 10:02:37'),(14,'1677636157546','实验室名称14','upload/shiyanshi14.jpg',1,'实验室位置14','规章制度14','实验室介绍14','2023-03-01 10:02:37','2023-03-01 10:02:37');

/*Table structure for table `shiyanshi_yuyue` */

DROP TABLE IF EXISTS `shiyanshi_yuyue`;

CREATE TABLE `shiyanshi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanshi_id` int(11) DEFAULT NULL COMMENT '实验室',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '用户',
  `shiyanshi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `shiyanshi_yuyue_name` varchar(200) DEFAULT NULL COMMENT '课题名称 Search111 ',
  `shiyanshi_yuyue_types` int(11) DEFAULT NULL COMMENT '课题类型 Search111 ',
  `shiyanshi_yuyue_content` text COMMENT '课题介绍 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '使用开始时间',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '使用结束时间',
  `shiyanshi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '预约状态 Search111 ',
  `shiyanshi_yuyue_yesno_text` text COMMENT '审核回复',
  `shiyanshi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='实验室预约';

/*Data for the table `shiyanshi_yuyue` */

insert  into `shiyanshi_yuyue`(`id`,`shiyanshi_id`,`laoshi_id`,`shiyanshi_yuyue_uuid_number`,`shiyanshi_yuyue_name`,`shiyanshi_yuyue_types`,`shiyanshi_yuyue_content`,`insert_time`,`kaishi_time`,`jieshu_time`,`shiyanshi_yuyue_yesno_types`,`shiyanshi_yuyue_yesno_text`,`shiyanshi_yuyue_shenhe_time`,`create_time`) values (1,1,3,'1677636157532','课题名称1',2,'课题介绍1','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',1,NULL,NULL,'2023-03-01 10:02:37'),(2,2,1,'1677636157550','课题名称2',3,'课题介绍2','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',1,NULL,NULL,'2023-03-01 10:02:37'),(3,3,1,'1677636157523','课题名称3',1,'课题介绍3','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(4,4,2,'1677636157526','课题名称4',1,'课题介绍4','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(5,5,1,'1677636157620','课题名称5',1,'课题介绍5','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(6,6,1,'1677636157615','课题名称6',3,'课题介绍6','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(7,7,2,'1677636157546','课题名称7',2,'课题介绍7','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(8,8,2,'1677636157609','课题名称8',2,'课题介绍8','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(9,9,1,'1677636157579','课题名称9',2,'课题介绍9','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(10,10,3,'1677636157564','课题名称10',1,'课题介绍10','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'通过','2023-03-01 10:02:37','2023-03-01 10:02:37'),(11,11,1,'1677636157588','课题名称11',2,'课题介绍11','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',1,NULL,NULL,'2023-03-01 10:02:37'),(12,12,2,'1677636157593','课题名称12',3,'课题介绍12','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',1,NULL,NULL,'2023-03-01 10:02:37'),(13,13,2,'1677636157558','课题名称13',3,'课题介绍13','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'广东省十多个','2023-03-01 11:31:50','2023-03-01 10:02:37'),(14,14,2,'1677636157574','课题名称14',3,'课题介绍14','2023-03-01 10:02:37','2023-03-01 10:02:37','2023-03-01 10:02:37',2,'广东省广东省','2023-03-01 10:56:41','2023-03-01 10:02:37'),(19,13,1,'1677641535808','名称111',2,'<p>课题内容111</p>','2023-03-01 11:32:39','2023-03-01 11:32:34','2023-03-02 00:00:00',1,'',NULL,'2023-03-01 11:32:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','cnmnssesaju1r558uh3mmrxvrrw6bfud','2023-03-01 10:04:21','2023-03-01 12:35:39'),(2,1,'a1','yonghu','学生','rd7nrw2ece94cokkdb0raeezu6dr1x7d','2023-03-01 10:05:14','2023-03-01 12:27:02'),(3,1,'a1','laoshi','老师','de3ilraez62jcarxs7h3do18f0g3dmkp','2023-03-01 10:59:15','2023-03-01 12:32:09'),(4,4,'a5','yonghu','学生','nomwl2vdj3kuxkphn3mar7rt1ihjicmg','2023-03-01 11:29:57','2023-03-01 12:29:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-01 10:02:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yuanxi_types` int(11) DEFAULT NULL COMMENT '院系',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yuanxi_types`,`banji_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,1,1,'1@qq.com','2023-03-01 10:02:37'),(2,'a2','123456','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,1,1,'2@qq.com','2023-03-01 10:02:37'),(3,'a3','123456','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,2,1,'3@qq.com','2023-03-01 10:02:37'),(4,'a5','123456','张5','17703786905','410224199651012005',NULL,1,NULL,NULL,NULL,'2023-03-01 11:29:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
