/*
Navicat MySQL Data Transfer

Source Server         : grafana
Source Server Version : 50568
Source Host           : 192.168.198.145:3306
Source Database       : grafana_template

Target Server Type    : MYSQL
Target Server Version : 50568
File Encoding         : 65001

Date: 2021-11-04 19:12:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hosts_number`
-- ----------------------------
DROP TABLE IF EXISTS `hosts_number`;
CREATE TABLE `hosts_number` (
  `name` varchar(30) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hosts_number
-- ----------------------------
INSERT INTO `hosts_number` VALUES ('complete_number', '210');
INSERT INTO `hosts_number` VALUES ('uncomplete_number', '0');

-- ----------------------------
-- Table structure for `number_of_accounts_scanned`
-- ----------------------------
DROP TABLE IF EXISTS `number_of_accounts_scanned`;
CREATE TABLE `number_of_accounts_scanned` (
  `name` varchar(50) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of number_of_accounts_scanned
-- ----------------------------
INSERT INTO `number_of_accounts_scanned` VALUES ('number_of_accounts_scanned_by_John', '80');
INSERT INTO `number_of_accounts_scanned` VALUES ('number_of_accounts_scanned_by_BurpSuite', '160');

-- ----------------------------
-- Table structure for `number_of_application_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `number_of_application_accounts`;
CREATE TABLE `number_of_application_accounts` (
  `name` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of number_of_application_accounts
-- ----------------------------
INSERT INTO `number_of_application_accounts` VALUES ('grafana', '209');
INSERT INTO `number_of_application_accounts` VALUES ('zabbix', '208');
INSERT INTO `number_of_application_accounts` VALUES ('gitlab', '207');
INSERT INTO `number_of_application_accounts` VALUES ('zentao', '206');
INSERT INTO `number_of_application_accounts` VALUES ('leecode', '205');
INSERT INTO `number_of_application_accounts` VALUES ('mysql', '204');
INSERT INTO `number_of_application_accounts` VALUES ('mariadb', '203');
INSERT INTO `number_of_application_accounts` VALUES ('oracle', '202');
INSERT INTO `number_of_application_accounts` VALUES ('confluence', '200');
INSERT INTO `number_of_application_accounts` VALUES ('django', '199');

-- ----------------------------
-- Table structure for `program_page_login_failed_times`
-- ----------------------------
DROP TABLE IF EXISTS `program_page_login_failed_times`;
CREATE TABLE `program_page_login_failed_times` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attempt_failed` int(11) NOT NULL DEFAULT '0',
  `attempt_ip` varchar(39) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_clock` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of program_page_login_failed_times
-- ----------------------------
INSERT INTO `program_page_login_failed_times` VALUES ('1', '17', '192.168.1.2', '1635696000');
INSERT INTO `program_page_login_failed_times` VALUES ('2', '0', '', '0');
INSERT INTO `program_page_login_failed_times` VALUES ('3', '34', '192.168.1.33', '1635782400');
INSERT INTO `program_page_login_failed_times` VALUES ('4', '0', '', '0');
INSERT INTO `program_page_login_failed_times` VALUES ('5', '50', '192.168.1.77', '1635868800');
INSERT INTO `program_page_login_failed_times` VALUES ('6', '90', '10.1.1.22', '1635868800');
INSERT INTO `program_page_login_failed_times` VALUES ('7', '43', '10.1.1.66', '1635782400');
INSERT INTO `program_page_login_failed_times` VALUES ('8', '95', '10.1.1.211', '1635696000');

-- ----------------------------
-- Table structure for `program_user_roles`
-- ----------------------------
DROP TABLE IF EXISTS `program_user_roles`;
CREATE TABLE `program_user_roles` (
  `name` varchar(30) DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of program_user_roles
-- ----------------------------
INSERT INTO `program_user_roles` VALUES ('Admin_roles', '7');
INSERT INTO `program_user_roles` VALUES ('Super_admin_role', '10');
INSERT INTO `program_user_roles` VALUES ('User_role', '143');

-- ----------------------------
-- Table structure for `program_username_classification`
-- ----------------------------
DROP TABLE IF EXISTS `program_username_classification`;
CREATE TABLE `program_username_classification` (
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of program_username_classification
-- ----------------------------
INSERT INTO `program_username_classification` VALUES ('前端', '18');
INSERT INTO `program_username_classification` VALUES ('后端', '12');
INSERT INTO `program_username_classification` VALUES ('运维', '10');
INSERT INTO `program_username_classification` VALUES ('测试', '9');
INSERT INTO `program_username_classification` VALUES ('IOS', '9');
INSERT INTO `program_username_classification` VALUES ('安卓', '10');
INSERT INTO `program_username_classification` VALUES ('产品', '7');

-- ----------------------------
-- Table structure for `scan_result`
-- ----------------------------
DROP TABLE IF EXISTS `scan_result`;
CREATE TABLE `scan_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `current_scan_time` int(11) DEFAULT NULL,
  `next_scan_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scan_result
-- ----------------------------
INSERT INTO `scan_result` VALUES ('1', '本次扫描未发现弱密码', '1634659200', '1642608000');

-- ----------------------------
-- Table structure for `system_password_last_modified`
-- ----------------------------
DROP TABLE IF EXISTS `system_password_last_modified`;
CREATE TABLE `system_password_last_modified` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` int(11) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of system_password_last_modified
-- ----------------------------
INSERT INTO `system_password_last_modified` VALUES ('1', '1621476800', '45');
INSERT INTO `system_password_last_modified` VALUES ('2', '1612406400', '37');
INSERT INTO `system_password_last_modified` VALUES ('3', '1589190400', '18');
INSERT INTO `system_password_last_modified` VALUES ('4', '1578649600', '9');
INSERT INTO `system_password_last_modified` VALUES ('5', '1580742400', '5');
INSERT INTO `system_password_last_modified` VALUES ('6', '1578732800', '4');
INSERT INTO `system_password_last_modified` VALUES ('7', '1611808000', '3');
INSERT INTO `system_password_last_modified` VALUES ('8', '1628738400', '7');
INSERT INTO `system_password_last_modified` VALUES ('9', '1618486000', '6');
INSERT INTO `system_password_last_modified` VALUES ('10', '1610975600', '15');
INSERT INTO `system_password_last_modified` VALUES ('11', '1609848800', '21');
INSERT INTO `system_password_last_modified` VALUES ('12', '1561318400', '28');
