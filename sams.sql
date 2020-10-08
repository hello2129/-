/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : sams

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-07-27 15:21:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminNum` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`adminNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `stuNum` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `C` int(11) DEFAULT NULL,
  `Java` int(11) DEFAULT NULL,
  `Python` int(11) DEFAULT NULL,
  `操作系统` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuNum`),
  CONSTRAINT `stuNum` FOREIGN KEY (`stuNum`) REFERENCES `stu` (`stuNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------

-- ----------------------------
-- Table structure for stu
-- ----------------------------
DROP TABLE IF EXISTS `stu`;
CREATE TABLE `stu` (
  `stuNum` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `class` varchar(20) NOT NULL,
  PRIMARY KEY (`stuNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `empNum` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `college` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`empNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
