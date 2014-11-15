/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : gcm

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-08-08 01:45:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gcm_users`
-- ----------------------------
DROP TABLE IF EXISTS `gcm_users`;
CREATE TABLE `gcm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcm_regid` text,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gcm_users
-- ----------------------------
INSERT INTO `gcm_users` VALUES ('1', 'APA91bG6cXry0rc6NQjWlSXJMqQZFX0VV0TyT-6E99H6EN-kgN1A7PaIfaRbNltZzQnLWrMs9czCEP8FXNoJ2k197ODl-UFKaRvpmP7YpP8K6-D8G8FTRwE1wCqy2dPVE0JwJWao2_NIp1nbFdUMmbyqi9uHPqLZPt1T-dCQK5etbuhApz_3QMcEUgnFU90y1EinpvsyHid2', 'dd', 'sdd', '2014-08-08 01:39:18');
