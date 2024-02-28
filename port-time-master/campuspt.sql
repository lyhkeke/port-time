/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.29 : Database - ttt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ttt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ttt`;

/*Table structure for table `tab_admin` */

DROP TABLE IF EXISTS `tab_admin`;

CREATE TABLE `tab_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `adminname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_admin` */

insert  into `tab_admin`(`id`,`adminname`,`password`) values
(1,'coco','coco'),
(2,'lyh','lyh'),
(3,'111','111');

/*Table structure for table `tab_position` */

DROP TABLE IF EXISTS `tab_position`;

CREATE TABLE `tab_position` (
  `pid` int NOT NULL AUTO_INCREMENT COMMENT '职位分类编号',
  `pname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '职位分类名称',
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_position` */

insert  into `tab_position`(`pid`,`pname`) values
(1,'简单易做'),
(2,'跑腿办事'),
(3,'专业技能'),
(4,'优秀青年'),
(5,'特色职位'),
(6,'体力达人'),
(9,'其它');

/*Table structure for table `tab_receiveorders` */

DROP TABLE IF EXISTS `tab_receiveorders`;

CREATE TABLE `tab_receiveorders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `oid` int NOT NULL COMMENT '订单编号',
  `uid` int NOT NULL COMMENT '接单人编号',
  `status` int NOT NULL COMMENT '状态 0正在接单 1等待验收 2未完成 3已完成 ',
  `receivetime` datetime DEFAULT NULL COMMENT '报名时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_receiveorders` */

insert  into `tab_receiveorders`(`id`,`oid`,`uid`,`status`,`receivetime`) values
(1,6,7,0,NULL),
(4,6,7,0,NULL),
(5,13,13,0,'2023-03-16 00:00:00'),
(7,15,13,0,'2023-03-18 00:00:00'),
(9,45,16,0,'2023-03-18 00:00:00'),
(10,40,16,0,'2023-03-18 00:00:00'),
(11,107,19,0,'2023-04-01 00:00:00'),
(12,10,19,0,'2023-04-01 00:00:00'),
(13,109,22,0,'2023-05-06 00:00:00'),
(14,19,24,0,'2023-05-07 00:00:00'),
(15,10,24,0,'2023-05-07 00:00:00'),
(16,22,24,0,'2023-05-07 00:00:00');

/*Table structure for table `tab_releaseorders` */

DROP TABLE IF EXISTS `tab_releaseorders`;

CREATE TABLE `tab_releaseorders` (
  `oid` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `sid` int NOT NULL COMMENT '学校编号',
  `pid` int NOT NULL COMMENT '兼职种类编号',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '订单标题',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '订单描述',
  `paymethod` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '支付方式 （日结/月结/完工结...）',
  `recruitnum` int NOT NULL COMMENT '招聘人数',
  `releasetime` date NOT NULL COMMENT '发布时间',
  `uid` int NOT NULL COMMENT '发单人',
  `salary` double(50,0) NOT NULL COMMENT '薪资',
  `status` int NOT NULL COMMENT '状态 （0正在找/1不招）',
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_releaseorders` */

insert  into `tab_releaseorders`(`oid`,`sid`,`pid`,`title`,`description`,`paymethod`,`recruitnum`,`releasetime`,`uid`,`salary`,`status`) values
(6,5,6,'兼职1','<div class=\"title-m\">\r\n                                <h4>\r\n                                    职位详情\r\n                                </h4>\r\n                                <hr />\r\n                                <p class=\"work_text\">\r\n                                    <span class=\"work_text_title\">\r\n                                        任职资格\r\n                                    </span>\r\n\r\n                                    <br />\r\n                                    1、高中及以上学历，面谈合适可破格录取。\r\n                                    <br />\r\n                                    2、年龄25～50周岁，条件合适可适当放宽条件。\r\n                                    <br />\r\n                                    3、了解销售业务流程或有销售工作经验的优先。\r\n                                    <br />\r\n                                    4、主动性强，具有敬业精神和责任心、上进心。\r\n                                    <br />\r\n\r\n                                    <span class=\"work_text_title\">\r\n                                        福利待遇\r\n                                    </span>\r\n                                    <br />\r\n                                    1、底薪5100，高提成(20%－30%)+高额奖金+年终奖=月薪6k～12k\r\n                                    <br />\r\n                                    2、缴纳保险（养老保险、医疗保险、工伤保险、失业保险、生育保险、意外险），有话补，高温补贴；\r\n                                    <br />\r\n                                    3、各类带薪休假（法定假日、年假、婚假、产假、陪产假、带薪年假等）；\r\n                                    <br />\r\n                                    4、做五休二，8:30-17:00，除国家法定节假日外，每年免费旅游，以及各种员工活动（聚餐、郊游、员工生日会等）；\r\n                                    <br />\r\n                                    5、免费带薪培训，公司拥有全面的培训体系，能使您在最短的时间内掌握比其它人更多、更实用的技能。\r\n                                    <br />\r\n                                    <span class=\"work_text_title\">\r\n                                        岗位职责\r\n                                    </span>\r\n                                    <br />\r\n                                    1、及时跟踪及处理客户反馈，维护客户关系；\r\n                                    <br />\r\n                                    2、负责联络沟通客户，审核客户资料并录入系统；\r\n                                    <br />\r\n                                    3、协助主管完善部门操作流程与规范，做好销售的后台支持；\r\n                                    <br />\r\n                                    4、其它主管交办事项。\r\n                                    <br />\r\n                                    <span class=\"work_text_title\">\r\n                                        温馨提示\r\n                                    </span>\r\n                                    <br />\r\n                                    公司直招不收取任何费用，面试请携带身份证、学历证书等\r\n                                </p>\r\n                            </div>','月结',100,'2000-01-01',16,100,0),
(8,5,5,'兼职2','兼职描述2','月结',100,'2000-01-01',16,100,0),
(10,5,4,'兼职3','兼职描述3','日结',50,'2019-05-08',16,200,0),
(11,5,3,'兼职4','兼职描述4','完工结',200,'2019-05-07',16,150,0),
(12,5,2,'兼职5','兼职描述5','日结',250,'2019-05-01',16,88,0),
(14,4,7,'兼职7','兼职描述7','日结',66,'2019-04-01',16,66,0),
(15,4,6,'兼职8','兼职描述8','月结',55,'2018-01-09',16,77,0),
(16,4,5,'兼职9','兼职描述9','日结',44,'2019-05-06',11,11,0),
(17,4,4,'兼职10','兼职描述10','月结',33,'2019-03-26',16,22,0),
(18,4,3,'兼职11','兼职描述11','完工结',222,'2019-02-01',16,11,0),
(19,1,1,'兼职12','兼职描述12','月结',100,'2000-01-01',16,100,0),
(20,1,1,'兼职13','兼职描述13','月结',100,'2000-01-01',16,100,0),
(21,1,1,'兼职14','兼职描述14','月结',100,'2000-01-01',16,100,0),
(22,1,1,'兼职15','兼职描述15','月结',100,'2000-01-01',16,100,0),
(23,1,1,'兼职16','兼职描述16','月结',100,'2000-01-01',16,100,0),
(24,1,1,'兼职17','兼职描述17','月结',100,'2000-01-01',16,100,0),
(25,1,1,'兼职18','兼职描述18','月结',100,'2000-01-01',16,100,0),
(26,1,1,'兼职19','兼职描述19','月结',100,'2000-01-01',16,100,0),
(27,1,1,'兼职20','兼职描述20','月结',100,'2000-01-01',16,100,0),
(28,1,1,'兼职21','兼职描述21','月结',100,'2000-01-01',16,100,0),
(29,1,1,'兼职22','兼职描述22','月结',100,'2000-01-01',16,100,0),
(30,1,1,'兼职23','兼职描述23','月结',100,'2000-01-01',16,100,0),
(31,1,1,'兼职24','兼职描述24','月结',100,'2000-01-01',16,100,0),
(32,1,1,'兼职25','兼职描述25','月结',100,'2000-01-01',16,100,0),
(33,1,1,'兼职26','兼职描述26','月结',100,'2000-01-01',16,100,0),
(34,1,1,'兼职27','兼职描述27','月结',100,'2000-01-01',16,100,0),
(35,1,1,'兼职28','兼职描述28','月结',100,'2000-01-01',16,100,0),
(36,1,1,'兼职29','兼职描述29','月结',100,'2000-01-01',16,100,0),
(37,1,1,'兼职30','兼职描述30','月结',100,'2000-01-01',16,100,0),
(38,1,2,'兼职31','兼职描述31','月结',100,'2000-01-01',16,100,0),
(39,1,3,'兼职32','兼职描述32','月结',100,'2000-01-01',16,100,0),
(40,1,4,'兼职33','兼职描述33','月结',100,'2000-01-01',16,100,0),
(41,1,5,'兼职34','兼职描述34','月结',100,'2000-01-01',16,100,0),
(42,1,6,'兼职35','兼职描述35','月结',100,'2000-01-01',16,100,0),
(43,1,7,'兼职36','兼职描述36','月结',100,'2000-01-01',16,100,0),
(44,2,1,'兼职37','兼职描述37','月结',100,'2000-01-01',16,100,0),
(45,2,2,'兼职38','兼职描述38','月结',100,'2000-01-01',16,100,0),
(46,2,3,'兼职39','兼职描述39','月结',100,'2000-01-01',16,100,0),
(47,2,4,'兼职40','兼职描述40','月结',100,'2000-01-01',16,100,0),
(48,2,5,'兼职41','兼职描述41','月结',100,'2000-01-01',16,100,0),
(49,2,6,'兼职42','兼职描述42','月结',100,'2000-01-01',16,100,0),
(50,2,7,'兼职43','兼职描述43','月结',100,'2000-01-01',16,100,0),
(51,3,1,'兼职44','兼职描述44','月结',100,'2000-01-01',16,100,0),
(52,3,2,'兼职45','兼职描述45','月结',100,'2000-01-01',16,100,0),
(53,3,3,'兼职46','兼职描述46','月结',100,'2000-01-01',16,100,0),
(54,3,4,'兼职47','兼职描述47','月结',100,'2000-01-01',16,100,0),
(55,3,5,'兼职48','兼职描述48','月结',100,'2000-01-01',16,100,0),
(56,3,6,'兼职49','兼职描述49','月结',100,'2000-01-01',16,100,0),
(57,3,7,'兼职50','兼职描述50','月结',100,'2000-01-01',16,100,0),
(107,1,4,'11111111111111','111111111111111','月结',1111,'2023-03-23',16,1111,0),
(109,1,4,'优秀毕设','测试测试测试','月结',1,'2023-04-20',16,111111111111111,0);

/*Table structure for table `tab_school` */

DROP TABLE IF EXISTS `tab_school`;

CREATE TABLE `tab_school` (
  `sid` int NOT NULL AUTO_INCREMENT COMMENT '学校编号',
  `sname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '学校名',
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_school` */

insert  into `tab_school`(`sid`,`sname`) values
(1,'山东财经大学'),
(2,'山东农业大学'),
(3,'山东科技大学'),
(4,'山东大学'),
(5,'山东师范大学'),
(6,'山东工商大学'),
(7,'齐鲁工业大学'),
(10,'暨南大学');

/*Table structure for table `tab_user` */

DROP TABLE IF EXISTS `tab_user`;

CREATE TABLE `tab_user` (
  `uid` int NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `sid` int NOT NULL COMMENT '学校编号',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `gender` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱地址',
  `totalscore` int DEFAULT NULL COMMENT '被评总分',
  `appraisenum` int DEFAULT NULL COMMENT '评价人数',
  `permission` int NOT NULL COMMENT '权限 0为普通用户 99为管理员',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

/*Data for the table `tab_user` */

insert  into `tab_user`(`uid`,`sid`,`username`,`password`,`gender`,`phone`,`email`,`totalscore`,`appraisenum`,`permission`) values
(11,8,'wxy','666','男','12345678912','123456789@qq.com',80,0,0),
(12,5,'yhd','666','男','12345678912','123456789@qq.com',50,0,0),
(14,2,'coco1','123456','','17629176293','',90,0,0),
(15,1,'111','111','','18653771623','',90,0,0),
(16,3,'lyh','123456','','19819307638','',90,0,0),
(17,1,'11111','1111','','18305370068','',90,0,0),
(18,1,'11123','11111111','','18305370068','',90,0,0),
(19,1,'10110','123456','','19819307638','',90,0,0),
(20,2,'hhh','111111','','18653771623','',90,0,0),
(21,1,'222','222222','','18653771623','',90,0,0),
(24,1,'fff','111111','','19819307638','',90,0,0),
(25,1,'888','88888888','','1981907638','',90,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
