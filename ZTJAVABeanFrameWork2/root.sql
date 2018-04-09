/*
Navicat MySQL Data Transfer

Source Server         : root2
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : root

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-03 11:02:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(12) NOT NULL,
  `password` varchar(13) NOT NULL,
  `age` varchar(5) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('popo', '123', '13', '', '1');
INSERT INTO `users` VALUES ('root', 'root', null, null, null);
