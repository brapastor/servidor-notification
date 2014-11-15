/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : gcm

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2014-11-15 15:55:28
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gcm_users
-- ----------------------------
INSERT INTO `gcm_users` VALUES ('2', 'APA91bHQW-jzXaTSYTsl0QpH_aOL3XdYqq0QFSWs0s7eVJJ6_wOXzgw49DH8edDvxbMZwuSZphvTNZ-LCDbA5Qj9iMKu4hEfvw479MEju2h1RvrZ3EMW2HrhdrruK92wBOJZ0ndAbdkro483Jksk_uIqSnd-eM8iiCSo8a-XuxtWIBLkC5K_Nwk', 'Creck Brayan Mauri Pastor Paredes', 'brayansr007@gmail.com', '2014-11-09 20:18:16');

-- ----------------------------
-- Table structure for `noticias`
-- ----------------------------
DROP TABLE IF EXISTS `noticias`;
CREATE TABLE `noticias` (
  `id_noticia` int(250) NOT NULL AUTO_INCREMENT,
  `id_tiponoticia` int(11) DEFAULT NULL,
  `url_image` text,
  `titulo` varchar(250) DEFAULT NULL,
  `descripcion` text,
  `vote_positive` int(7) DEFAULT NULL,
  `vote_negative` int(7) DEFAULT NULL,
  `favorito` char(1) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_noticia`),
  KEY `fk_tiponoticia` (`id_tiponoticia`),
  CONSTRAINT `fk_tiponoticia` FOREIGN KEY (`id_tiponoticia`) REFERENCES `tipo_noticia` (`id_tiponoticia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticias
-- ----------------------------
INSERT INTO `noticias` VALUES ('3', '2', 'http://farm7.staticflickr.com/6101/6853156632_6374976d38_c.jpg', 'Curso de Diseño centrado en el usuario UX', 'sabe esta ', '1', '34', '1', '2014-10-29 00:00:00');
INSERT INTO `noticias` VALUES ('4', '3', 'http://192.168.1.38/notfis/public/assets/img/fisi1.jpg', 'Curso de Diseño centrado en el usuario UX', 'aaaaa', '1', '45', '1', '2014-11-07 00:00:00');
INSERT INTO `noticias` VALUES ('23', '1', null, '', '', null, null, null, '2014-11-15 15:47:26');
INSERT INTO `noticias` VALUES ('24', '1', null, '', '', null, null, null, '2014-11-15 15:47:34');

-- ----------------------------
-- Table structure for `tipo_noticia`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_noticia`;
CREATE TABLE `tipo_noticia` (
  `id_tiponoticia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_tiponoticia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_noticia
-- ----------------------------
INSERT INTO `tipo_noticia` VALUES ('1', 'Eveto');
INSERT INTO `tipo_noticia` VALUES ('2', 'Curso');
INSERT INTO `tipo_noticia` VALUES ('3', 'Taller');
