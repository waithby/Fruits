/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-19 16:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fruit_info
-- ----------------------------
DROP TABLE IF EXISTS `fruit_info`;
CREATE TABLE `fruit_info` (
  `fruit_type` varchar(255) NOT NULL,
  `fruit_oldprice` varchar(11) NOT NULL,
  `fruit_newprice` varchar(11) DEFAULT NULL,
  `fruit_orign` varchar(255) DEFAULT NULL,
  `user_review` varchar(11) DEFAULT NULL,
  `user_satisfacy` varchar(255) DEFAULT NULL,
  `fruit_ids` int(11) NOT NULL AUTO_INCREMENT,
  `fruit_imgs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fruit_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=80011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fruit_info
-- ----------------------------
INSERT INTO `fruit_info` VALUES ('如意金瓜2个1kg以上/个', '79.00', '49.00', '海南', '1', '98%', '60001', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('八爪足300g/包', '13.9', '12.9', '上海', '2', '100%', '80001', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('熟冻智利蓝口贝肉（...', '60.00', '58.00', '智利', '1', '100%', '80002', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('必乐鲜冷冻南美白对...', '16.50', '16.50', '南美', '2', '95%', '80003', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('日月贝肉（瑶柱）5...', '43.00', '42.00', '台湾', '2', '98%', '80004', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('必乐鲜冷冻虾仁加西...', '25.90', '25.90', '新西兰', '3', '98%', '80005', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('冻贻贝（葡萄酒味）...', '26.50', '25.00', '新西兰', '1', '100%', '80006', 'images/dh001.jpg');
INSERT INTO `fruit_info` VALUES ('新奇士美国晚季脐橙12个160g以上/个(GD)', '82.9/12个', '82.9、10个', '美国', '1', '90%', '80007', null);
INSERT INTO `fruit_info` VALUES ('智利无籽红提1kg(GD)', '66.5', '63.5', '智利', '1', '95%', '80008', null);
INSERT INTO `fruit_info` VALUES ('福建云霄枇杷2盒(约500g/盒)(GD)', '69.00', '66.00', '福建', '1', '98%', '80009', null);
INSERT INTO `fruit_info` VALUES ('越南红心火龙果2.5kg(大果)约450g/个(GD)', '99.00', null, '越南', '46', '98%', '80010', null);
