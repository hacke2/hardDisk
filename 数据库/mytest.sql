/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : mytest

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2012-08-27 11:39:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminName` varchar(16) NOT NULL,
  `adminPassword` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`adminName`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin888');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userName` varchar(16) NOT NULL,
  `userPassword` varchar(16) DEFAULT NULL,
  `id` int(16) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('aaa', 'aaa', '1');
INSERT INTO `userinfo` VALUES ('sss', 'das21da3s1d', '3');
INSERT INTO `userinfo` VALUES ('苏沁', 'ads', '7');
INSERT INTO `userinfo` VALUES ('苏沁1', '123', '10');
INSERT INTO `userinfo` VALUES ('zzz', 'zzz', '11');
