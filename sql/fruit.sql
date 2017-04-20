/*
Navicat MySQL Data Transfer

Source Server         : fiveTeamProject
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-04-20 13:30:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fruit_info
-- ----------------------------
DROP TABLE IF EXISTS `fruit_info`;
CREATE TABLE `fruit_info` (
  `fruit_title` varchar(255) DEFAULT NULL,
  `fruit_type` varchar(255) NOT NULL,
  `fruit_oldprice` varchar(11) NOT NULL,
  `fruit_newprice` varchar(11) DEFAULT NULL,
  `fruit_orign` varchar(255) DEFAULT NULL,
  `user_review` varchar(11) DEFAULT NULL,
  `user_satisfacy` varchar(255) DEFAULT NULL,
  `fruit_ids` int(11) NOT NULL AUTO_INCREMENT,
  `fruit_imgs` varchar(255) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fruit_ids`)
) ENGINE=InnoDB AUTO_INCREMENT=80011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fruit_info
-- ----------------------------
INSERT INTO `fruit_info` VALUES ('如意金瓜', '如意金瓜2个1kg以上/个', '79.00', '49.00', '海南', '1', '98%', '60001', 'images/xiuxian/xx001.jpeg', '10001');
INSERT INTO `fruit_info` VALUES ('八爪', '八爪足300g/包', '13.9', '12.9', '上海', '2', '100%', '80001', 'images/xiuxian/xx002.jpeg', '10001');
INSERT INTO `fruit_info` VALUES ('熟冻智利蓝口贝肉', '熟冻智利蓝口贝肉（...', '60.00', '58.00', '智利', '1', '100%', '80002', 'images/xiuxian/xx003.jpeg', '10001');
INSERT INTO `fruit_info` VALUES ('必乐鲜冷冻南美白对', '必乐鲜冷冻南美白对...', '16.50', '16.50', '南美', '2', '95%', '80003', 'images/xiuxian/xx004.jpeg', '10001');
INSERT INTO `fruit_info` VALUES ('日月贝肉（瑶柱）', '日月贝肉（瑶柱）5...', '43.00', '42.00', '台湾', '2', '98%', '80004', 'images/xiuxian/xx005.jpeg', '10002');
INSERT INTO `fruit_info` VALUES ('必乐鲜冷冻虾仁加西', '必乐鲜冷冻虾仁加西...', '25.90', '25.90', '新西兰', '3', '98%', '80005', 'images/xiuxian/xx006.jpeg', '10002');
INSERT INTO `fruit_info` VALUES ('冻贻贝（葡萄酒味）', '冻贻贝（葡萄酒味）...', '26.50', '25.00', '新西兰', '1', '100%', '80006', 'images/xiuxian/xx007.jpeg', '10002');
INSERT INTO `fruit_info` VALUES ('新奇士美国晚季脐橙', '新奇士美国晚季脐橙12个160g以上/个(GD)', '82.9/12个', '82.9、10个', '美国', '1', '90%', '80007', 'images/xiuxian/xx008.jpeg', '10002');
INSERT INTO `fruit_info` VALUES ('智利无籽红提', '智利无籽红提1kg(GD)', '66.5', '63.5', '智利', '1', '95%', '80008', 'images/xiuxian/xx009.jpeg', '10003');
INSERT INTO `fruit_info` VALUES ('福建云霄枇杷', '福建云霄枇杷2盒(约500g/盒)(GD)', '69.00', '66.00', '福建', '1', '98%', '80009', 'images/xiuxian/xx0010.jpeg', '10003');
INSERT INTO `fruit_info` VALUES ('越南红心火龙果', '越南红心火龙果2.5kg(大果)约450g/个(GD)', '99.00', null, '越南', '46', '98%', '80010', 'images/xiuxian/xx0011.jpeg', '10003');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(255) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_old_price` varchar(255) DEFAULT NULL,
  `goods_discount` varchar(255) DEFAULT NULL,
  `goods_message` varchar(255) DEFAULT NULL,
  `goods_img_src` varchar(255) DEFAULT NULL,
  `goods_type` varchar(255) DEFAULT NULL,
  `goods_remarks` varchar(255) DEFAULT '',
  `goods_old_img` varchar(255) DEFAULT NULL,
  `goods_new_img` varchar(255) DEFAULT NULL,
  `goods_dis_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10001', '春日食鲜', null, null, null, null, 'images/zm001.jpeg', 'zm_groups', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10002', '春游踏青', null, null, null, null, 'images/zm002.jpeg', 'zm_spring', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10003', '燕之坊', null, null, null, null, 'images/zm003.jpeg', 'zm_yanzhifang', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10004', '美味小鲜肉', null, null, null, null, 'images/zm004.jpeg', 'zm_meat', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10005', '大厨妙当家', null, null, null, null, 'images/zm005.jpeg', 'zm_chef', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10006', '不负春光 食在当季', null, null, null, null, 'images/zm006.jpeg', 'zm_time', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10007', '美味留恋于唇齿', null, null, null, null, 'images/zm007.jpeg', 'zm_ganlan', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10008', '美味曼可顿面包', null, null, null, null, 'images/zm008.jpeg', 'zm_bread', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10009', '“鱼”悦你的味蕾', null, null, null, null, 'images/zm009.jpeg', 'zm_fish', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10010', '爱上牛排 吃定牛排', null, null, null, null, 'images/zm0010.jpeg', 'zm_cattle', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10011', '南北干货 品质如一', null, null, null, null, 'images/zm0011.jpeg', 'zm_ganhuo', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('10012', '舌尖上的五谷杂粮', null, null, null, null, 'images/zm0012.jpeg', 'zm_five', 'zm', null, null, null);
INSERT INTO `goods` VALUES ('80001', '[加工蔬菜,新鲜蔬菜,豆制品,有机蔬菜]', '[有机蔬菜]', '[豆腐,半干豆制品,面筋斗品,即食豆制品,豆奶类]', '[精品蔬菜,叶菜类,根茎类,茄果类,鲜菌菇类]', '[方便净菜,蔬菜沙拉,冷冻蔬果]', '[\\\"../../../images/veb1.png\\\",\\\"../../../images/veb16.jpeg\\\",\\\"../../../images/veb3.png\\\"]', 'veb', 'tw', '[\\\"../../../images/nai14.jpeg\\\",\\\"../../../images/liang(5).jpeg\\\",\\\"../../../images/veb10.png\\\",\\\"../../../images/veb14.png\\\",\\\"../../../images/veb15.png\\\"]', '[\\\"../../../images/veb11.png\\\"]', '[\\\"../../../images/veb8.png\\\",\\\"../../../images/veb3.png\\\",\\\"../../../images/veb10.png\\\",\\\"../../../images/veb4.png\\\",\\\"../../../images/veb6.png\\\"]');
INSERT INTO `goods` VALUES ('80002', '[国产水果,进口水果,水果礼盒]', null, '[水果礼盒]', '[进口水果,火龙果,奇异果]', '[国产水果,苹果类,柑橘类,猕猴桃,梨,芒果]', '[\\\"../../../images/f10.jpeg\\\",\\\"../../../images/f2.jpeg\\\",\\\"../../../images/f3.jpeg\\\",\\\"../../../images/f6.jpeg\\\",\\\"../../../images/f7.jpeg\\\",\\\"../../../images/f8.jpeg\\\"]', 'fruit', 'tw', '[\\\"../../../images/m17.png\\\"]', '', '[\\\"../../../images/f9.jpeg\\\",\\\"../../../images/f4.jpeg\\\",\\\"../../../images/f5.jpeg\\\"]');
INSERT INTO `goods` VALUES ('80003', '[猪肉,牛羊肉,家禽蛋品,腌制卤味]', '[腌肉腊肉,香肠火腿,西式餐肉]', '[整只家禽,冻品禽肉,冰鲜禽肉,新鲜鸡蛋,鸭蛋鸭血,腌制蛋品]', '[冷鲜牛肉,安多牛肉,进口牛肉,原切牛排,羊肉]', '[中粮猪肉,徐溪猪肉,艾森猪肉,膳博士]', '[\\\"../../../images/m11.png\\\",\\\"../../../images/m16.png\\\",\\\"../../../images/m15.png\\\",\\\"../../../images/m14.png\\\"]', 'egg', 'tw', '[\\\"../../../images/m1.png\\\",\\\"../../../images/m8.png\\\",\\\"../../../images/m9.png\\\",\\\"../../../images/m2.png\\\",\\\"../../../images/m3.png\\\",\\\"../../../images/m4.png\\\"]', '[\\\"../../../images/m11.png\\\",\\\"../../../images/m16.png\\\",\\\"../../../images/m15.png\\\",\\\"../../../images/m14.png\\\"]', '[\\\"../../../images/m5.png\\\",\\\"../../../images/m6.png\\\",\\\"../../../images/m7.png\\\"]');
INSERT INTO `goods` VALUES ('80004', '[鱼类, 虾类,其他海鲜]', null, '[海蟹,扇贝,紫菜]', '[虾仁,进口大虾,阿根廷红虾,龙虾,其他虾类]', '[淡水鱼,带鱼,黄花鱼,鲳鱼,三文鱼,鳕鱼,秋刀鱼,鳗鱼,太湖白鱼]', '[\\\"../../../images/s1(1).png\\\",\\\"../../../images/s1(1).jpeg\\\",\\\"../../../images/s1(2).jpeg\\\",\\\"../../../images/s1(4).jpeg\\\",\\\"../../../images/s1(6).jpeg\\\",\\\"../../../images/s1(5).jpeg\\\",\\\"../../../images/s1(9).jpeg\\\",\\\"../../../images/s1(2).png\\\"]', 'seafood', 'tw', '[\\\"../../../images/s1(16).jpeg\\\",\\\"../../../images/s1(3).png\\\",\\\"../../../images/s1(17).png\\\"]', null, '[\\\"../../../images/s1(11).jpeg\\\",\\\"../../../images/s1(15).jpeg\\\",\\\"../../../images/s1(12).jpeg\\\",\\\"../../../images/s1(13).jpeg\\\",\\\"../../../images/s1(14).jpeg\\\"]');
INSERT INTO `goods` VALUES ('80005', '[速冻面食,特色推荐,方便速食]', null, '[悠觅熟食,方便菜,果冻]', '[热销榜,萌宝最爱,养生粗粮,甜品烘培,烧烤西点,日韩料理]', '[包子馒头,速冻面食,汤圆,水饺,混沌]', '[\\\"../../../images/dong(8).jpeg\\\",\\\"../../../images/dong(9).jpeg\\\",\\\"../../../images/dong2.png\\\",\\\"../../../images/dong(12).jpeg\\\",\\\"../../../images/dong(13).jpeg\\\"]', 'cool', 'tw', '[\\\"../../../images/dong(1).jpeg\\\",\\\"../../../images/dong2.jpeg\\\",\\\"../../../images/dong(11).jpeg\\\"]', null, '[\\\"../../../images/dong(8).jpeg\\\",\\\"../../../images/dong(11).jpeg\\\",\\\"../../../images/dong(2).jpeg\\\",\\\"../../../images/dong(3).jpeg\\\",\\\"../../../images/dong(4).jpeg\\\",\\\"../../../images/dong(14).jpeg\\\",\\\"../../../images/dong(5).jpeg\\\"]');
INSERT INTO `goods` VALUES ('90001', '舌尖上的五谷杂粮', null, null, null, 'banner1', './src/components/main/img/banner1.jpg', null, '', null, null, null);
INSERT INTO `goods` VALUES ('90002', null, null, null, null, 'banner2', './src/components/main/img/banner2.jpg', null, '', null, null, null);
INSERT INTO `goods` VALUES ('90003', '', null, null, '', 'banner3', './src/components/main/img/banner3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90004', '', null, null, '', 'banner4', './src/components/main/img/banner4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90005', '', null, null, '', 'banner5', './src/components/main/img/banner5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90006', '', null, null, '', 'banner6', './src/components/main/img/banner6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90007', '', null, null, '', 'banner7', './src/components/main/img/banner7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90008', '', null, null, '', 'banner8', './src/components/main/img/banner8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90009', '', null, null, '', 'banner9', './src/components/main/img/banner9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90010', '', null, null, '', 'banner10', './src/components/main/img/banner10.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90011', '', null, null, '', 'banner11', './src/components/main/img/banner11.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90012', '', null, null, '', 'banner12', './src/components/main/img/banner12.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90013', '', null, null, '', 'banner13', './src/components/main/img/banner13.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90014', '', null, null, '', 'banner14', './src/components/main/img/banner14.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90015', '', null, null, '', 'banner15', './src/components/main/img/banner15.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90016', '', null, null, '', 'banner16', './src/components/main/img/banner16.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90017', '', null, null, '', 'banner17', './src/components/main/img/banner17.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90018', '', null, null, '', 'banner18', './src/components/main/img/banner18.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90019', '', null, null, '', 'banner19', './src/components/main/img/banner19.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90020', '', null, null, '', 'banner20', './src/components/main/img/banner20.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90021', '', null, null, '', 'banner21', './src/components/main/img/banner21.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90022', '', null, null, '', 'banner22', './src/components/main/img/banner22.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90023', '', null, null, '', 'banner23', './src/components/main/img/banner23.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90024', '', null, null, '', 'banner24', './src/components/main/img/banner24.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90025', '', null, null, '', 'banner25', './src/components/main/img/banner25.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90026', '', null, null, '', 'list1_1', './src/components/main/img/list1_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90027', '', null, null, '', 'list1_2', './src/components/main/img/list1_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90028', '', null, null, '', 'list1_3', './src/components/main/img/list1_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90029', '', null, null, '', 'list1_4', './src/components/main/img/list1_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90030', '', null, null, '', 'list1_5', './src/components/main/img/list1_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90031', '', null, null, '', 'list1_6', './src/components/main/img/list1_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90032', '', null, null, '', 'list1_7', './src/components/main/img/list1_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90033', '', null, null, '', 'list1_8', './src/components/main/img/list1_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90034', '', null, null, '', 'list1_9', './src/components/main/img/list1_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90035', '', null, null, '', 'list1_10', './src/components/main/img/list1_10.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90036', '', null, null, '', 'list1_11', './src/components/main/img/list1_11.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90037', '', null, null, '', 'list1_12', './src/components/main/img/list1_12.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90038', '', null, null, '', 'list1_13', './src/components/main/img/list1_13.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90039', '', null, null, '', 'list1_14', './src/components/main/img/list1_14.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90040', '', null, null, '', 'list1_15', './src/components/main/img/list1_15.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90041', '', null, null, '', 'list2_1', './src/components/main/img/list2_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90042', '', null, null, '', 'list2_2', './src/components/main/img/list2_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90043', '', null, null, '', 'list2_3', './src/components/main/img/list2_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90044', '', null, null, '', 'list2_4', './src/components/main/img/list2_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90045', '', null, null, '', 'list2_5', './src/components/main/img/list2_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90046', '', null, null, '', 'list2_6', './src/components/main/img/list2_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90047', '', null, null, '', 'list2_7', './src/components/main/img/list2_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90048', '', null, null, '', 'list2_8', './src/components/main/img/list2_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90049', '', null, null, '', 'list2_9', './src/components/main/img/list2_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90050', '', null, null, '', 'list3_1', './src/components/main/img/list3_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90051', '', null, null, '', 'list3_2', './src/components/main/img/list3_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90052', '', null, null, '', 'list3_3', './src/components/main/img/list3_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90053', '', null, null, '', 'list3_4', './src/components/main/img/list3_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90054', '', null, null, '', 'list3_5', './src/components/main/img/list3_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90055', '', null, null, '', 'list3_6', './src/components/main/img/list3_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90056', '', null, null, '', 'list3_7', './src/components/main/img/list3_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90057', '', null, null, '', 'list3_8', './src/components/main/img/list3_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90058', '', null, null, '', 'list3_9', './src/components/main/img/list3_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90059', '', null, null, '', 'list4_1', './src/components/main/img/list4_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90060', '', null, null, '', 'list4_2', './src/components/main/img/list4_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90061', '', null, null, '', 'list4_3', './src/components/main/img/list4_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90062', '', null, null, '', 'list4_4', './src/components/main/img/list4_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90063', '', null, null, '', 'list4_5', './src/components/main/img/list4_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90064', '', null, null, '', 'list4_6', './src/components/main/img/list4_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90065', '', null, null, '', 'list4_7', './src/components/main/img/list4_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90066', '', null, null, '', 'list4_8', './src/components/main/img/list4_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90067', '', null, null, '', 'list4_9', './src/components/main/img/list4_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90068', '', null, null, '', 'list5_1', './src/components/main/img/list5_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90069', '', null, null, '', 'list5_2', './src/components/main/img/list5_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90070', '', null, null, '', 'list5_3', './src/components/main/img/list5_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90071', '', null, null, '', 'list5_4', './src/components/main/img/list5_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90072', '', null, null, '', 'list5_5', './src/components/main/img/list5_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90073', '', null, null, '', 'list5_6', './src/components/main/img/list5_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90074', '', null, null, '', 'list5_7', './src/components/main/img/list5_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90075', '', null, null, '', 'list5_8', './src/components/main/img/list5_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90076', '', null, null, '', 'list5_9', './src/components/main/img/list5_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90077', '', null, null, '', 'list5_10', './src/components/main/img/list5_10.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90078', '', null, null, '', 'list5_11', './src/components/main/img/list5_11.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90079', '', null, null, '', 'list5_12', './src/components/main/img/list5_12.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90080', '', null, null, '', 'list6_1', './src/components/main/img/list6_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90081', '', null, null, '', 'list6_2', './src/components/main/img/list6_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90082', '', null, null, '', 'list6_3', './src/components/main/img/list6_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90083', '', null, null, '', 'list6_4', './src/components/main/img/list6_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90084', '', null, null, '', 'list6_5', './src/components/main/img/list6_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90085', '', null, null, '', 'list6_6', './src/components/main/img/list6_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90086', '', null, null, '', 'list6_7', './src/components/main/img/list6_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90087', '', null, null, '', 'list6_8', './src/components/main/img/list6_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90088', '', null, null, '', 'list6_9', './src/components/main/img/list6_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90089', '', null, null, '', 'list7_1', './src/components/main/img/list7_1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90090', '', null, null, '', 'list7_2', './src/components/main/img/list7_2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90091', '', null, null, '', 'list7_3', './src/components/main/img/list7_3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90092', '', null, null, '', 'list7_4', './src/components/main/img/list7_4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90093', '', null, null, '', 'list7_5', './src/components/main/img/list7_5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90094', '', null, null, '', 'list7_6', './src/components/main/img/list7_6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90095', '', null, null, '', 'list7_7', './src/components/main/img/list7_7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90096', '', null, null, '', 'list7_8', './src/components/main/img/list7_8.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90097', '', null, null, '', 'list7_9', './src/components/main/img/list7_9.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90098', '', null, null, '', 'list7_10', './src/components/main/img/list7_10.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90099', '', null, null, '', 'list7_11', './src/components/main/img/list7_11.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90100', '', null, null, '', 'list7_12', './src/components/main/img/list7_12.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90101', '', null, null, '', 'list7_13', './src/components/main/img/list7_13.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90102', '', null, null, '', 'list7_14', './src/components/main/img/list7_14.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90103', '', null, null, '', 'list7_15', './src/components/main/img/list7_15.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90104', '', null, null, '', 'list7_16', './src/components/main/img/list7_16.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90105', '', null, null, '', 'list7_17', './src/components/main/img/list7_17.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90106', '', null, null, '', 'list7_18', './src/components/main/img/list7_18.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90107', '', null, null, '', 'list7_19', './src/components/main/img/list7_19.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90108', '', null, null, '', 'list7_20', './src/components/main/img/list7_20.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90109', '', null, null, '', 'select1', './src/components/main/img/select1.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90110', '', null, null, '', 'select2', './src/components/main/img/select2.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90111', '', null, null, '', 'select3', './src/components/main/img/select3.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90112', '', null, null, '', 'select4', './src/components/main/img/select4.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90113', '', null, null, '', 'select5', './src/components/main/img/select5.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90114', '', null, null, '', 'select6', './src/components/main/img/select6.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90115', '', null, null, '', 'select7', './src/components/main/img/select7.jpg', '', '', null, null, null);
INSERT INTO `goods` VALUES ('90116', '', null, null, '', 'select8', './src/components/main/img/select8.jpg', '', '', null, null, null);
