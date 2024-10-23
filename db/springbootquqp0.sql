-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootquqp0
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootquqp0`
--

/*!40000 DROP DATABASE IF EXISTS `springbootquqp0`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootquqp0` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootquqp0`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mubiaoshuju`
--

DROP TABLE IF EXISTS `mubiaoshuju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mubiaoshuju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mubiaomingcheng` varchar(200) NOT NULL COMMENT '目标名称',
  `mubiaotupian` varchar(200) DEFAULT NULL COMMENT '目标图片',
  `shijianfenlei` varchar(200) NOT NULL COMMENT '时间分类',
  `tijiaocishu` int(11) DEFAULT NULL COMMENT '提交次数',
  `mubiaoneirong` longtext COMMENT '目标内容',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  `shijianzhuangtai` varchar(200) NOT NULL COMMENT '事件状态',
  `mubiaobeizhu` varchar(200) DEFAULT NULL COMMENT '目标备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yongshi` varchar(200) DEFAULT NULL COMMENT '用时',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='目标数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mubiaoshuju`
--

LOCK TABLES `mubiaoshuju` WRITE;
/*!40000 ALTER TABLE `mubiaoshuju` DISABLE KEYS */;
INSERT INTO `mubiaoshuju` VALUES (51,'2022-03-04 07:54:55','目标名称1','upload/mubiaoshuju_mubiaotupian1.jpg','时间分类1',1,'目标内容1','2022-03-04','待办','目标备注1','用户名1','用时1'),(52,'2022-03-04 07:54:55','目标名称2','upload/mubiaoshuju_mubiaotupian2.jpg','时间分类2',2,'目标内容2','2022-03-04','待办','目标备注2','用户名2','用时2'),(53,'2022-03-04 07:54:55','目标名称3','upload/mubiaoshuju_mubiaotupian3.jpg','时间分类3',3,'目标内容3','2022-03-04','待办','目标备注3','用户名3','用时3'),(54,'2022-03-04 07:54:55','目标名称4','upload/mubiaoshuju_mubiaotupian4.jpg','时间分类4',4,'目标内容4','2022-03-04','待办','目标备注4','用户名4','用时4'),(55,'2022-03-04 07:54:55','目标名称5','upload/mubiaoshuju_mubiaotupian5.jpg','时间分类5',5,'目标内容5','2022-03-04','待办','目标备注5','用户名5','用时5'),(56,'2022-03-04 07:54:55','目标名称6','upload/mubiaoshuju_mubiaotupian6.jpg','时间分类6',6,'目标内容6','2022-03-04','待办','目标备注6','用户名6','用时6');
/*!40000 ALTER TABLE `mubiaoshuju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijianfenlei`
--

DROP TABLE IF EXISTS `shijianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianfenlei` varchar(200) NOT NULL COMMENT '时间分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shijianfenlei` (`shijianfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1646381415451 DEFAULT CHARSET=utf8 COMMENT='时间分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijianfenlei`
--

LOCK TABLES `shijianfenlei` WRITE;
/*!40000 ALTER TABLE `shijianfenlei` DISABLE KEYS */;
INSERT INTO `shijianfenlei` VALUES (31,'2022-03-04 07:54:55','时间分类1'),(32,'2022-03-04 07:54:55','时间分类2'),(33,'2022-03-04 07:54:55','时间分类3'),(34,'2022-03-04 07:54:55','时间分类4'),(35,'2022-03-04 07:54:55','时间分类5'),(36,'2022-03-04 07:54:55','时间分类6');
/*!40000 ALTER TABLE `shijianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shijianshuju`
--

DROP TABLE IF EXISTS `shijianshuju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shijianshuju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianbiaoti` varchar(200) NOT NULL COMMENT '事件标题',
  `shijianfenlei` varchar(200) NOT NULL COMMENT '时间分类',
  `shijiantupian` varchar(200) DEFAULT NULL COMMENT '事件图片',
  `tijiaocishu` int(11) DEFAULT NULL COMMENT '提交次数',
  `shijianbiaoqian` varchar(200) DEFAULT NULL COMMENT '事件标签',
  `shijianneirong` longtext COMMENT '事件内容',
  `shijianbeizhu` varchar(200) DEFAULT NULL COMMENT '事件备注',
  `shijianzhuangtai` varchar(200) NOT NULL COMMENT '事件状态',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yongshi` varchar(200) DEFAULT NULL COMMENT '用时',
  `tianjiariqi` date DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646381563471 DEFAULT CHARSET=utf8 COMMENT='事件数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shijianshuju`
--

LOCK TABLES `shijianshuju` WRITE;
/*!40000 ALTER TABLE `shijianshuju` DISABLE KEYS */;
INSERT INTO `shijianshuju` VALUES (41,'2022-03-04 07:54:55','事件标题1','时间分类1','upload/shijianshuju_shijiantupian1.jpg',1,'事件标签1','事件内容1','事件备注1','待办','用户名1','用时1','2022-03-04'),(42,'2022-03-04 07:54:55','事件标题2','时间分类2','upload/shijianshuju_shijiantupian2.jpg',2,'事件标签2','事件内容2','事件备注2','待办','用户名2','用时2','2022-03-04'),(43,'2022-03-04 07:54:55','事件标题3','时间分类3','upload/shijianshuju_shijiantupian3.jpg',3,'事件标签3','事件内容3','事件备注3','待办','用户名3','用时3','2022-03-04'),(44,'2022-03-04 07:54:55','事件标题4','时间分类4','upload/shijianshuju_shijiantupian4.jpg',4,'事件标签4','事件内容4','事件备注4','待办','用户名4','用时4','2022-03-04'),(45,'2022-03-04 07:54:55','事件标题5','时间分类5','upload/shijianshuju_shijiantupian5.jpg',5,'事件标签5','事件内容5','事件备注5','待办','用户名5','用时5','2022-03-04'),(46,'2022-03-04 07:54:55','事件标题6','时间分类6','upload/shijianshuju_shijiantupian6.jpg',6,'事件标签6','事件内容6','事件备注6','待办','用户名6','用时6','2022-03-04'),(1646381563470,'2022-03-04 08:12:42','11','时间分类1','upload/1646381542230.jpg',1,'1','11',NULL,'已完成','001',NULL,'2022-03-04');
/*!40000 ALTER TABLE `shijianshuju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','50e4eej8qoynba5q8f19916g1tmz4oda','2022-03-04 08:09:22','2022-03-04 09:13:17'),(2,1646381491709,'001','yonghu','用户','fy1u6vra22mc7bw4ylzg5fuxge9u08p0','2022-03-04 08:11:39','2022-03-04 09:11:39');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-04 07:54:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xitonggonggao`
--

DROP TABLE IF EXISTS `xitonggonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `gonggaotupian` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646381390333 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xitonggonggao`
--

LOCK TABLES `xitonggonggao` WRITE;
/*!40000 ALTER TABLE `xitonggonggao` DISABLE KEYS */;
INSERT INTO `xitonggonggao` VALUES (11,'2022-03-04 07:54:55','公告标题1','通知','upload/xitonggonggao_gonggaotupian1.jpg','公告内容1','2022-03-04'),(12,'2022-03-04 07:54:55','公告标题2','资讯','upload/xitonggonggao_gonggaotupian2.jpg','公告内容2','2022-03-04'),(13,'2022-03-04 07:54:55','公告标题3','资讯','upload/xitonggonggao_gonggaotupian3.jpg','公告内容3','2022-03-04'),(14,'2022-03-04 07:54:55','公告标题4','资讯','upload/xitonggonggao_gonggaotupian4.jpg','公告内容4','2022-03-04'),(15,'2022-03-04 07:54:55','公告标题5','资讯','upload/xitonggonggao_gonggaotupian5.jpg','公告内容5','2022-03-04'),(16,'2022-03-04 07:54:55','公告标题6','资讯','upload/xitonggonggao_gonggaotupian6.jpg','公告内容6','2022-03-04'),(1646381390332,'2022-03-04 08:09:49','AA','公告','upload/1646381385535.png','这里发布系统公告','2022-03-04');
/*!40000 ALTER TABLE `xitonggonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1646381491710 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2022-03-04 07:54:55','用户名1','123456','姓名1','男','upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(22,'2022-03-04 07:54:55','用户名2','123456','姓名2','女','upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(23,'2022-03-04 07:54:55','用户名3','123456','姓名3','男','upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(24,'2022-03-04 07:54:55','用户名4','123456','姓名4','男','upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(25,'2022-03-04 07:54:55','用户名5','123456','姓名5','男','upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(26,'2022-03-04 07:54:55','用户名6','123456','姓名6','男','upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1646381491709,'2022-03-04 08:11:31','001','001','小吴','女','upload/1646381506852.png','13459878981','1356@12.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuriji`
--

DROP TABLE IF EXISTS `yonghuriji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuriji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rijimingcheng` varchar(200) NOT NULL COMMENT '日记名称',
  `rijitupian` varchar(200) DEFAULT NULL COMMENT '日记图片',
  `rijibianqian` varchar(200) NOT NULL COMMENT '日记便签',
  `rijineirong` longtext COMMENT '日记内容',
  `rijiriqi` date DEFAULT NULL COMMENT '日记日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646381588222 DEFAULT CHARSET=utf8 COMMENT='用户日记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuriji`
--

LOCK TABLES `yonghuriji` WRITE;
/*!40000 ALTER TABLE `yonghuriji` DISABLE KEYS */;
INSERT INTO `yonghuriji` VALUES (61,'2022-03-04 07:54:55','日记名称1','upload/yonghuriji_rijitupian1.jpg','日记便签1','日记内容1','2022-03-04','用户名1'),(62,'2022-03-04 07:54:55','日记名称2','upload/yonghuriji_rijitupian2.jpg','日记便签2','日记内容2','2022-03-04','用户名2'),(63,'2022-03-04 07:54:55','日记名称3','upload/yonghuriji_rijitupian3.jpg','日记便签3','日记内容3','2022-03-04','用户名3'),(64,'2022-03-04 07:54:55','日记名称4','upload/yonghuriji_rijitupian4.jpg','日记便签4','日记内容4','2022-03-04','用户名4'),(65,'2022-03-04 07:54:55','日记名称5','upload/yonghuriji_rijitupian5.jpg','日记便签5','日记内容5','2022-03-04','用户名5'),(66,'2022-03-04 07:54:55','日记名称6','upload/yonghuriji_rijitupian6.jpg','日记便签6','日记内容6','2022-03-04','用户名6'),(1646381588221,'2022-03-04 08:13:07','11','upload/1646381586724.jpg','1','111','2022-03-04','001');
/*!40000 ALTER TABLE `yonghuriji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-04 17:38:07
