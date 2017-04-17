/*
Navicat MySQL Data Transfer

Source Server         : fiveTeamProject
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-15 14:35:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(255) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_old_price` decimal(10,2) DEFAULT NULL,
  `goods_discount` varchar(255) DEFAULT NULL,
  `goods_message` varchar(255) DEFAULT NULL,
  `goods_img_src` varchar(255) DEFAULT NULL,
  `goods_type` varchar(255) DEFAULT NULL,
  `goods_remarks` varchar(255) DEFAULT '',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10013 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10001', '春日食鲜', null, null, null, null, 'images/zm001.jpeg', 'zm_groups', 'zm');
INSERT INTO `goods` VALUES ('10002', '春游踏青', null, null, null, null, 'images/zm002.jpeg', 'zm_spring', 'zm');
INSERT INTO `goods` VALUES ('10003', '燕之坊', null, null, null, null, 'images/zm003.jpeg', 'zm_yanzhifang', 'zm');
INSERT INTO `goods` VALUES ('10004', '美味小鲜肉', null, null, null, null, 'images/zm004.jpeg', 'zm_meat', 'zm');
INSERT INTO `goods` VALUES ('10005', '大厨妙当家', null, null, null, null, 'images/zm005.jpeg', 'zm_chef', 'zm');
INSERT INTO `goods` VALUES ('10006', '不负春光 食在当季', null, null, null, null, 'images/zm006.jpeg', 'zm_time', 'zm');
INSERT INTO `goods` VALUES ('10007', '美味留恋于唇齿', null, null, null, null, 'images/zm007.jpeg', 'zm_ganlan', 'zm');
INSERT INTO `goods` VALUES ('10008', '美味曼可顿面包', null, null, null, null, 'images/zm008.jpeg', 'zm_bread', 'zm');
INSERT INTO `goods` VALUES ('10009', '“鱼”悦你的味蕾', null, null, null, null, 'images/zm009.jpeg', 'zm_fish', 'zm');
INSERT INTO `goods` VALUES ('10010', '爱上牛排 吃定牛排', null, null, null, null, 'images/zm0010.jpeg', 'zm_cattle', 'zm');
INSERT INTO `goods` VALUES ('10011', '南北干货 品质如一', null, null, null, null, 'images/zm0011.jpeg', 'zm_ganhuo', 'zm');
INSERT INTO `goods` VALUES ('10012', '舌尖上的五谷杂粮', null, null, null, null, 'images/zm0012.jpeg', 'zm_five', 'zm');
