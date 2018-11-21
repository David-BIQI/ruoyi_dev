CREATE DATABASE  IF NOT EXISTS `ry` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ry`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: ry
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler','TASK_1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_2','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler','TASK_1','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.ScheduleJob','0','0','0','0','�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xppppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01x\0'),('RuoyiScheduler','TASK_2','DEFAULT',NULL,'com.ruoyi.project.monitor.job.util.ScheduleJob','0','0','0','0','�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0remarkq\0~\0	L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xppppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler','DESKTOP-7GM7M6V1531915732292',1531916006099,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1530893140000,-1,5,'PAUSED','CRON',1530893133000,0,NULL,0,'�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0remarkq\0~\0	L\0	reqParamsq\0~\0L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xt\0\0ppppt\00/10 * * * * ?t\0系统默认（无参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0\nryNoParamst\0\0t\01x\0'),('RuoyiScheduler','TASK_2','DEFAULT','TASK_2','DEFAULT',NULL,1530893140000,-1,5,'PAUSED','CRON',1530893133000,0,NULL,0,'�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.ruoyi.project.monitor.job.domain.Job\0\0\0\0\0\0\0\0L\0cronExpressiont\0Ljava/lang/String;L\0jobGroupq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0jobNameq\0~\0	L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0statusq\0~\0	xr\0)com.ruoyi.framework.web.domain.BaseEntity\0\0\0\0\0\0\0\0L\0createByq\0~\0	L\0\ncreateTimet\0Ljava/util/Date;L\0remarkq\0~\0	L\0	reqParamsq\0~\0L\0searchValueq\0~\0	L\0updateByq\0~\0	L\0\nupdateTimeq\0~\0xpt\0adminsr\0java.util.Datehj�KYt\0\0xpw\0\0b,\�)\�xt\0\0ppppt\00/20 * * * * ?t\0系统默认（有参）sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0ryTaskt\0ryParamst\0ryt\01x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_address_city`
--

DROP TABLE IF EXISTS `sys_address_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_address_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `city` varchar(256) NOT NULL COMMENT '城市',
  `country_id` int(11) NOT NULL COMMENT '国家编号',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT ' ' COMMENT '创建者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT ' ' COMMENT '更新者',
  `remark` varchar(256) DEFAULT ' ' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='城市';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_address_city`
--

LOCK TABLES `sys_address_city` WRITE;
/*!40000 ALTER TABLE `sys_address_city` DISABLE KEYS */;
INSERT INTO `sys_address_city` VALUES (1,'福州',2,0,'2018-07-07 00:28:06','admin','2018-07-07 00:28:25','admin','2'),(2,'厦门',2,0,'2018-07-07 00:28:17','admin','2018-07-07 00:28:17',' ','22'),(3,'福州市1133',4,0,'2018-07-08 12:20:26','admin','2018-07-08 12:33:15','admin','22a'),(4,'福州市2',6,0,'2018-07-08 13:38:12','admin','2018-07-08 13:38:28','admin','3');
/*!40000 ALTER TABLE `sys_address_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_address_country`
--

DROP TABLE IF EXISTS `sys_address_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_address_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(45) DEFAULT NULL,
  `phone_code` varchar(45) DEFAULT NULL,
  `country_code` varchar(45) DEFAULT NULL,
  `status` char(1) DEFAULT '0',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(500) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='国家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_address_country`
--

LOCK TABLES `sys_address_country` WRITE;
/*!40000 ALTER TABLE `sys_address_country` DISABLE KEYS */;
INSERT INTO `sys_address_country` VALUES (2,'中国','86','CN','0','','2018-07-02 16:44:39','','2018-07-02 16:44:39','dfdsfa'),(4,'美国','11','USA','0','','2018-07-02 17:11:34','','2018-07-02 17:11:34','dfa'),(5,'美国','86','USA','0','admin','2018-07-02 17:17:10','admin','2018-07-02 17:17:10','dfaszzzzz'),(6,'ffd','455','sfg','1','admin','2018-07-07 21:20:00','admin','2018-07-07 21:20:00','');
/*!40000 ALTER TABLE `sys_address_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_address_fulladdress`
--

DROP TABLE IF EXISTS `sys_address_fulladdress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_address_fulladdress` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `country_id` int(11) NOT NULL COMMENT '国家编号',
  `city_id` int(11) NOT NULL COMMENT '城市编号',
  `address` varchar(256) NOT NULL COMMENT '地址',
  `zip_code` varchar(128) NOT NULL COMMENT '邮政编码',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` varchar(64) DEFAULT ' ' COMMENT '创建者',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` varchar(64) DEFAULT ' ' COMMENT '更新者',
  `remark` varchar(256) DEFAULT ' ' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_address_fulladdress`
--

LOCK TABLES `sys_address_fulladdress` WRITE;
/*!40000 ALTER TABLE `sys_address_fulladdress` DISABLE KEYS */;
INSERT INTO `sys_address_fulladdress` VALUES (1,2,2,'晋安区','350800',0,'2018-07-07 00:28:45',' ','2018-07-08 13:52:54','admin','1'),(3,4,3,'1123','3232',0,'2018-07-08 13:25:14','admin','2018-07-08 13:25:14',' ','3211');
/*!40000 ALTER TABLE `sys_address_fulladdress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_cell_phone`
--

DROP TABLE IF EXISTS `sys_cell_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_cell_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_code` varchar(45) DEFAULT '' COMMENT '电话区号',
  `phone_number` varchar(45) DEFAULT '' COMMENT '电话号码',
  `country_id` int(11) DEFAULT '0' COMMENT '关联sys_country表',
  `phone_type` int(11) DEFAULT '0' COMMENT '号码的重要性，分为1.Priority 2.Regular 3.Temporary',
  `device_id` int(11) DEFAULT '0' COMMENT '关联的sys_device表',
  `usage_status` int(11) DEFAULT '0' COMMENT '使用情况 1.未使用 2. 使用中',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联系电话';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_cell_phone`
--

LOCK TABLES `sys_cell_phone` WRITE;
/*!40000 ALTER TABLE `sys_cell_phone` DISABLE KEYS */;
INSERT INTO `sys_cell_phone` VALUES (1,'86','11232',2,1,0,1,'','2018-07-12 11:31:09','',NULL);
/*!40000 ALTER TABLE `sys_cell_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-default','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','默认 skin-default、蓝色 skin-blue、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','初始化密码 123456');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` int(11) DEFAULT '0' COMMENT '父部门id',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT '' COMMENT '负责人',
  `phone` varchar(11) DEFAULT '' COMMENT '联系电话',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'若依集团',0,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(101,100,'研发部门',1,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(102,100,'市场部门',2,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(103,100,'测试部门',3,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(104,100,'财务部门',4,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(105,100,'运维部门',5,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(106,101,'研发一部',1,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(107,101,'研发二部',2,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(108,102,'市场一部',1,'若依','15888888888','ry@qq.com','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00'),(109,102,'市场二部',2,'若依','15888888888','ry@qq.com','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_device`
--

DROP TABLE IF EXISTS `sys_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_mark` varchar(45) DEFAULT NULL,
  `device_color` varchar(45) DEFAULT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `usage_status` varchar(45) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `update_by` varchar(45) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='设备管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_device`
--

LOCK TABLES `sys_device` WRITE;
/*!40000 ALTER TABLE `sys_device` DISABLE KEYS */;
INSERT INTO `sys_device` VALUES (1,'品牌1','颜色1','序列号1','1','2018-07-08 14:52:15','',NULL,'','1'),(2,'品牌2','12','序列号2','1','2018-07-08 15:23:46','',NULL,'','1'),(3,'品牌1','12','序列号3','1','2018-07-08 15:26:32','',NULL,'',''),(4,'品牌1','12','序列号4','1','2018-07-08 15:26:54','',NULL,'',''),(5,'品牌1','12','序列号5','1','2018-07-08 15:27:01','',NULL,'',''),(6,'品牌1','12','序列号6','1','2018-07-08 15:27:07','',NULL,'',''),(7,'品牌1','12','序列号7','2','2018-07-08 15:27:12','',NULL,'',''),(8,'品牌1','12','序列号8','2','2018-07-08 15:27:18','',NULL,'',''),(9,'品牌1','12','序列号9','1','2018-07-08 15:27:25','',NULL,'','1'),(10,'品牌1',NULL,'序列号10','1','2018-07-08 15:27:31','',NULL,'','a'),(11,'品牌1','12','序列号11','1','2018-07-08 15:27:39','',NULL,'','1');
/*!40000 ALTER TABLE `sys_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_data` (
  `dict_code` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(500) DEFAULT '' COMMENT '样式属性',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别男'),(2,2,'女','1','sys_user_sex','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别女'),(3,3,'未知','2','sys_user_sex','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','性别未知'),(4,1,'显示','0','sys_show_hide','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','显示菜单'),(5,2,'隐藏','1','sys_show_hide','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','隐藏菜单'),(6,1,'正常','0','sys_normal_disable','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(7,2,'停用','1','sys_normal_disable','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(8,1,'正常','0','sys_job_status','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(9,2,'暂停','1','sys_job_status','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(10,1,'是','Y','sys_yes_no','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认是'),(11,2,'否','N','sys_yes_no','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统默认否'),(12,1,'通知','1','sys_notice_type','','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知'),(13,2,'公告','2','sys_notice_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','公告'),(14,1,'正常','0','sys_notice_status','radio radio-info radio-inline','Y','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(15,2,'关闭','1','sys_notice_status','radio radio-danger radio-inline','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','关闭状态'),(16,1,'新增','1','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(17,2,'修改','2','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(18,3,'保存','3','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(19,4,'删除','4','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(20,5,'授权','5','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(21,6,'导出','6','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(22,7,'导入','7','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(23,8,'强退','8','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(24,9,'禁止访问','9','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(25,10,'生成代码','10','sys_oper_type','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','新增操作'),(26,1,'成功','0','sys_common_status','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','正常状态'),(27,2,'失败','1','sys_common_status','','N','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','停用状态'),(100,1,'Priority','1','sys_phone_importance','','Y','0','admin','2018-07-18 10:04:28','',NULL,'重要性 - 优先'),(101,2,'Regular','2','sys_phone_importance','','Y','0','admin','2018-07-18 10:05:10','',NULL,'重要性 - 其次'),(102,3,'Temporary','3','sys_phone_importance','','Y','0','admin','2018-07-18 10:05:29','',NULL,'重要性 - 一般'),(103,0,'All','0','sys_phone_importance','','Y','0','admin','2018-07-18 10:09:05','',NULL,'重要性 - 无'),(104,4,'Used','4','sys_phone_importance','','Y','0','admin','2018-07-18 10:09:25','',NULL,'重要性 - 无'),(105,0,'All','0','sys_ip_importance','','Y','0','admin','2018-07-18 10:12:48','',NULL,'重要性 - 无'),(106,1,'Priority','1','sys_ip_importance','','Y','0','admin','2018-07-18 10:13:11','',NULL,'重要性 - 优先'),(107,2,'Regular','2','sys_ip_importance','','Y','0','admin','2018-07-18 10:13:36','',NULL,'重要性 - 其次'),(108,3,'Temporary','3','sys_ip_importance','','Y','0','admin','2018-07-18 10:13:48','',NULL,'重要性 - 一般'),(109,4,'Renewal','4','sys_ip_importance','','Y','0','admin','2018-07-18 10:14:07','',NULL,'重要性 - 续费'),(110,5,'Used','5','sys_ip_importance','','Y','0','admin','2018-07-18 10:14:20','',NULL,'重要性 - 无'),(111,1,'Auto','1','sys_kyc_type','','Y','0','admin','2018-07-18 19:15:13','',NULL,'Auto'),(112,2,'Up','2','sys_kyc_type','','Y','0','admin','2018-07-18 19:15:24','',NULL,'Up'),(113,3,'CS','3','sys_kyc_type','','Y','0','admin','2018-07-18 19:15:34','',NULL,'CS'),(114,4,'Mail','4','sys_kyc_type','','Y','0','admin','2018-07-18 19:15:46','',NULL,'Mail'),(115,1,'NO','1','sys_inter_transaction','','Y','0','admin','2018-07-18 19:16:52','',NULL,'no'),(116,2,'YES','2','sys_inter_transaction','','Y','0','admin','2018-07-18 19:17:00','',NULL,'YES'),(117,3,'UNKNOWN','3','sys_inter_transaction','','Y','0','admin','2018-07-18 19:17:11','',NULL,'UNKNOWN');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_dict_type` (
  `dict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','任务状态列表'),(5,'系统是否','sys_yes_no','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统是否列表'),(6,'通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知类型列表'),(7,'通知状态','sys_notice_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知状态列表'),(8,'操作类型','sys_oper_type','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作类型列表'),(9,'系统状态','sys_common_status','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录状态列表'),(100,'电话重要性','sys_phone_importance','0','admin','2018-07-18 10:03:22','',NULL,'电话重要性'),(101,'IP重要性','sys_ip_importance','0','admin','2018-07-18 10:12:33','',NULL,'IP重要性'),(102,'KYC类型','sys_kyc_type','0','admin','2018-07-18 19:14:55','',NULL,'KYC类型'),(103,'内部交易','sys_inter_transaction','0','admin','2018-07-18 19:16:37','',NULL,'内部交易');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ip`
--

DROP TABLE IF EXISTS `sys_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ip_address` varchar(45) DEFAULT NULL COMMENT 'IP地址',
  `user_name` varchar(45) DEFAULT NULL COMMENT '登录帐号',
  `password` varchar(45) DEFAULT NULL COMMENT '登录密码',
  `expiration_date` date DEFAULT NULL COMMENT '过期时间',
  `provider_id` int(11) DEFAULT NULL COMMENT '供应商编号',
  `ip_level` int(11) DEFAULT '0' COMMENT '重要性',
  `renewal_status` int(11) DEFAULT '1' COMMENT '续费提醒状态 1. 不提醒 2. 提醒',
  `usage_status` int(11) DEFAULT '1' COMMENT '使用状态 1. 未使用 2. 已使用',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='IP地址管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ip`
--

LOCK TABLES `sys_ip` WRITE;
/*!40000 ALTER TABLE `sys_ip` DISABLE KEYS */;
INSERT INTO `sys_ip` VALUES (1,'127.0.0.1','admin','admin','2018-07-31',4,3,2,1,'','2018-07-16 17:21:04',NULL,NULL),(2,'127.0.0.20','admin','admin','2018-08-30',1,1,1,1,'','2018-07-16 19:08:58',NULL,NULL),(3,'127.0.0.20',NULL,NULL,'2018-07-28',2,3,1,1,'','2018-07-16 19:12:07',NULL,NULL),(4,'127.0.0.1',NULL,NULL,'2018-07-24',3,1,1,1,'','2018-07-16 19:12:38',NULL,NULL),(8,'127.0.0.0','admin','admin','2018-07-27',3,2,1,1,'','2018-07-18 10:42:19',NULL,NULL);
/*!40000 ALTER TABLE `sys_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ip_provider`
--

DROP TABLE IF EXISTS `sys_ip_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_ip_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `provider_name` varchar(45) DEFAULT NULL COMMENT '供应商名称',
  `wangwang` varchar(45) DEFAULT NULL COMMENT '联系方式 - 旺旺',
  `wechat` varchar(45) DEFAULT NULL COMMENT '联系方式 - 微信',
  `qq` varchar(45) DEFAULT NULL COMMENT '联系方式 - QQ',
  `cell_phone` varchar(45) DEFAULT NULL COMMENT '联系方式 - 手机号码',
  `country_id` int(11) DEFAULT NULL COMMENT '关联国家',
  `status` int(11) DEFAULT NULL COMMENT '供应商可信状态 1. Available 2. Prohibition',
  `price` decimal(10,2) DEFAULT NULL,
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL COMMENT '禁用原因',
  `opt_time` datetime DEFAULT NULL COMMENT '禁用时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='ip供应商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ip_provider`
--

LOCK TABLES `sys_ip_provider` WRITE;
/*!40000 ALTER TABLE `sys_ip_provider` DISABLE KEYS */;
INSERT INTO `sys_ip_provider` VALUES (1,'供应商1','111','222','333','444',4,1,NULL,'','2018-07-17 15:34:23','','2018-07-18 09:49:03','',NULL),(2,'供应商2','111','11','333','22',5,2,NULL,'','2018-07-17 19:03:56','',NULL,NULL,NULL),(3,'供应商3',NULL,NULL,NULL,NULL,NULL,1,NULL,'','2018-07-17 19:44:02','',NULL,NULL,NULL),(4,'供应商4',NULL,NULL,NULL,NULL,NULL,2,NULL,'','2018-07-17 19:44:07','',NULL,NULL,NULL),(5,'供应商5',NULL,NULL,'333','22',6,2,NULL,'','2018-07-17 19:46:50','',NULL,'禁用原因',NULL),(6,'供应商6','1','1','1','1',4,1,NULL,'','2018-07-18 09:47:11','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_ip_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'ryTask','系统默认（无参）','ryNoParams','','0/10 * * * * ?','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'ryTask','系统默认（有参）','ryParams','ry','0/20 * * * * ?','1','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_job_log` (
  `job_log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` text COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_logininfor` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-09 09:48:10'),(101,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','退出成功','2018-07-09 09:50:39'),(102,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2018-07-10 15:31:18'),(103,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-10 15:38:40'),(104,'admin','127.0.0.1',NULL,'Chrome','Windows 10','0','登录成功','2018-07-10 15:40:36'),(105,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-10 16:43:22'),(106,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-10 16:55:05'),(107,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-10 16:56:15'),(108,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-12 10:48:15'),(109,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-12 10:59:36'),(110,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-12 11:14:08'),(111,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-12 11:31:01'),(112,'admin','127.0.0.1','XX 内网IP','Chrome','Windows 10','0','登录成功','2018-07-12 14:01:10'),(113,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-12 14:15:06'),(114,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 10:07:28'),(115,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 14:41:53'),(116,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 15:06:05'),(117,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 15:10:26'),(118,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 15:30:22'),(119,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 16:30:03'),(120,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 16:37:59'),(121,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:01:41'),(122,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:08:46'),(123,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:29:33'),(124,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:35:45'),(125,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:40:41'),(126,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:43:59'),(127,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:46:20'),(128,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:54:28'),(129,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 17:59:23'),(130,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 18:59:50'),(131,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 19:08:52'),(132,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 19:11:58'),(133,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 19:44:27'),(134,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 19:46:37'),(135,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-16 19:52:57'),(136,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-17 15:07:10'),(137,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-17 15:30:03'),(138,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-17 19:02:59'),(139,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-17 20:26:37'),(140,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 09:32:15'),(141,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 09:35:37'),(142,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 09:46:41'),(143,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 10:19:12'),(144,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 10:27:54'),(145,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 10:35:14'),(146,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 10:38:20'),(147,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 11:08:36'),(148,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 11:38:22'),(149,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 14:01:09'),(150,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 14:06:34'),(151,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 14:38:36'),(152,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 14:48:36'),(153,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 14:50:14'),(154,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 15:11:09'),(155,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 15:14:18'),(156,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 15:16:43'),(157,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 15:19:13'),(158,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 15:29:24'),(159,'admin','127.0.0.1','','Chrome','Windows 10','0','退出成功','2018-07-18 16:08:54'),(160,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 16:08:55'),(161,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 16:47:37'),(162,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 16:53:11'),(163,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 16:54:48'),(164,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 17:02:25'),(165,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 18:45:37'),(166,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 18:54:20'),(167,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 18:55:45'),(168,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:04:02'),(169,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:21:13'),(170,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:26:11'),(171,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:38:01'),(172,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:46:11'),(173,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 19:53:02'),(174,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 20:03:37'),(175,'admin','127.0.0.1','','Chrome','Windows 10','0','登录成功','2018-07-18 20:08:59');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mail`
--

DROP TABLE IF EXISTS `sys_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail_address` varchar(45) DEFAULT NULL COMMENT '閭鍦板潃',
  `mail_backup` varchar(45) DEFAULT NULL COMMENT '澶囩敤閭',
  `cell_phone` varchar(45) DEFAULT NULL COMMENT '鑱旂郴鐢佃瘽',
  `usage_status` int(11) DEFAULT '1',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='閭绠＄悊	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mail`
--

LOCK TABLES `sys_mail` WRITE;
/*!40000 ALTER TABLE `sys_mail` DISABLE KEYS */;
INSERT INTO `sys_mail` VALUES (1,'211','22','22',1,'','2018-07-08 22:15:43','',NULL,'33'),(2,'1','3','2',1,'','2018-07-08 22:18:59','',NULL,'4');
/*!40000 ALTER TABLE `sys_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT NULL COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2084 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'#','M','0','','fa fa-gear','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统管理目录'),(2,'系统监控',0,2,'#','M','0','','fa fa-video-camera','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统监控目录'),(3,'系统工具',0,3,'#','M','0','','fa fa-bars','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统工具目录'),(4,'资源管理',0,4,'#','M','0','','fa fa-bank','admin','2018-03-16 11:33:00','admin','2018-07-18 19:23:31','资源管理'),(100,'用户管理',1,1,'/system/user','C','0','system:user:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','用户管理菜单'),(101,'角色管理',1,2,'/system/role','C','0','system:role:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','角色管理菜单'),(102,'菜单管理',1,3,'/system/menu','C','0','system:menu:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','菜单管理菜单'),(103,'部门管理',1,4,'/system/dept','C','0','system:dept:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','部门管理菜单'),(104,'岗位管理',1,5,'/system/post','C','0','system:post:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','岗位管理菜单'),(105,'字典管理',1,6,'/system/dict','C','0','system:dict:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','字典管理菜单'),(106,'参数设置',1,7,'/system/config','C','0','system:config:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','参数设置菜单'),(107,'通知公告',1,8,'/system/notice','C','0','system:notice:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','通知公告菜单'),(108,'日志管理',1,9,'#','M','0','','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','日志管理菜单'),(109,'在线用户',2,1,'/monitor/online','C','0','monitor:online:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','在线用户菜单'),(110,'定时任务',2,2,'/monitor/job','C','0','monitor:job:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','定时任务菜单'),(111,'数据监控',2,3,'/monitor/data','C','0','monitor:data:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','数据监控菜单'),(112,'表单构建',3,1,'/tool/build','C','0','tool:build:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','表单构建菜单'),(113,'代码生成',3,2,'/tool/gen','C','0','tool:gen:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','代码生成菜单'),(114,'系统接口',3,3,'/tool/swagger','C','0','tool:swagger:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','系统接口菜单'),(500,'操作日志',108,1,'/monitor/operlog','C','0','monitor:operlog:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','操作日志菜单'),(501,'登录日志',108,2,'/monitor/logininfor','C','0','monitor:logininfor:view','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','登录日志菜单'),(1000,'用户查询',100,1,'#','F','0','system:user:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1001,'用户新增',100,2,'#','F','0','system:user:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1002,'用户修改',100,3,'#','F','0','system:user:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1003,'用户删除',100,4,'#','F','0','system:user:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1004,'用户保存',100,5,'#','F','0','system:user:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1005,'重置密码',100,6,'#','F','0','system:user:resetPwd','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1006,'角色查询',101,1,'#','F','0','system:role:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1007,'角色新增',101,2,'#','F','0','system:role:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1008,'角色修改',101,3,'#','F','0','system:role:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1009,'角色删除',101,4,'#','F','0','system:role:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1010,'角色保存',101,5,'#','F','0','system:role:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1011,'菜单查询',102,1,'#','F','0','system:menu:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1012,'菜单新增',102,2,'#','F','0','system:menu:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1013,'菜单修改',102,3,'#','F','0','system:menu:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1014,'菜单删除',102,4,'#','F','0','system:menu:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1015,'菜单保存',102,5,'#','F','0','system:menu:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1016,'部门查询',103,1,'#','F','0','system:dept:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1017,'部门新增',103,2,'#','F','0','system:dept:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1018,'部门修改',103,3,'#','F','0','system:dept:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1019,'部门删除',103,4,'#','F','0','system:dept:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1020,'部门保存',103,5,'#','F','0','system:dept:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1021,'岗位查询',104,1,'#','F','0','system:post:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1022,'岗位新增',104,2,'#','F','0','system:post:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1023,'岗位修改',104,3,'#','F','0','system:post:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1024,'岗位删除',104,4,'#','F','0','system:post:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1025,'岗位保存',104,5,'#','F','0','system:post:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1026,'字典查询',105,1,'#','F','0','system:dict:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1027,'字典新增',105,2,'#','F','0','system:dict:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1028,'字典修改',105,3,'#','F','0','system:dict:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1029,'字典删除',105,4,'#','F','0','system:dict:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1030,'字典保存',105,5,'#','F','0','system:dict:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1031,'参数查询',106,1,'#','F','0','system:config:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1032,'参数新增',106,2,'#','F','0','system:config:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1033,'参数修改',106,3,'#','F','0','system:config:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1034,'参数删除',106,4,'#','F','0','system:config:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1035,'参数保存',106,5,'#','F','0','system:config:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1036,'公告查询',107,1,'#','F','0','system:notice:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1037,'公告新增',107,2,'#','F','0','system:notice:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1038,'公告修改',107,3,'#','F','0','system:notice:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1039,'公告删除',107,4,'#','F','0','system:notice:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1040,'公告保存',107,5,'#','F','0','system:notice:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1041,'操作查询',500,1,'#','F','0','monitor:operlog:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1042,'操作删除',500,2,'#','F','0','monitor:operlog:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1043,'详细信息',500,3,'#','F','0','monitor:operlog:detail','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1044,'登录查询',501,1,'#','F','0','monitor:logininfor:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1045,'登录删除',501,2,'#','F','0','monitor:logininfor:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1046,'在线查询',109,1,'#','F','0','monitor:online:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1047,'批量强退',109,2,'#','F','0','monitor:online:batchForceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1048,'单条强退',109,3,'#','F','0','monitor:online:forceLogout','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1049,'任务查询',110,1,'#','F','0','monitor:job:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1050,'任务新增',110,2,'#','F','0','monitor:job:add','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1051,'任务修改',110,3,'#','F','0','monitor:job:edit','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1052,'任务删除',110,4,'#','F','0','monitor:job:remove','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1053,'任务保存',110,5,'#','F','0','monitor:job:save','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1054,'状态修改',110,6,'#','F','0','monitor:job:changeStatus','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1055,'生成查询',113,1,'#','F','0','tool:gen:list','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(1056,'生成代码',113,2,'#','F','0','tool:gen:code','#','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2000,'地址管理',4,1,'/module/address','C','0','module:address:view','fa fa-database','admin','2018-07-02 20:12:25','admin','2018-07-02 20:12:59',''),(2001,'国家管理',2000,1,'/module/address/country','F','0','module:country:view','fa fa-database','admin','2018-07-02 20:12:25','admin','2018-07-02 21:38:26',''),(2007,'国家查询',2001,1,'#','F','0','module:country:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2008,'国家新增',2001,2,'#','F','0','module:country:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2009,'国家修改',2001,3,'#','F','0','module:country:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2010,'国家删除',2001,4,'#','F','0','module:country:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2011,'国家保存',2001,5,'#','F','0','module:country:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2012,'城市',2000,1,'/module/city','F','0','module:city:view','#','admin','2018-03-01 00:00:00','admin','2018-07-09 09:49:17','城市菜单'),(2013,'城市查询',2012,1,'#','F','0','module:city:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2014,'城市新增',2012,2,'#','F','0','module:city:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2015,'城市修改',2012,3,'#','F','0','module:city:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2016,'城市删除',2012,4,'#','F','0','module:city:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2017,'城市保存',2012,5,'#','F','0','module:city:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2018,'地址',2000,1,'/module/fulladdress','F','0','module:fulladdress:view','#','admin','2018-03-01 00:00:00','admin','2018-07-09 09:49:28','地址菜单'),(2019,'地址查询',2018,1,'#','F','0','module:fulladdress:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2020,'地址新增',2018,2,'#','F','0','module:fulladdress:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2021,'地址修改',2018,3,'#','F','0','module:fulladdress:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2022,'地址删除',2018,4,'#','F','0','module:fulladdress:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2023,'地址保存',2018,5,'#','F','0','module:fulladdress:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2024,'根据国家查询城市',2012,6,'#','F','0','module:city:listbycountry','#','admin','2018-07-08 09:24:17','',NULL,''),(2025,'设备管理',4,2,'/module/device','C','0','module:device:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:23:23','设备管理菜单'),(2026,'设备管理查询',2025,1,'#','F','0','module:device:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2027,'设备管理新增',2025,2,'#','F','0','module:device:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2028,'设备管理修改',2025,3,'#','F','0','module:device:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2029,'设备管理删除',2025,4,'#','F','0','module:device:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2030,'设备管理保存',2025,5,'#','F','0','module:device:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2031,'邮箱管理',4,3,'/module/mail','C','0','module:mail:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:23:40','邮箱管理	菜单'),(2032,'邮箱管理	查询',2031,1,'#','F','0','module:mail:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2033,'邮箱管理	新增',2031,2,'#','F','0','module:mail:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2034,'邮箱管理	修改',2031,3,'#','F','0','module:mail:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2035,'邮箱管理	删除',2031,4,'#','F','0','module:mail:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2036,'邮箱管理	保存',2031,5,'#','F','0','module:mail:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2037,'联系电话',4,4,'/module/phone','C','0','module:phone:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:23:48','联系电话菜单'),(2038,'联系电话查询',2037,1,'#','F','0','module:phone:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2039,'联系电话新增',2037,2,'#','F','0','module:phone:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2040,'联系电话修改',2037,3,'#','F','0','module:phone:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2041,'联系电话删除',2037,4,'#','F','0','module:phone:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2042,'联系电话保存',2037,5,'#','F','0','module:phone:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2043,'IP地址管理',2050,1,'/module/ipMgt/ip','F','0','module:ip:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','IP地址管理菜单'),(2044,'IP地址管理查询',2043,1,'#','F','0','module:ip:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2045,'IP地址管理新增',2043,2,'#','F','0','module:ip:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2046,'IP地址管理修改',2043,3,'#','F','0','module:ip:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2047,'IP地址管理删除',2043,4,'#','F','0','module:ip:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2048,'IP地址管理保存',2043,5,'#','F','0','module:ip:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2050,'IP管理',4,5,'/module/ipMgt','C','0','module:ipmgt:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:23:55','IP管理'),(2051,'ip供应商',2050,1,'/module/ipMgt/provider','F','0','module:provider:view','#','admin','2018-03-01 00:00:00','admin','2018-07-16 17:10:34','ip供应商菜单'),(2052,'ip供应商查询',2051,1,'#','F','0','module:provider:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2053,'ip供应商新增',2051,2,'#','F','0','module:provider:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2054,'ip供应商修改',2051,3,'#','F','0','module:provider:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2055,'ip供应商删除',2051,4,'#','F','0','module:provider:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2056,'ip供应商保存',2051,5,'#','F','0','module:provider:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2057,'支付方式',2070,1,'/module/methods','F','0','module:methods:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 14:39:10','支付方式菜单'),(2058,'支付方式查询',2057,1,'#','F','0','module:methods:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2059,'支付方式新增',2057,2,'#','F','0','module:methods:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2060,'支付方式修改',2057,3,'#','F','0','module:methods:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2061,'支付方式删除',2057,4,'#','F','0','module:methods:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2062,'支付方式保存',2057,5,'#','F','0','module:methods:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2063,'支付方式类型',2070,2,'/module/method/type','F','0','module:methodtype:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','支付方式类型菜单'),(2064,'支付方式类型查询',2063,1,'#','F','0','module:methodtype:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2065,'支付方式类型新增',2063,2,'#','F','0','module:methodtype:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2066,'支付方式类型修改',2063,3,'#','F','0','module:methodtype:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2067,'支付方式类型删除',2063,4,'#','F','0','module:methodtype:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2068,'支付方式类型保存',2063,5,'#','F','0','module:methodtype:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2070,'支付管理',4,6,'/module/payment','C','0','module:payment:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:24:02',''),(2071,'平台管理',4,7,'/module/platformMgt','C','0','module:platformMgt:view','#','admin','2018-03-01 00:00:00','admin','2018-07-18 19:24:08',''),(2072,'平台类型管理',2071,2,'/module/platform/type','F','0','module:platformtype:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','平台类型管理菜单'),(2073,'平台类型管理查询',2072,1,'#','F','0','module:platformtype:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2074,'平台类型管理新增',2072,2,'#','F','0','module:platformtype:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2075,'平台类型管理修改',2072,3,'#','F','0','module:platformtype:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2076,'平台类型管理删除',2072,4,'#','F','0','module:platformtype:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2077,'平台类型管理保存',2072,5,'#','F','0','module:platformtype:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2078,'平台',2071,1,'/module/platform','F','0','module:platform:view','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','平台菜单'),(2079,'平台查询',2078,1,'#','F','0','module:platform:list','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2080,'平台新增',2078,2,'#','F','0','module:platform:add','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2081,'平台修改',2078,3,'#','F','0','module:platform:edit','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2082,'平台删除',2078,4,'#','F','0','module:platform:remove','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00',''),(2083,'平台保存',2078,5,'#','F','0','module:platform:save','#','admin','2018-03-01 00:00:00','ry','2018-03-01 00:00:00','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(2) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(500) NOT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2','新版本内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1','维护内容','0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_oper_log` (
  `oper_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `action` varchar(100) DEFAULT '' COMMENT '功能请求',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `channel` varchar(20) DEFAULT '' COMMENT '来源渠道（manage后台用户 mobile手机端用户 other其它）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(30) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(255) DEFAULT '' COMMENT '请求参数',
  `status` char(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin','研发一部','/system/role/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-09 09:48:28'),(101,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin','研发一部','/system/role/save','127.0.0.1','XX 内网IP','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-09 09:48:31'),(102,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/2012','127.0.0.1',NULL,'{}','0',NULL,'2018-07-09 09:49:13'),(103,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin','研发一部','/system/menu/save','127.0.0.1','XX 内网IP','{\"menuId\":[\"2012\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"城市\"],\"url\":[\"/module/city\"],\"perms\":[\"module:city:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-09 09:49:17'),(104,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin','研发一部','/system/menu/edit/2018','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-09 09:49:25'),(105,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin','研发一部','/system/menu/save','127.0.0.1','XX 内网IP','{\"menuId\":[\"2018\"],\"parentId\":[\"2000\"],\"menuType\":[\"F\"],\"menuName\":[\"地址\"],\"url\":[\"/module/fulladdress\"],\"perms\":[\"module:fulladdress:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-09 09:49:28'),(106,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin','研发一部','/tool/gen/genCode/sys_cell_phone','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:33:16'),(107,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin','研发一部','/system/role/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:38:48'),(108,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin','研发一部','/system/role/save','127.0.0.1','XX 内网IP','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-10 15:38:55'),(109,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:44:53'),(110,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:45:46'),(111,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:46:42'),(112,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 15:50:15'),(113,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:43:27'),(114,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:44:59'),(115,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:45:17'),(116,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:45:37'),(117,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:55:11'),(118,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:56:20'),(119,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:57:03'),(120,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 16:57:22'),(121,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 17:10:28'),(122,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-10 17:11:43'),(123,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:48:18'),(124,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','','{}','0',NULL,'2018-07-12 10:49:32'),(125,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','','{}','0',NULL,'2018-07-12 10:50:21'),(126,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:51:15'),(127,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:51:44'),(128,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:52:12'),(129,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:52:45'),(130,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:54:01'),(131,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:55:22'),(132,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:57:09'),(133,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 10:59:39'),(134,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:14:12'),(135,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:14:44'),(136,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:20:59'),(137,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:21:46'),(138,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:22:05'),(139,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:22:19'),(140,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:23:57'),(141,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:24:05'),(142,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:24:44'),(143,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:24:55'),(144,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:25:46'),(145,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin','研发一部','/module/phone/save','127.0.0.1','XX 内网IP','{\"phoneNumber\":[\"\"],\"phoneType\":[\"\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"3\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_cell_phone (          phone_code,            country_id,            device_id,                                    )values(          ?,            ?,            ?,                              )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)','2018-07-12 11:25:50'),(146,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:26:16'),(147,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin','研发一部','/module/phone/save','127.0.0.1','XX 内网IP','{\"phoneNumber\":[\"\"],\"phoneType\":[\"\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"10\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_cell_phone (          phone_code,            country_id,            device_id,                                    )values(          ?,            ?,            ?,                              )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 137, line 13, column 11, token VALUES : insert into sys_cell_phone (\n			 \n			 phone_code,  \n			 \n			 country_id,  \n			 \n			 device_id,  \n			 \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 ?,  \n			 \n			 \n			 \n			 \n			 \n		)','2018-07-12 11:26:20'),(148,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 11:31:04'),(149,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin','研发一部','/module/phone/save','127.0.0.1','XX 内网IP','{\"phoneNumber\":[\"11232\"],\"phoneType\":[\"1\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"8\"]}','0',NULL,'2018-07-12 11:31:10'),(150,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin','研发一部','/module/phone/add','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 14:07:11'),(151,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin','研发一部','/module/phone/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 14:07:43'),(152,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin','研发一部','/module/phone/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 14:08:13'),(153,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin','研发一部','/module/phone/edit/1','127.0.0.1','XX 内网IP','{}','0',NULL,'2018-07-12 14:09:35'),(154,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin','研发一部','/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-12 14:15:11'),(155,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 10:11:24'),(156,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:41:58'),(157,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"6\"]}','0',NULL,'2018-07-16 14:42:03'),(158,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:42:05'),(159,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:43:01'),(160,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:45:00'),(161,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:45:30'),(162,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:49:25'),(163,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:49:46'),(164,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:50:22'),(165,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:51:10'),(166,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:51:24'),(167,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:52:00'),(168,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:54:47'),(169,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:55:19'),(170,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 14:55:37'),(171,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:06:12'),(172,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:07:40'),(173,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:08:36'),(174,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"11\"]}','0',NULL,'2018-07-16 15:08:44'),(175,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:08:46'),(176,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:08:54'),(177,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:09:29'),(178,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:09:35'),(179,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:09:47'),(180,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:09:51'),(181,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:10:31'),(182,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:10:44'),(183,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:11:14'),(184,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:11:24'),(185,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:11:54'),(186,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:11:56'),(187,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:12:14'),(188,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"\"]}','0',NULL,'2018-07-16 15:12:16'),(189,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:15:49'),(190,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"0\"]}','0',NULL,'2018-07-16 15:15:52'),(191,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:30:26'),(192,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"0\"]}','0',NULL,'2018-07-16 15:30:28'),(193,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:31:02'),(194,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"0\"]}','0',NULL,'2018-07-16 15:31:31'),(195,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:37:55'),(196,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:37:59'),(197,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"0\"]}','0',NULL,'2018-07-16 15:38:28'),(198,'联系电话','2','com.ruoyi.project.module.cellphone.controller.CellPhoneController.edit()','1','admin',NULL,'/module/phone/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 15:38:58'),(199,'联系电话','3','com.ruoyi.project.module.cellphone.controller.CellPhoneController.save()','1','admin',NULL,'/module/phone/save','127.0.0.1','','{\"id\":[\"1\"],\"phoneNumber\":[\"11232\"],\"countryId\":[\"2\"],\"phoneCode\":[\"86\"],\"deviceId\":[\"0\"]}','0',NULL,'2018-07-16 15:39:01'),(200,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_ip','127.0.0.1','','{}','0',NULL,'2018-07-16 16:30:14'),(201,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 16:38:04'),(202,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-16 16:38:07'),(203,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 16:41:01'),(204,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-16 16:41:07'),(205,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_provider','127.0.0.1','','{}','0',NULL,'2018-07-16 17:01:47'),(206,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:09:00'),(207,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-16 17:09:05'),(208,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2051','127.0.0.1','','{}','0',NULL,'2018-07-16 17:10:30'),(209,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2051\"],\"parentId\":[\"2050\"],\"menuType\":[\"M\"],\"menuName\":[\"ip供应商\"],\"url\":[\"/module/provider\"],\"perms\":[\"module:provider:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-16 17:10:34'),(210,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:16:26'),(211,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-09-16 17:16:00\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"1\"],\"usageStatus\":[\"1\"]}','1','nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String','2018-07-16 17:16:57'),(212,'定时任务','2','com.ruoyi.project.monitor.job.controller.JobController.edit()','1','admin',NULL,'/monitor/job/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:17:29'),(213,'通知公告','2','com.ruoyi.project.system.notice.controller.NoticeController.edit()','1','admin',NULL,'/system/notice/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:17:44'),(214,'通知公告','1','com.ruoyi.project.system.notice.controller.NoticeController.add()','1','admin',NULL,'/system/notice/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:17:58'),(215,'参数管理','1','com.ruoyi.project.system.config.controller.ConfigController.add()','1','admin',NULL,'/system/config/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:01'),(216,'字典类型','1','com.ruoyi.project.system.dict.controller.DictTypeController.add()','1','admin',NULL,'/system/dict/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:06'),(217,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_user_sex','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:12'),(218,'岗位管理','1','com.ruoyi.project.system.post.controller.PostController.add()','1','admin',NULL,'/system/post/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:18'),(219,'部门管理','1','com.ruoyi.project.system.dept.controller.DeptController.add()','1','admin',NULL,'/system/dept/add/100','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:23'),(220,'菜单管理','1','com.ruoyi.project.system.menu.controller.MenuController.add()','1','admin',NULL,'/system/menu/add/0','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:27'),(221,'角色管理','1','com.ruoyi.project.system.role.controller.RoleController.add()','1','admin',NULL,'/system/role/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:33'),(222,'用户管理','2','com.ruoyi.project.system.user.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:18:39'),(223,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:19:25'),(224,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"1\"],\"usageStatus\":[\"1\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 178, line 14, column 11, token VALUES : insert into sys_ip (\n			 \n			 ip_address,  \n			 user_name,  \n			 password,  \n			 \n			 provider_id,  \n			 renewal_status,  \n			 usage_status,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_ip (          ip_address,       user_name,       password,            provider_id,       renewal_status,       usage_status,                               )values(          ?,       ?,       ?,            ?,       ?,       ?,                         )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 178, line 14, column 11, token VALUES : insert into sys_ip (\n			 \n			 ip_address,  \n			 user_name,  \n			 password,  \n			 \n			 provider_id,  \n			 renewal_status,  \n			 usage_status,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 178, line 14, column 11, token VALUES : insert into sys_ip (\n			 \n			 ip_address,  \n			 user_name,  \n			 password,  \n			 \n			 provider_id,  \n			 renewal_status,  \n			 usage_status,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 178, line 14, column 11, token VALUES : insert into s','2018-07-16 17:19:36'),(225,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:20:58'),(226,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"1\"],\"usageStatus\":[\"1\"]}','0',NULL,'2018-07-16 17:21:04'),(227,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:21:21'),(228,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"2\"],\"usageStatus\":[\"1\"],\"createBy\":[\"\"],\"createTime\":[\"2018-07-16 17:21:04\"],\"updateBy\":[\"\"],\"updateTime\":[\"\"]}','1','nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String','2018-07-16 17:21:24'),(229,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:23:25'),(230,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"2\"],\"usageStatus\":[\"1\"],\"createBy\":[\"\"],\"createTime\":[\"2018-07-16 17:21:04\"],\"updateBy\":[\"\"],\"updateTime\":[\"\"]}','1','nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String','2018-07-16 17:23:29'),(231,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 17:24:19'),(232,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:27:50'),(233,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:28:18'),(234,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:28:25'),(235,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:29:44'),(236,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:35:56'),(237,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:40:44'),(238,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:44:02'),(239,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:46:31'),(240,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:54:31'),(241,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 17:59:26'),(242,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 18:59:54'),(243,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:08:56'),(244,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"\"],\"providerId\":[\"\"],\"renewalStatus\":[\"\"],\"usageStatus\":[\"\"]}','0',NULL,'2018-07-16 19:08:58'),(245,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:09:05'),(246,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:12:02'),(247,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"\"],\"providerId\":[\"\"]}','0',NULL,'2018-07-16 19:12:07'),(248,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:12:35'),(249,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"\"],\"providerId\":[\"\"]}','0',NULL,'2018-07-16 19:12:38'),(250,'用户管理','2','com.ruoyi.project.system.user.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 19:13:08'),(251,'用户管理','3','com.ruoyi.project.system.user.controller.UserController.save()','1','admin',NULL,'/system/user/save','127.0.0.1','','{\"userId\":[\"2\"],\"deptId\":[\"108\"],\"userName\":[\"若依\"],\"email\":[\"ry@qq.com\"],\"phonenumber\":[\"15666666666\"],\"sex\":[\"1\"],\"status\":[\"1\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}','0',NULL,'2018-07-16 19:13:10'),(252,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:16:15'),(253,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"\"]}','0',NULL,'2018-07-16 19:16:20'),(254,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:16:45'),(255,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"\"]}','0',NULL,'2018-07-16 19:16:50'),(256,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:17:47'),(257,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-16 19:17:53'),(258,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:18:21'),(259,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.2\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-16 19:18:31'),(260,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:18:37'),(261,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.3\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"\"],\"providerId\":[\"2\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-16 19:18:46'),(262,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:19:25'),(263,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:20:56'),(264,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:21:07'),(265,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:04'),(266,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:09'),(267,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:28'),(268,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/6','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:32'),(269,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:34'),(270,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:57'),(271,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/6','127.0.0.1','','{}','0',NULL,'2018-07-16 19:22:59'),(272,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-16 19:23:02'),(273,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-16 19:23:04'),(274,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:44:38'),(275,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:47:12'),(276,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:49:41'),(277,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:50:20'),(278,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:51:04'),(279,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-16 19:51:23'),(280,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-16 00:00:00\"],\"providerId\":[\"\"],\"renewalStatus\":[\"1\"]}','1','nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String','2018-07-16 19:51:45'),(281,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/7','127.0.0.1','','{}','0',NULL,'2018-07-16 19:53:11'),(282,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 19:54:11'),(283,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{\"id\":[\"3\"],\"ipAddress\":[\"127.0.0.20\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"2018-07-31\"],\"providerId\":[\"\"],\"renewalStatus\":[\"on\"]}','0',NULL,'2018-07-16 19:54:21'),(284,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 19:54:32'),(285,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"2\"],\"ipAddress\":[\"127.0.0.20\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"2018-07-28 00:00:00\"],\"providerId\":[\"\"],\"renewalStatus\":[\"1\"]}','1','nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String\r\n### Cause: java.lang.IllegalArgumentException: invalid comparison: java.util.Date and java.lang.String','2018-07-16 19:54:44'),(286,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-16 19:56:06'),(287,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"4\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"2018-07-27 00:00:00\"],\"providerId\":[\"\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-16 19:56:10'),(288,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 19:56:44'),(289,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"3\"],\"ipAddress\":[\"127.0.0.20\"],\"userName\":[\"\"],\"password\":[\"\"],\"expirationDate\":[\"2018-07-28 00:00:00\"],\"providerId\":[\"\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-16 19:56:50'),(290,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-16 19:58:31'),(291,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 19:58:39'),(292,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-16 20:00:24'),(293,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 20:14:44'),(294,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-16 20:18:25'),(295,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 20:19:05'),(296,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-16 20:20:00'),(297,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 20:20:24'),(298,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 20:20:46'),(299,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-16 20:21:02'),(300,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 20:21:20'),(301,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 20:22:58'),(302,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 20:23:36'),(303,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-16 20:24:15'),(304,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:07:23'),(305,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:07:27'),(306,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 15:07:36'),(307,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:07:38'),(308,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:07:43'),(309,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:09:32'),(310,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:09:34'),(311,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:10:07'),(312,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 15:10:20'),(313,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:10:53'),(314,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:11:06'),(315,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:11:25'),(316,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:11:29'),(317,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 15:11:31'),(318,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:12:23'),(319,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-31 00:00:00\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-17 15:12:28'),(320,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:12:35'),(321,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:13:24'),(322,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:13:48'),(323,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 15:13:55'),(324,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"2\"],\"ipAddress\":[\"127.0.0.20\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-08-30 00:00:00\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-17 15:14:09'),(325,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 15:14:16'),(326,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-31 00:00:00\"],\"providerId\":[\"1\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-17 15:14:20'),(327,'IP地址管理','4','com.ruoyi.project.module.ip.controller.IpController.remove()','1','admin',NULL,'/module/ipMgt/ip/remove','127.0.0.1','','{\"ids\":[\"7\"]}','0',NULL,'2018-07-17 15:14:34'),(328,'IP地址管理','4','com.ruoyi.project.module.ip.controller.IpController.remove()','1','admin',NULL,'/module/ipMgt/ip/remove','127.0.0.1','','{\"ids\":[\"5,6\"]}','0',NULL,'2018-07-17 15:14:39'),(329,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:15:27'),(330,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:30:10'),(331,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:30:53'),(332,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:32:10'),(333,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:33:06'),(334,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 15:34:13'),(335,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"222\"],\"qq\":[\"333\"],\"cellPhone\":[\"444\"],\"countryId_text\":[\"美国(11)\"],\"countryId\":[\"4\"],\"status\":[\"332\"],\"reason\":[\"222\"]}','0',NULL,'2018-07-17 15:34:23'),(336,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:03:04'),(337,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:03:45'),(338,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"11\"],\"qq\":[\"333\"],\"cellPhone\":[\"22\"],\"countryId\":[\"5\"],\"status\":[\"2\"]}','0',NULL,'2018-07-17 19:03:56'),(339,'用户管理','2','com.ruoyi.project.system.user.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:24'),(340,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:30'),(341,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:37'),(342,'部门管理','2','com.ruoyi.project.system.dept.controller.DeptController.edit()','1','admin',NULL,'/system/dept/edit/101','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:45'),(343,'岗位管理','2','com.ruoyi.project.system.post.controller.PostController.edit()','1','admin',NULL,'/system/post/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:50'),(344,'字典类型','2','com.ruoyi.project.system.dict.controller.DictTypeController.edit()','1','admin',NULL,'/system/dict/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:05:58'),(345,'字典数据','2','com.ruoyi.project.system.dict.controller.DictDataController.edit()','1','admin',NULL,'/system/dict/data/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 19:06:02'),(346,'通知公告','2','com.ruoyi.project.system.notice.controller.NoticeController.edit()','1','admin',NULL,'/system/notice/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 19:06:09'),(347,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 19:25:14'),(348,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:25:17'),(349,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:25:37'),(350,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:28:02'),(351,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:29:50'),(352,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:30:16'),(353,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:37:08'),(354,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:37:28'),(355,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:38:44'),(356,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:42:49'),(357,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:43:59'),(358,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"\"],\"wangwang\":[\"\"],\"wechat\":[\"\"],\"qq\":[\"\"],\"cellPhone\":[\"\"],\"countryId\":[\"\"],\"status\":[\"1\"]}','0',NULL,'2018-07-17 19:44:02'),(359,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:44:05'),(360,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"\"],\"wangwang\":[\"\"],\"wechat\":[\"\"],\"qq\":[\"\"],\"cellPhone\":[\"\"],\"countryId\":[\"\"],\"status\":[\"2\"]}','0',NULL,'2018-07-17 19:44:07'),(361,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:44:17'),(362,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:45:48'),(363,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-17 19:46:37'),(364,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"\"],\"wangwang\":[\"\"],\"wechat\":[\"\"],\"qq\":[\"333\"],\"cellPhone\":[\"22\"],\"countryId\":[\"6\"],\"reason\":[\"禁用原因\"],\"status\":[\"2\"]}','0',NULL,'2018-07-17 19:46:50'),(365,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-17 19:46:54'),(366,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:50:27'),(367,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:51:05'),(368,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 19:51:09'),(369,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:54:51'),(370,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:54:56'),(371,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:56:27'),(372,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 19:56:34'),(373,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 19:56:38'),(374,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:56:47'),(375,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 19:59:45'),(376,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:07'),(377,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:16'),(378,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:22'),(379,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:27'),(380,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:51'),(381,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:00:58'),(382,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-17 20:01:03'),(383,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:02:01'),(384,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:04:53'),(385,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:04:56'),(386,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:06:12'),(387,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:06:19'),(388,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:12:27'),(389,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:12:31'),(390,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:12:54'),(391,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 20:12:57'),(392,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:13:30'),(393,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:13:32'),(394,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:15:01'),(395,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:16:12'),(396,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:16:46'),(397,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:16:55'),(398,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:16:58'),(399,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:17:18'),(400,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:18:15'),(401,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:18:38'),(402,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:22:43'),(403,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:22:46'),(404,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-17 20:27:33'),(405,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-17 20:27:39'),(406,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-17 20:27:45'),(407,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-17 20:27:49'),(408,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:32:24'),(409,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 09:32:29'),(410,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:32:38'),(411,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 09:32:42'),(412,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 09:35:42'),(413,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:35:46'),(414,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:46:46'),(415,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"id\":[\"1\"],\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"222\"],\"qq\":[\"333\"],\"cellPhone\":[\"444\"],\"countryId\":[\"4\"],\"reason\":[\"112\"],\"status\":[\"2\"]}','0',NULL,'2018-07-18 09:46:53'),(416,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:46:56'),(417,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"id\":[\"1\"],\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"222\"],\"qq\":[\"333\"],\"cellPhone\":[\"444\"],\"countryId\":[\"4\"],\"reason\":[\"112\"],\"status\":[\"1\"]}','0',NULL,'2018-07-18 09:46:58'),(418,'ip供应商','1','com.ruoyi.project.module.ip.controller.IpProviderController.add()','1','admin',NULL,'/module/ipMgt/provider/add','127.0.0.1','','{}','0',NULL,'2018-07-18 09:47:02'),(419,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"providerName\":[\"1\"],\"wangwang\":[\"1\"],\"wechat\":[\"1\"],\"qq\":[\"1\"],\"cellPhone\":[\"1\"],\"countryId\":[\"4\"],\"reason\":[\"\"],\"status\":[\"1\"]}','0',NULL,'2018-07-18 09:47:11'),(420,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:48:48'),(421,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"id\":[\"1\"],\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"222\"],\"qq\":[\"333\"],\"cellPhone\":[\"444\"],\"countryId\":[\"4\"],\"reason\":[\"禁用原因\"],\"status\":[\"2\"]}','0',NULL,'2018-07-18 09:48:52'),(422,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:49:01'),(423,'ip供应商','3','com.ruoyi.project.module.ip.controller.IpProviderController.save()','1','admin',NULL,'/module/ipMgt/provider/save','127.0.0.1','','{\"id\":[\"1\"],\"providerName\":[\"12\"],\"wangwang\":[\"111\"],\"wechat\":[\"222\"],\"qq\":[\"333\"],\"cellPhone\":[\"444\"],\"countryId\":[\"4\"],\"reason\":[\"禁用原因\"],\"status\":[\"1\"]}','0',NULL,'2018-07-18 09:49:03'),(424,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 09:54:00'),(425,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 09:54:09'),(426,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin',NULL,'/module/phone/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:02:51'),(427,'字典类型','1','com.ruoyi.project.system.dict.controller.DictTypeController.add()','1','admin',NULL,'/system/dict/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:03:10'),(428,'字典类型','3','com.ruoyi.project.system.dict.controller.DictTypeController.save()','1','admin',NULL,'/system/dict/save','127.0.0.1','','{\"dictName\":[\"电话重要性\"],\"dictType\":[\"sys_phone_importance\"],\"status\":[\"0\"],\"remark\":[\"电话重要性\"]}','0',NULL,'2018-07-18 10:03:22'),(429,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_phone_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:03:28'),(430,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Priority\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_phone_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 优先\"]}','0',NULL,'2018-07-18 10:04:28'),(431,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_phone_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:04:37'),(432,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Regular\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_phone_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 其次\"]}','0',NULL,'2018-07-18 10:05:10'),(433,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_phone_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:05:12'),(434,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Temporary\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_phone_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 一般\"]}','0',NULL,'2018-07-18 10:05:29'),(435,'联系电话','1','com.ruoyi.project.module.cellphone.controller.CellPhoneController.add()','1','admin',NULL,'/module/phone/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:05:40'),(436,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_phone_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:08:44'),(437,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"All\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_phone_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 无\"]}','0',NULL,'2018-07-18 10:09:05'),(438,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_phone_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:09:11'),(439,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Used\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_phone_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 无\"]}','0',NULL,'2018-07-18 10:09:25'),(440,'字典类型','1','com.ruoyi.project.system.dict.controller.DictTypeController.add()','1','admin',NULL,'/system/dict/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:12:19'),(441,'字典类型','3','com.ruoyi.project.system.dict.controller.DictTypeController.save()','1','admin',NULL,'/system/dict/save','127.0.0.1','','{\"dictName\":[\"IP重要性\"],\"dictType\":[\"sys_ip_importance\"],\"status\":[\"0\"],\"remark\":[\"IP重要性\"]}','0',NULL,'2018-07-18 10:12:33'),(442,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:12:38'),(443,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"All\"],\"dictValue\":[\"0\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"0\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 无\"]}','0',NULL,'2018-07-18 10:12:48'),(444,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:12:50'),(445,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Priority\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 优先\"]}','0',NULL,'2018-07-18 10:13:11'),(446,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:13:19'),(447,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Regular\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 其次\"]}','0',NULL,'2018-07-18 10:13:36'),(448,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:13:38'),(449,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Temporary\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 一般\"]}','0',NULL,'2018-07-18 10:13:48'),(450,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:13:54'),(451,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Renewal\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 续费\"]}','0',NULL,'2018-07-18 10:14:07'),(452,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_ip_importance','127.0.0.1','','{}','0',NULL,'2018-07-18 10:14:10'),(453,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Used\"],\"dictValue\":[\"5\"],\"dictType\":[\"sys_ip_importance\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"5\"],\"status\":[\"0\"],\"remark\":[\"重要性 - 无\"]}','0',NULL,'2018-07-18 10:14:20'),(454,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:14:36'),(455,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:15:01'),(456,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:19:17'),(457,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:19:52'),(458,'ip供应商','2','com.ruoyi.project.module.ip.controller.IpProviderController.edit()','1','admin',NULL,'/module/ipMgt/provider/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-18 10:20:07'),(459,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:20:46'),(460,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:20:54'),(461,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:22:45'),(462,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-31 00:00:00\"],\"providerId\":[\"4\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-18 10:22:48'),(463,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:22:50'),(464,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:35:17'),(465,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:35:30'),(466,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:35:52'),(467,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:36:16'),(468,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:37:23'),(469,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 10:37:27'),(470,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:38:24'),(471,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:38:31'),(472,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-31 00:00:00\"],\"providerId\":[\"4\"],\"ipLevel\":[\"2\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-18 10:38:33'),(473,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:41:15'),(474,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 10:41:58'),(475,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"1\"],\"ipAddress\":[\"127.0.0.1\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-31 00:00:00\"],\"providerId\":[\"4\"],\"ipLevel\":[\"3\"],\"renewalStatus\":[\"2\"]}','0',NULL,'2018-07-18 10:42:01'),(476,'IP地址管理','1','com.ruoyi.project.module.ip.controller.IpController.add()','1','admin',NULL,'/module/ipMgt/ip/add','127.0.0.1','','{}','0',NULL,'2018-07-18 10:42:04'),(477,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"ipAddress\":[\"127.0.0.0\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-27 00:00:00\"],\"providerId\":[\"3\"],\"ipLevel\":[\"3\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-18 10:42:19'),(478,'IP地址管理','2','com.ruoyi.project.module.ip.controller.IpController.edit()','1','admin',NULL,'/module/ipMgt/ip/edit/8','127.0.0.1','','{}','0',NULL,'2018-07-18 10:42:26'),(479,'IP地址管理','3','com.ruoyi.project.module.ip.controller.IpController.save()','1','admin',NULL,'/module/ipMgt/ip/save','127.0.0.1','','{\"id\":[\"8\"],\"ipAddress\":[\"127.0.0.0\"],\"userName\":[\"admin\"],\"password\":[\"admin\"],\"expirationDate\":[\"2018-07-27 00:00:00\"],\"providerId\":[\"3\"],\"ipLevel\":[\"2\"],\"renewalStatus\":[\"1\"]}','0',NULL,'2018-07-18 10:42:29'),(480,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_payment_methods','127.0.0.1','','{}','0',NULL,'2018-07-18 14:08:50'),(481,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_payment_method_type','127.0.0.1','','{}','0',NULL,'2018-07-18 14:08:53'),(482,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 14:38:45'),(483,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-18 14:38:51'),(484,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2057','127.0.0.1','','{}','0',NULL,'2018-07-18 14:39:05'),(485,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2057\"],\"parentId\":[\"2070\"],\"menuType\":[\"M\"],\"menuName\":[\"支付方式\"],\"url\":[\"/module/methods\"],\"perms\":[\"module:methods:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 14:39:10'),(486,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 14:46:28'),(487,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 14:48:52'),(488,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"paymentName\":[\"支付方式名称\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"Logo图标\"],\"currencyId\":[\"1\"],\"createBy\":[\"\"],\"createTime\":[\"\"],\"updateBy\":[\"\"],\"updateTime\":[\"\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 177, line 12, column 11, token VALUES : insert into sys_payment_methods (\n			 \n			 payment_name,  \n			 payment_type,  \n			 official_website,  \n			 payment_logo,  \n			 currency_id,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_payment_methods (          payment_name,       payment_type,       official_website,       payment_logo,       currency_id,                               )values(          ?,       ?,       ?,       ?,       ?,                         )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 177, line 12, column 11, token VALUES : insert into sys_payment_methods (\n			 \n			 payment_name,  \n			 payment_type,  \n			 official_website,  \n			 payment_logo,  \n			 currency_id,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 177, line 12, column 11, token VALUES : insert into sys_payment_methods (\n			 \n			 payment_name,  \n			 payment_type,  \n			 official_website,  \n			 payment_logo,  \n			 currency_id,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 ?,  \', expect RPAREN, actual VALUES pos 177, line 12, column 11, token VALUES : insert into sys_payment_methods (\n			 \n			 payment_name,  \n			 payment_ty','2018-07-18 14:49:20'),(489,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 14:50:17'),(490,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"paymentName\":[\"支付方式名称\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"Logo图标\"],\"currencyId\":[\"1\"],\"createBy\":[\"\"],\"createTime\":[\"\"],\"updateBy\":[\"\"],\"updateTime\":[\"\"]}','0',NULL,'2018-07-18 14:50:27'),(491,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 14:51:31'),(492,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 14:51:35'),(493,'用户管理','2','com.ruoyi.project.system.user.controller.UserController.edit()','1','admin',NULL,'/system/user/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 15:01:23'),(494,'个人信息','2','com.ruoyi.project.system.user.controller.ProfileController.avatar()','1','admin',NULL,'/system/user/profile/avatar/1','127.0.0.1','','{}','0',NULL,'2018-07-18 15:05:42'),(495,'个人信息','2','com.ruoyi.project.system.user.controller.ProfileController.edit()','1','admin',NULL,'/system/user/profile/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 15:06:17'),(496,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:11:12'),(497,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:11:37'),(498,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:12:01'),(499,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:14:21'),(500,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:15:53'),(501,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:16:47'),(502,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:18:03'),(503,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:19:24'),(504,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:19:32'),(505,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:29:27'),(506,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:29:30'),(507,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:38:04'),(508,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:38:06'),(509,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:46:28'),(510,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:46:31'),(511,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:47:49'),(512,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:47:51'),(513,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:53:31'),(514,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:53:33'),(515,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:55:30'),(516,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:57:04'),(517,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:57:06'),(518,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 15:57:17'),(519,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 15:57:20'),(520,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:08'),(521,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:11'),(522,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:14'),(523,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:33'),(524,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:36'),(525,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:00:48'),(526,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:08:58'),(527,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:09:00'),(528,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:09:37'),(529,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:09:40'),(530,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:10:20'),(531,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:10:22'),(532,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:10:41'),(533,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:10:43'),(534,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:24'),(535,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:26'),(536,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:38'),(537,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:40'),(538,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:46'),(539,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:11:51'),(540,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"paymentName\":[\"111\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"333\"]}','0',NULL,'2018-07-18 16:12:07'),(541,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:20:53'),(542,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:20:56'),(543,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:23:25'),(544,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:23:27'),(545,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:24:17'),(546,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:24:19'),(547,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:24:46'),(548,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:24:49'),(549,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:26:56'),(550,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:26:59'),(551,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"paymentName\":[\"1\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"paymentLogo/55637305af0b10e98b4d13560f6fa9fa.jpg\"]}','0',NULL,'2018-07-18 16:27:15'),(552,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:27:54'),(553,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:29:07'),(554,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:29:44'),(555,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:30:02'),(556,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:30:32'),(557,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:38:43'),(558,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:39:06'),(559,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:39:57'),(560,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:43:55'),(561,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 16:44:11'),(562,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:44:45'),(563,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:45:05'),(564,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:45:09'),(565,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"id\":[\"1\"],\"paymentName\":[\"支付方式名称\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"paymentLogo/b0ee6af85849f6463b0b3b43f77d5b43.jpg\"],\"currencyId\":[\"1\"]}','0',NULL,'2018-07-18 16:45:17'),(566,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 16:45:21'),(567,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 16:45:25'),(568,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"id\":[\"2\"],\"paymentName\":[\"111\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"333\"],\"paymentLogo\":[\"paymentLogo/9882dce73d8aed7325c5b27be0b844c3.jpg\"],\"currencyId\":[\"\"]}','0',NULL,'2018-07-18 16:45:27'),(569,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:45:44'),(570,'支付方式类型','1','com.ruoyi.project.module.payment.controller.MethodTypeController.add()','1','admin',NULL,'/module/method/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:46:35'),(571,'支付方式类型','3','com.ruoyi.project.module.payment.controller.MethodTypeController.save()','1','admin',NULL,'/module/method/type/save','127.0.0.1','','{\"typeName\":[\"类型11\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 95, line 8, column 11, token VALUES : insert into sys_payment_method_type (\n			 \n			 type_name,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_payment_method_type (          type_name,                               )values(          ?,                         )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 95, line 8, column 11, token VALUES : insert into sys_payment_method_type (\n			 \n			 type_name,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 95, line 8, column 11, token VALUES : insert into sys_payment_method_type (\n			 \n			 type_name,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 ?,  \n			 \n			\', expect RPAREN, actual VALUES pos 95, line 8, column 11, token VALUES : insert into sys_payment_method_type (\n			 \n			 type_name,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 ?,  \n			 \n			 \n			 \n			 \n		)','2018-07-18 16:46:40'),(572,'支付方式类型','1','com.ruoyi.project.module.payment.controller.MethodTypeController.add()','1','admin',NULL,'/module/method/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:47:41'),(573,'支付方式类型','3','com.ruoyi.project.module.payment.controller.MethodTypeController.save()','1','admin',NULL,'/module/method/type/save','127.0.0.1','','{\"typeName\":[\"类型11\"]}','0',NULL,'2018-07-18 16:47:43'),(574,'支付方式类型','2','com.ruoyi.project.module.payment.controller.MethodTypeController.edit()','1','admin',NULL,'/module/method/type/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:47:47'),(575,'支付方式类型','2','com.ruoyi.project.module.payment.controller.MethodTypeController.edit()','1','admin',NULL,'/module/method/type/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:48:13'),(576,'支付方式类型','3','com.ruoyi.project.module.payment.controller.MethodTypeController.save()','1','admin',NULL,'/module/method/type/save','127.0.0.1','','{\"id\":[\"1\"],\"typeName\":[\"类型12\"]}','0',NULL,'2018-07-18 16:48:16'),(577,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 16:54:57'),(578,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:55:00'),(579,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 16:56:33'),(580,'支付方式','1','com.ruoyi.project.module.payment.controller.MethodsController.add()','1','admin',NULL,'/module/methods/add','127.0.0.1','','{}','0',NULL,'2018-07-18 17:02:30'),(581,'上传logo图标','3','com.ruoyi.project.module.payment.controller.MethodsController.updateLogo()','1','admin',NULL,'/module/methods/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 17:02:38'),(582,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"paymentName\":[\"支付方式名称\"],\"paymentType_text\":[\"类型12\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"paymentLogo/eb78d5561fb82388b1b44390fb4a8207.jpg\"]}','0',NULL,'2018-07-18 17:02:38'),(583,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 17:05:17'),(584,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-18 17:05:23'),(585,'支付方式类型','1','com.ruoyi.project.module.payment.controller.MethodTypeController.add()','1','admin',NULL,'/module/method/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 17:05:30'),(586,'支付方式类型','3','com.ruoyi.project.module.payment.controller.MethodTypeController.save()','1','admin',NULL,'/module/method/type/save','127.0.0.1','','{\"typeName\":[\"类型11\"]}','0',NULL,'2018-07-18 17:05:33'),(587,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 17:05:35'),(588,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"id\":[\"1\"],\"paymentName\":[\"支付方式名称\"],\"paymentType_text\":[\"类型11\"],\"paymentType\":[\"2\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"paymentLogo/b0ee6af85849f6463b0b3b43f77d5b43.jpg\"],\"currencyId\":[\"1\"]}','0',NULL,'2018-07-18 17:05:38'),(589,'支付方式','2','com.ruoyi.project.module.payment.controller.MethodsController.edit()','1','admin',NULL,'/module/methods/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 17:05:42'),(590,'支付方式','3','com.ruoyi.project.module.payment.controller.MethodsController.save()','1','admin',NULL,'/module/methods/save','127.0.0.1','','{\"id\":[\"1\"],\"paymentName\":[\"支付方式名称\"],\"paymentType_text\":[\"类型12\"],\"paymentType\":[\"1\"],\"officialWebsite\":[\"支付方式的官网\"],\"paymentLogo\":[\"paymentLogo/b0ee6af85849f6463b0b3b43f77d5b43.jpg\"],\"currencyId\":[\"1\"]}','0',NULL,'2018-07-18 17:05:51'),(591,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_platform_type','127.0.0.1','','{}','0',NULL,'2018-07-18 18:45:49'),(592,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 18:45:53'),(593,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-18 18:45:56'),(594,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 18:54:25'),(595,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-18 18:54:28'),(596,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 18:57:29'),(597,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 18:57:41'),(598,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 18:58:29'),(599,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 18:58:59'),(600,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"platformTypeName\":[\"平台类型名称1\"]}','0',NULL,'2018-07-18 18:59:02'),(601,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 18:59:06'),(602,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"platformTypeName\":[\"平台类型名称2\"]}','0',NULL,'2018-07-18 18:59:09'),(603,'平台类型管理','1','com.ruoyi.project.module.platform.controller.PlatformTypeController.add()','1','admin',NULL,'/module/platform/type/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:04:07'),(604,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"platformTypeName\":[\"平台类型名称3\"],\"platformCurrency\":[\"货币1\"]}','0',NULL,'2018-07-18 19:04:17'),(605,'平台类型管理','2','com.ruoyi.project.module.platform.controller.PlatformTypeController.edit()','1','admin',NULL,'/module/platform/type/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:04:19'),(606,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"id\":[\"1\"],\"platformTypeName\":[\"平台类型名称1\"],\"platformCurrency\":[\"货币1\"]}','0',NULL,'2018-07-18 19:04:23'),(607,'平台类型管理','2','com.ruoyi.project.module.platform.controller.PlatformTypeController.edit()','1','admin',NULL,'/module/platform/type/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 19:04:25'),(608,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"id\":[\"2\"],\"platformTypeName\":[\"平台类型名称2\"],\"platformCurrency\":[\"货币2\"]}','0',NULL,'2018-07-18 19:04:28'),(609,'平台类型管理','2','com.ruoyi.project.module.platform.controller.PlatformTypeController.edit()','1','admin',NULL,'/module/platform/type/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-18 19:04:29'),(610,'平台类型管理','3','com.ruoyi.project.module.platform.controller.PlatformTypeController.save()','1','admin',NULL,'/module/platform/type/save','127.0.0.1','','{\"id\":[\"3\"],\"platformTypeName\":[\"平台类型名称3\"],\"platformCurrency\":[\"货币3\"]}','0',NULL,'2018-07-18 19:04:32'),(611,'字典类型','1','com.ruoyi.project.system.dict.controller.DictTypeController.add()','1','admin',NULL,'/system/dict/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:14:38'),(612,'字典类型','3','com.ruoyi.project.system.dict.controller.DictTypeController.save()','1','admin',NULL,'/system/dict/save','127.0.0.1','','{\"dictName\":[\"KYC类型\"],\"dictType\":[\"sys_kyc_type\"],\"status\":[\"0\"],\"remark\":[\"KYC类型\"]}','0',NULL,'2018-07-18 19:14:55'),(613,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_kyc_type','127.0.0.1','','{}','0',NULL,'2018-07-18 19:15:07'),(614,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Auto\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_kyc_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"Auto\"]}','0',NULL,'2018-07-18 19:15:13'),(615,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_kyc_type','127.0.0.1','','{}','0',NULL,'2018-07-18 19:15:18'),(616,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Up\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_kyc_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"Up\"]}','0',NULL,'2018-07-18 19:15:24'),(617,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_kyc_type','127.0.0.1','','{}','0',NULL,'2018-07-18 19:15:28'),(618,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"CS\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_kyc_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"CS\"]}','0',NULL,'2018-07-18 19:15:34'),(619,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_kyc_type','127.0.0.1','','{}','0',NULL,'2018-07-18 19:15:40'),(620,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"Mail\"],\"dictValue\":[\"4\"],\"dictType\":[\"sys_kyc_type\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"Mail\"]}','0',NULL,'2018-07-18 19:15:46'),(621,'字典类型','1','com.ruoyi.project.system.dict.controller.DictTypeController.add()','1','admin',NULL,'/system/dict/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:15:56'),(622,'字典类型','3','com.ruoyi.project.system.dict.controller.DictTypeController.save()','1','admin',NULL,'/system/dict/save','127.0.0.1','','{\"dictName\":[\"内部交易\"],\"dictType\":[\"sys_inter_transaction\"],\"status\":[\"0\"],\"remark\":[\"内部交易\"]}','0',NULL,'2018-07-18 19:16:37'),(623,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_inter_transaction','127.0.0.1','','{}','0',NULL,'2018-07-18 19:16:43'),(624,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"NO\"],\"dictValue\":[\"1\"],\"dictType\":[\"sys_inter_transaction\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"no\"]}','0',NULL,'2018-07-18 19:16:52'),(625,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_inter_transaction','127.0.0.1','','{}','0',NULL,'2018-07-18 19:16:54'),(626,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"YES\"],\"dictValue\":[\"2\"],\"dictType\":[\"sys_inter_transaction\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"YES\"]}','0',NULL,'2018-07-18 19:17:00'),(627,'字典数据','1','com.ruoyi.project.system.dict.controller.DictDataController.add()','1','admin',NULL,'/system/dict/data/add/sys_inter_transaction','127.0.0.1','','{}','0',NULL,'2018-07-18 19:17:04'),(628,'字典数据','3','com.ruoyi.project.system.dict.controller.DictDataController.save()','1','admin',NULL,'/system/dict/data/save','127.0.0.1','','{\"dictLabel\":[\"UNKNOWN\"],\"dictValue\":[\"3\"],\"dictType\":[\"sys_inter_transaction\"],\"cssClass\":[\"\"],\"isDefault\":[\"Y\"],\"dictSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"UNKNOWN\"]}','0',NULL,'2018-07-18 19:17:11'),(629,'代码生成','10','com.ruoyi.project.tool.gen.controller.GenController.genCode()','1','admin',NULL,'/tool/gen/genCode/sys_platform','127.0.0.1','','{}','0',NULL,'2018-07-18 19:17:38'),(630,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:21:19'),(631,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2078','127.0.0.1','','{}','0',NULL,'2018-07-18 19:21:48'),(632,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2025','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:20'),(633,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2025\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"设备管理\"],\"url\":[\"/module/device\"],\"perms\":[\"module:device:view\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:23:23'),(634,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:28'),(635,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"4\"],\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"资源管理\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-bank\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:23:31'),(636,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2031','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:37'),(637,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2031\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"邮箱管理\\t\"],\"url\":[\"/module/mail\"],\"perms\":[\"module:mail:view\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:23:40'),(638,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2037','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:45'),(639,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2037\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"联系电话\"],\"url\":[\"/module/phone\"],\"perms\":[\"module:phone:view\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:23:48'),(640,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2050','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:52'),(641,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2050\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"IP管理\"],\"url\":[\"/module/ipMgt\"],\"perms\":[\"module:ipmgt:view\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:23:55'),(642,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2070','127.0.0.1','','{}','0',NULL,'2018-07-18 19:23:59'),(643,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2070\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"支付管理\"],\"url\":[\"/module/payment\"],\"perms\":[\"module:payment:view\"],\"orderNum\":[\"6\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:24:02'),(644,'菜单管理','2','com.ruoyi.project.system.menu.controller.MenuController.edit()','1','admin',NULL,'/system/menu/edit/2071','127.0.0.1','','{}','0',NULL,'2018-07-18 19:24:06'),(645,'菜单管理','3','com.ruoyi.project.system.menu.controller.MenuController.save()','1','admin',NULL,'/system/menu/save','127.0.0.1','','{\"menuId\":[\"2071\"],\"parentId\":[\"4\"],\"menuType\":[\"C\"],\"menuName\":[\"平台管理\"],\"url\":[\"/module/platformMgt\"],\"perms\":[\"module:platformMgt:view\"],\"orderNum\":[\"7\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}','0',NULL,'2018-07-18 19:24:08'),(646,'角色管理','2','com.ruoyi.project.system.role.controller.RoleController.edit()','1','admin',NULL,'/system/role/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:24:16'),(647,'角色管理','3','com.ruoyi.project.system.role.controller.RoleController.save()','1','admin',NULL,'/system/role/save','127.0.0.1','','{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,1015,103,1016,1017,1018,1019,1020,104,1021,1022,10','0',NULL,'2018-07-18 19:24:22'),(648,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:27:00'),(649,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:30:09'),(650,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:32:59'),(651,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:36:06'),(652,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:36:55'),(653,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"3\"],\"kycType\":[\"1\"]}','1','\r\n### Error updating database.  Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 \n			 \n			 \n		\', expect RPAREN, actual VALUES pos 128, line 13, column 11, token VALUES : insert into sys_platform (\n			 \n			 \n			 \n			 \n			 \n			 inter_transaction,  \n			 kyc_type,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 \n			 \n			 \n			 \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\r\n### SQL: insert into sys_platform (                              inter_transaction,       kyc_type,                               )values(                              ?,       ?,                         )\r\n### Cause: java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 \n			 \n			 \n		\', expect RPAREN, actual VALUES pos 128, line 13, column 11, token VALUES : insert into sys_platform (\n			 \n			 \n			 \n			 \n			 \n			 inter_transaction,  \n			 kyc_type,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 \n			 \n			 \n			 \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)\n; uncategorized SQLException; SQL state [null]; error code [0]; sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 \n			 \n			 \n		\', expect RPAREN, actual VALUES pos 128, line 13, column 11, token VALUES : insert into sys_platform (\n			 \n			 \n			 \n			 \n			 \n			 inter_transaction,  \n			 kyc_type,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 \n			 \n			 \n			 \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		); nested exception is java.sql.SQLException: sql injection violation, syntax error: syntax error, error in :\'    )values(\n			 \n			 \n			 \n			 \n		\', expect RPAREN, actual VALUES pos 128, line 13, column 11, token VALUES : insert into sys_platform (\n			 \n			 \n			 \n			 \n			 \n			 inter_transaction,  \n			 kyc_type,  \n			 \n			 \n			 \n			 \n        )values(\n			 \n			 \n			 \n			 \n			 \n			 ?,  \n			 ?,  \n			 \n			 \n			 \n			 \n		)','2018-07-18 19:36:58'),(654,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:38:05'),(655,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"2\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 19:38:09'),(656,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:38:12'),(657,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"3\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 19:38:15'),(658,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:38:26'),(659,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:38:29'),(660,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"1\"],\"kycType\":[\"4\"]}','0',NULL,'2018-07-18 19:38:32'),(661,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:39:21'),(662,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:41:13'),(663,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-18 19:41:17'),(664,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:42:22'),(665,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"1\"],\"platformName\":[\"平台名称1\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"2\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 19:42:29'),(666,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:46:16'),(667,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:46:59'),(668,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:47:23'),(669,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:47:41'),(670,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:47:44'),(671,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:48:46'),(672,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 19:49:06'),(673,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"1\"],\"platformName\":[\"平台名称1\"],\"platformTypeId_text\":[\"平台类型名称2(货币: 货币2)\"],\"platformTypeId\":[\"2\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"\"],\"interTransaction\":[\"2\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 19:49:10'),(674,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:50:22'),(675,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:51:05'),(676,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:53:07'),(677,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 19:53:09'),(678,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 19:53:31'),(679,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 19:53:33'),(680,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"平台名称4\"],\"platformTypeId_text\":[\"平台类型名称2(货币: 货币2)\"],\"platformTypeId\":[\"2\"],\"officialWebsite\":[\"平台官方网站\"],\"paymentLogo\":[\"platform/8a6e0fcc7bdf938accbbadbafec9e442.jpg\"],\"interTransaction\":[\"2\"],\"kycType\":[\"3\"]}','0',NULL,'2018-07-18 19:53:52'),(681,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-18 19:55:41'),(682,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/4','127.0.0.1','','{}','0',NULL,'2018-07-18 19:55:49'),(683,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 19:55:52'),(684,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 20:03:40'),(685,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 20:03:43'),(686,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"platformName\":[\"平台名称5\"],\"platformTypeId_text\":[\"平台类型名称3(货币: 货币3)\"],\"platformTypeId\":[\"3\"],\"officialWebsite\":[\"平台官方网站5\"],\"paymentLogo\":[\"platform/e35575b55c14df04e4793bd3d0bafa97.jpg\"],\"interTransaction\":[\"1\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 20:03:53'),(687,'平台','1','com.ruoyi.project.module.platform.controller.PlatformController.add()','1','admin',NULL,'/module/platform/add','127.0.0.1','','{}','0',NULL,'2018-07-18 20:04:35'),(688,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-18 20:04:54'),(689,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 20:04:56'),(690,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"5\"],\"platformName\":[\"平台名称5\"],\"platformTypeId_text\":[\"平台类型名称3(货币: 货币3)\"],\"platformTypeId\":[\"3\"],\"officialWebsite\":[\"平台官方网站5\"],\"platformLogo\":[\"platform/c25f7b8097e80118c5d33b9632267c9c.jpg\"],\"interTransaction\":[\"1\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 20:04:57'),(691,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-18 20:05:29'),(692,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/3','127.0.0.1','','{}','0',NULL,'2018-07-18 20:10:33'),(693,'上传logo图标','3','com.ruoyi.project.module.platform.controller.PlatformController.updateLogo()','1','admin',NULL,'/module/platform/updateLogo','127.0.0.1','','{}','0',NULL,'2018-07-18 20:10:37'),(694,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"3\"],\"platformName\":[\"平台名称3\"],\"platformTypeId_text\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"platformLogo\":[\"platform/b852c884c18a1fd82dbb944b3dbfeceb.jpg\"],\"interTransaction\":[\"1\"],\"kycType\":[\"4\"]}','0',NULL,'2018-07-18 20:10:43'),(695,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/2','127.0.0.1','','{}','0',NULL,'2018-07-18 20:13:01'),(696,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"2\"],\"platformName\":[\"\"],\"platformTypeId_text\":[\"\"],\"platformTypeId\":[\"\"],\"officialWebsite\":[\"\"],\"interTransaction\":[\"3\"],\"kycType\":[\"2\"]}','0',NULL,'2018-07-18 20:13:04'),(697,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/5','127.0.0.1','','{}','0',NULL,'2018-07-18 20:13:07'),(698,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"5\"],\"platformName\":[\"平台名称5\"],\"platformTypeId_text\":[\"平台类型名称3(货币: 货币3)\"],\"platformTypeId\":[\"3\"],\"officialWebsite\":[\"平台官方网站5\"],\"platformLogo\":[\"platform/c25f7b8097e80118c5d33b9632267c9c.jpg\"],\"interTransaction\":[\"1\"],\"kycType\":[\"3\"]}','0',NULL,'2018-07-18 20:13:12'),(699,'平台','2','com.ruoyi.project.module.platform.controller.PlatformController.edit()','1','admin',NULL,'/module/platform/edit/1','127.0.0.1','','{}','0',NULL,'2018-07-18 20:13:15'),(700,'平台','3','com.ruoyi.project.module.platform.controller.PlatformController.save()','1','admin',NULL,'/module/platform/save','127.0.0.1','','{\"id\":[\"1\"],\"platformName\":[\"平台名称1\"],\"platformTypeId_text\":[\"平台类型名称2(货币: 货币2)\"],\"platformTypeId\":[\"2\"],\"officialWebsite\":[\"\"],\"interTransaction\":[\"2\"],\"kycType\":[\"1\"]}','0',NULL,'2018-07-18 20:13:21');
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_payment_method_type`
--

DROP TABLE IF EXISTS `sys_payment_method_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_payment_method_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type_name` varchar(45) DEFAULT NULL COMMENT '类型',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='支付方式类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_payment_method_type`
--

LOCK TABLES `sys_payment_method_type` WRITE;
/*!40000 ALTER TABLE `sys_payment_method_type` DISABLE KEYS */;
INSERT INTO `sys_payment_method_type` VALUES (1,'类型12','','2018-07-18 16:47:43',NULL,NULL),(2,'类型11','','2018-07-18 17:05:33',NULL,NULL);
/*!40000 ALTER TABLE `sys_payment_method_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_payment_methods`
--

DROP TABLE IF EXISTS `sys_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(45) DEFAULT NULL COMMENT '支付方式名称',
  `payment_type` int(11) DEFAULT NULL COMMENT '关联sys_payment_methods_type表',
  `official_website` varchar(255) DEFAULT '' COMMENT '支付方式的官网',
  `payment_logo` varchar(255) DEFAULT '' COMMENT 'Logo图标',
  `currency_id` int(11) DEFAULT NULL COMMENT '货币',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='支付方式';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_payment_methods`
--

LOCK TABLES `sys_payment_methods` WRITE;
/*!40000 ALTER TABLE `sys_payment_methods` DISABLE KEYS */;
INSERT INTO `sys_payment_methods` VALUES (1,'支付方式名称',1,'支付方式的官网','paymentLogo/b0ee6af85849f6463b0b3b43f77d5b43.jpg',1,'','2018-07-18 14:50:27','',NULL),(2,'111',1,'333','paymentLogo/9882dce73d8aed7325c5b27be0b844c3.jpg',NULL,'','2018-07-18 16:12:07','',NULL),(3,'1',1,'支付方式的官网','paymentLogo/55637305af0b10e98b4d13560f6fa9fa.jpg',NULL,'','2018-07-18 16:27:15','',NULL),(4,'支付方式名称',1,'支付方式的官网','paymentLogo/eb78d5561fb82388b1b44390fb4a8207.jpg',NULL,'','2018-07-18 17:02:38','',NULL);
/*!40000 ALTER TABLE `sys_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_platform`
--

DROP TABLE IF EXISTS `sys_platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `platform_name` varchar(45) DEFAULT NULL COMMENT '平台名称',
  `platform_type_id` int(11) DEFAULT NULL COMMENT '关联平台类型',
  `official_website` varchar(255) DEFAULT NULL COMMENT '官方网站',
  `platform_logo` varchar(255) DEFAULT NULL COMMENT '平台logo',
  `inter_transaction` int(11) DEFAULT NULL,
  `kyc_type` int(11) DEFAULT NULL COMMENT 'KYC类型',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='平台';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_platform`
--

LOCK TABLES `sys_platform` WRITE;
/*!40000 ALTER TABLE `sys_platform` DISABLE KEYS */;
INSERT INTO `sys_platform` VALUES (1,'平台名称1',2,NULL,NULL,2,1,'','2018-07-18 19:38:09','',NULL),(2,NULL,NULL,NULL,NULL,3,2,'','2018-07-18 19:38:15','',NULL),(3,'平台名称3',NULL,NULL,'platform/b852c884c18a1fd82dbb944b3dbfeceb.jpg',1,4,'','2018-07-18 19:38:32','',NULL),(4,'平台名称4',2,'平台官方网站',NULL,2,3,'','2018-07-18 19:53:52','',NULL),(5,'平台名称5',3,'平台官方网站5','platform/c25f7b8097e80118c5d33b9632267c9c.jpg',1,3,'','2018-07-18 20:03:53','',NULL);
/*!40000 ALTER TABLE `sys_platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_platform_type`
--

DROP TABLE IF EXISTS `sys_platform_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_platform_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `platform_type_name` varchar(45) DEFAULT NULL COMMENT '平台类型名称',
  `platform_currency` varchar(45) DEFAULT NULL COMMENT '平台货币',
  `create_by` varchar(45) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_by` varchar(45) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='平台类型管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_platform_type`
--

LOCK TABLES `sys_platform_type` WRITE;
/*!40000 ALTER TABLE `sys_platform_type` DISABLE KEYS */;
INSERT INTO `sys_platform_type` VALUES (1,'平台类型名称1','货币1','','2018-07-18 18:59:02',NULL,NULL),(2,'平台类型名称2','货币2','','2018-07-18 18:59:09',NULL,NULL),(3,'平台类型名称3','货币3','','2018-07-18 19:04:17',NULL,NULL);
/*!40000 ALTER TABLE `sys_platform_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(2,'se','项目经理',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(3,'hr','人力资源',3,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00',''),(4,'user','普通员工',4,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'管理员','admin',1,'0','admin','2018-03-16 11:33:00','admin','2018-07-18 19:24:22','管理员'),(2,'普通角色','common',2,'0','admin','2018-03-16 11:33:00','ry','2018-03-16 11:33:00','普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,1),(1,2),(1,3),(1,4),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,500),(1,501),(1,1000),(1,1001),(1,1002),(1,1003),(1,1004),(1,1005),(1,1006),(1,1007),(1,1008),(1,1009),(1,1010),(1,1011),(1,1012),(1,1013),(1,1014),(1,1015),(1,1016),(1,1017),(1,1018),(1,1019),(1,1020),(1,1021),(1,1022),(1,1023),(1,1024),(1,1025),(1,1026),(1,1027),(1,1028),(1,1029),(1,1030),(1,1031),(1,1032),(1,1033),(1,1034),(1,1035),(1,1036),(1,1037),(1,1038),(1,1039),(1,1040),(1,1041),(1,1042),(1,1043),(1,1044),(1,1045),(1,1046),(1,1047),(1,1048),(1,1049),(1,1050),(1,1051),(1,1052),(1,1053),(1,1054),(1,1055),(1,1056),(1,2000),(1,2001),(1,2007),(1,2008),(1,2009),(1,2010),(1,2011),(1,2012),(1,2013),(1,2014),(1,2015),(1,2016),(1,2017),(1,2018),(1,2019),(1,2020),(1,2021),(1,2022),(1,2023),(1,2024),(1,2025),(1,2026),(1,2027),(1,2028),(1,2029),(1,2030),(1,2031),(1,2032),(1,2033),(1,2034),(1,2035),(1,2036),(1,2037),(1,2038),(1,2039),(1,2040),(1,2041),(1,2042),(1,2043),(1,2044),(1,2045),(1,2046),(1,2047),(1,2048),(1,2050),(1,2051),(1,2052),(1,2053),(1,2054),(1,2055),(1,2056),(1,2057),(1,2058),(1,2059),(1,2060),(1,2061),(1,2062),(1,2063),(1,2064),(1,2065),(1,2066),(1,2067),(1,2068),(1,2070),(1,2071),(1,2072),(1,2073),(1,2074),(1,2075),(1,2076),(1,2077),(1,2078),(1,2079),(1,2080),(1,2081),(1,2082),(1,2083);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(20) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,106,'admin','若依','00','ry@163.com','15888888888','1','','29c67a30398638269fe600f73a054934','111111','0','0','127.0.0.1','2018-07-18 20:08:59','admin','2018-03-16 11:33:00','ry','2018-07-18 20:08:59','管理员'),(2,108,'ry','若依','00','ry@qq.com','15666666666','1','','8e6d98b90472783cc73c17047ddccf36','222222','1','0','127.0.0.1','2018-03-16 11:33:00','admin','2018-03-16 11:33:00','admin','2018-07-16 19:13:10','测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_online`
--

DROP TABLE IF EXISTS `sys_user_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestsamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_online`
--

LOCK TABLES `sys_user_online` WRITE;
/*!40000 ALTER TABLE `sys_user_online` DISABLE KEYS */;
INSERT INTO `sys_user_online` VALUES ('9319e973-b710-453a-84f9-aea3de6a28e7','admin','研发一部','127.0.0.1','','Chrome','Windows 10','on_line','2018-07-18 20:08:58','2018-07-18 20:08:59',1800000);
/*!40000 ALTER TABLE `sys_user_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_post` (
  `user_id` varchar(64) NOT NULL COMMENT '用户ID',
  `post_id` varchar(64) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES ('1','1'),('2','2');
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ry'
--

--
-- Dumping routines for database 'ry'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-18 20:14:19
