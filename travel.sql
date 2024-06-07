/*
Navicat MySQL Data Transfer

Source Server         : OMEN
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-06-02 18:00:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '芜湖', '热情导游');
INSERT INTO `company` VALUES ('2', 'aibo冲冲冲', '沙雕导游');

-- ----------------------------
-- Table structure for itinerary
-- ----------------------------
DROP TABLE IF EXISTS `itinerary`;
CREATE TABLE `itinerary` (
  `itinerary_id` int(11) NOT NULL AUTO_INCREMENT,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `cost` float(10,0) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itinerary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of itinerary
-- ----------------------------
INSERT INTO `itinerary` VALUES ('1', '北京', '东京', '5000', '2021-05-30 09:00:00', '1');
INSERT INTO `itinerary` VALUES ('2', '上海', '内蒙古', '9000', '2021-06-10 10:00:00', '2');
INSERT INTO `itinerary` VALUES ('3', '三亚', '菲律宾', '10000', '2021-07-10 10:00:00', '2');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `itinerary_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  KEY `itinerary_id` (`itinerary_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `itinerary_id` FOREIGN KEY (`itinerary_id`) REFERENCES `itinerary` (`itinerary_id`),
  CONSTRAINT `team_id` FOREIGN KEY (`team_id`) REFERENCES `company` (`team_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('123', '1', '1', null);
INSERT INTO `order` VALUES ('5151', '2', '2', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'root', 'raisei', '11451411111', '男', '19');
INSERT INTO `user` VALUES ('2', 'dio', '12345', 'dio', '114514', '?', '100');
INSERT INTO `user` VALUES ('3', 'josuda', '12345', '乔斯哒', '431347', '男', '90');
INSERT INTO `user` VALUES ('4', 'raisei', 'root', '罗', '114514', '男', '20');
