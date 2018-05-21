/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : uneedzf_main_page

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-21 19:04:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `web_names`
-- ----------------------------
DROP TABLE IF EXISTS `web_names`;
CREATE TABLE `web_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webName` varchar(255) NOT NULL,
  `webIconSrc` varchar(255) NOT NULL,
  `webSrc` text NOT NULL,
  `tapName` int(11) NOT NULL DEFAULT '0',
  `webType` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `类型` (`webType`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_names
-- ----------------------------
INSERT INTO `web_names` VALUES ('1', '百度', 'https:////www.baidu.com/img/baidu_jgylogo3.gif', 'https://www.baidu.com', '0', '1');

-- ----------------------------
-- Table structure for `web_types`
-- ----------------------------
DROP TABLE IF EXISTS `web_types`;
CREATE TABLE `web_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of web_types
-- ----------------------------
INSERT INTO `web_types` VALUES ('1', '搜索');
INSERT INTO `web_types` VALUES ('2', '动漫');
