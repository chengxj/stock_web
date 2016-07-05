/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : stock

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2016-05-22 23:41:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activities`
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `type_enum` varchar(128) NOT NULL,
  `scenic_spots` varchar(128) NOT NULL,
  `departure` varchar(128) NOT NULL,
  `destination` varchar(128) NOT NULL,
  `leader` varchar(128) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('1', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('2', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);
INSERT INTO `activities` VALUES ('3', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('4', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);
INSERT INTO `activities` VALUES ('5', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('6', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);
INSERT INTO `activities` VALUES ('7', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('8', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);
INSERT INTO `activities` VALUES ('9', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('10', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);
INSERT INTO `activities` VALUES ('11', '东大高', 'CYCLING', '', '清河', '东方红、大村、高崖口', '萝卜', null, null);
INSERT INTO `activities` VALUES ('12', '花海', 'MOUNTAIN', '', '安慧桥', '珍珠泉', '黑猫', null, null);

-- ----------------------------
-- Table structure for `assets`
-- ----------------------------
DROP TABLE IF EXISTS `assets`;
CREATE TABLE `assets` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(20) DEFAULT NULL,
  `category` int(20) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `factory_num` varchar(255) DEFAULT NULL,
  `factory_date` date DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `cost` int(20) DEFAULT NULL,
  `quantity` int(20) NOT NULL,
  `stock_quantity` int(20) NOT NULL,
  `performance_indices` longtext,
  `additional_product` longtext,
  `platform` longtext,
  `manager` varchar(255) DEFAULT NULL,
  `recipients` varchar(255) DEFAULT NULL,
  `requisitioners` varchar(255) DEFAULT NULL,
  `custodian` varchar(255) DEFAULT NULL,
  `description` longtext,
  `available` bit(1) NOT NULL,
  `record_date` date DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_time` date NOT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets
-- ----------------------------

-- ----------------------------
-- Table structure for `assets_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `assets_attachment`;
CREATE TABLE `assets_attachment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `assets_id` int(20) NOT NULL,
  `num` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(40) NOT NULL,
  `url` varchar(255) NOT NULL,
  `create_user` varchar(255) NOT NULL,
  `create_time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `assets_category`
-- ----------------------------
DROP TABLE IF EXISTS `assets_category`;
CREATE TABLE `assets_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_category
-- ----------------------------
INSERT INTO `assets_category` VALUES ('1', 'A', '探头', null, '');
INSERT INTO `assets_category` VALUES ('2', 'B', '特殊仪器', null, '');
INSERT INTO `assets_category` VALUES ('3', 'C', '示波器', null, '');
INSERT INTO `assets_category` VALUES ('4', 'D', '检测仪器', null, '');

-- ----------------------------
-- Table structure for `assets_type`
-- ----------------------------
DROP TABLE IF EXISTS `assets_type`;
CREATE TABLE `assets_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assets_type
-- ----------------------------
INSERT INTO `assets_type` VALUES ('1', 'A', '设备', null, '');
INSERT INTO `assets_type` VALUES ('2', 'B', '低值易耗品', null, '');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `oper_time` date NOT NULL,
  `project` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `remark` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `pageurl` varchar(255) DEFAULT NULL,
  `type` int(10) NOT NULL,
  `sort` int(10) NOT NULL,
  `icon` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_permission_permission` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for `registration`
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activities_id` bigint(20) NOT NULL,
  `name` varchar(128) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `real_name` varchar(128) NOT NULL,
  `contact_way` varchar(128) NOT NULL,
  `emergency_contact` varchar(128) NOT NULL,
  `emergency_contact_way` varchar(128) NOT NULL,
  `num` int(11) NOT NULL,
  `equipment_experience_remarks` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES ('1', '1', '1', 'MAN', '1', '123132', '1', '1', '1', '1');
INSERT INTO `registration` VALUES ('2', '2', '2', 'MAN', '2', '2', '2', '2', '2', '2');
INSERT INTO `registration` VALUES ('3', '12', '1', 'MAN', '1', '1', '1', '1', '1', '1');
INSERT INTO `registration` VALUES ('4', '12', '2', 'MAN', '2', '2', '2', '2', '2', '2');
INSERT INTO `registration` VALUES ('5', '12', '3', 'MAN', '3', '3', '3', '3', '3', '3');
INSERT INTO `registration` VALUES ('7', '1', '2', 'MAN', '2', '2', '2', '13213', '2', '2');
INSERT INTO `registration` VALUES ('9', '1', '1231', 'MAN', '123', '123', '123', '132', '132', '132');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_role_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'normal', '1', '');
INSERT INTO `role` VALUES ('2', 'add', '2', '');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `permission_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL,
  `team` varchar(100) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `available` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '软件工程部', '0', null, '');
INSERT INTO `team` VALUES ('2', '系统集成部', '0', null, '');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `locked` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', '测试', 'c4ca4238a0b923820dcc509a6f75849b', '123', '0');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '2');

-- ----------------------------
-- Table structure for `user_team`
-- ----------------------------
DROP TABLE IF EXISTS `user_team`;
CREATE TABLE `user_team` (
  `user_id` bigint(20) NOT NULL,
  `team_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_team
-- ----------------------------
INSERT INTO `user_team` VALUES ('1', '1');
