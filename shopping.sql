/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-01-20 14:41:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods`;
CREATE TABLE `tbl_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) NOT NULL,
  `goodstype` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `goodspic` varchar(255) DEFAULT NULL,
  `goodsdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods
-- ----------------------------
INSERT INTO `tbl_goods` VALUES ('4', 'TV', '2', '1', '1000', '', '');
INSERT INTO `tbl_goods` VALUES ('5', '冰箱', '2', '1', '1500', '', '');
INSERT INTO `tbl_goods` VALUES ('6', '苹果笔记本电脑', '5', '1', '5000', '', '');
INSERT INTO `tbl_goods` VALUES ('7', '联想笔记本电脑', '6', '1', '3000', ',http://localhost:8080/ROOT/upload/kn.jpg,http://localhost:8080/ROOT/upload/1.jpg,http://localhost:8080/ROOT/upload/0.jpg', '呵呵');
INSERT INTO `tbl_goods` VALUES ('9', '秋装', '4', '1', '200', ',http://localhost:8080/ROOT/upload/3.jpg', '吱吱吱');
INSERT INTO `tbl_goods` VALUES ('10', '牛仔裤', '4', '1', '100', ',http://localhost:8080/ROOT/upload/3.jpg', '嘿嘿');
INSERT INTO `tbl_goods` VALUES ('30', '酷派手机', '7', '12', '1400', ',http://localhost:8080/ROOT/upload/1.jpg', '吱吱吱');
INSERT INTO `tbl_goods` VALUES ('33', '熊孩子', '14', '111', '1000', ',http://localhost:8080/ROOT/upload/kn.jpg,http://localhost:8080/ROOT/upload/1.jpg,http://localhost:8080/ROOT/upload/0.jpg', '<p>啧啧啧</p>\r\n吼吼吼');
INSERT INTO `tbl_goods` VALUES ('39', '风衣', '4', '331', '400', ',http://localhost:8080/ROOT/upload/3.jpg', '哈哈哈哈哈');
INSERT INTO `tbl_goods` VALUES ('41', '沙发', '3', '123', '2000', ',http://localhost:8080/ROOT/upload/3.jpg', '<p>23v</p>\r\n');
INSERT INTO `tbl_goods` VALUES ('43', 'iphone6', '5', '2', '4000', ',http://localhost:8080/ROOT/upload/kn.jpg,http://localhost:8080/ROOT/upload/1.jpg,http://localhost:8080/ROOT/upload/0.jpg', 'llalallaa');
INSERT INTO `tbl_goods` VALUES ('47', 'iphone4', '7', '1', '12412', ',http://localhost:8080/ROOT/upload/kn.jpg', '<p>合法的</p>\r\n');
INSERT INTO `tbl_goods` VALUES ('48', '华为平板', '5', '231', '134', ',http://localhost:8080/ROOT/upload/1.jpg', '1');
INSERT INTO `tbl_goods` VALUES ('49', '熊孩子', '14', '111', '135351', ',http://localhost:8080/ROOT/upload/kn.jpg,http://localhost:8080/ROOT/upload/1.jpg,http://localhost:8080/ROOT/upload/0.jpg', '111');
INSERT INTO `tbl_goods` VALUES ('50', '联想电脑', '5', '444', '3333', ',http://localhost:8080/ROOT/upload/1.jpg', '<p>555</p>\r\n');
INSERT INTO `tbl_goods` VALUES ('51', 'TV2', '2', '3', '5000', '', '');
INSERT INTO `tbl_goods` VALUES ('52', '热水器', '2', '4', '400', null, null);
INSERT INTO `tbl_goods` VALUES ('53', '卫浴设备', '2', '3', '600', null, null);
INSERT INTO `tbl_goods` VALUES ('55', 'iphone4', '2', '2', '2000', null, null);
INSERT INTO `tbl_goods` VALUES ('56', 'iphone6', '2', '33', '6000', null, null);
INSERT INTO `tbl_goods` VALUES ('57', '剃须刀', '2', '234', '100', null, null);
INSERT INTO `tbl_goods` VALUES ('58', '餐桌椅一套 ', '2', '500', '1234', null, null);
INSERT INTO `tbl_goods` VALUES ('59', '茶几', '2', '600', '557', null, null);
INSERT INTO `tbl_goods` VALUES ('60', '电饭煲', '2', '34', '555', null, null);
INSERT INTO `tbl_goods` VALUES ('61', '榨汁机', '2', '222', '22', null, null);

-- ----------------------------
-- Table structure for `tbl_goods_car`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_car`;
CREATE TABLE `tbl_goods_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `buytime` varchar(255) DEFAULT NULL,
  `buytotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_car
-- ----------------------------
INSERT INTO `tbl_goods_car` VALUES ('52', '1', '51', 'TV2', '2016-01-20 12:11:54', '444');
INSERT INTO `tbl_goods_car` VALUES ('53', '1', '56', 'iphone6', '2016-01-20 12:22:43', '2344');
INSERT INTO `tbl_goods_car` VALUES ('55', '1', '56', 'iphone6', '2016-01-20 13:41:13', '34124');
INSERT INTO `tbl_goods_car` VALUES ('64', '1', '60', 'çµé¥­ç²', '2016-01-20 13:52:44', '123');
INSERT INTO `tbl_goods_car` VALUES ('65', '1', '61', 'æ¦¨æ±æº', '2016-01-20 13:53:49', '241');
INSERT INTO `tbl_goods_car` VALUES ('66', '1', '4', 'TV', '2016-01-20 13:54:10', '888');
INSERT INTO `tbl_goods_car` VALUES ('67', '1', '58', 'é¤æ¡æ¤ä¸å¥ ', '2016-01-20 13:54:57', '325');
INSERT INTO `tbl_goods_car` VALUES ('68', '1', '51', 'TV2', '2016-01-20 13:55:17', '999');
INSERT INTO `tbl_goods_car` VALUES ('69', '1', '51', 'TV2', '2016-01-20 13:58:17', '566');
INSERT INTO `tbl_goods_car` VALUES ('70', '1', '52', 'ç­æ°´å¨', '2016-01-20 13:58:42', '1241');
INSERT INTO `tbl_goods_car` VALUES ('71', '1', '55', 'iphone4', '2016-01-20 14:14:50', '0');
INSERT INTO `tbl_goods_car` VALUES ('72', '1', '55', 'iphone4', '2016-01-20 14:14:57', '666');
INSERT INTO `tbl_goods_car` VALUES ('73', '1', '59', 'è¶å ', '2016-01-20 14:37:33', '2142');

-- ----------------------------
-- Table structure for `tbl_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_type`;
CREATE TABLE `tbl_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `typename` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_type
-- ----------------------------
INSERT INTO `tbl_goods_type` VALUES ('1', '0', '服装', null);
INSERT INTO `tbl_goods_type` VALUES ('2', '0', '电子', null);
INSERT INTO `tbl_goods_type` VALUES ('3', '0', '家居', null);
INSERT INTO `tbl_goods_type` VALUES ('4', '1', '男装', null);
INSERT INTO `tbl_goods_type` VALUES ('5', '2', '电脑', null);
INSERT INTO `tbl_goods_type` VALUES ('6', '5', '联想', null);
INSERT INTO `tbl_goods_type` VALUES ('7', '2', '手机', '智能手机');
INSERT INTO `tbl_goods_type` VALUES ('8', '2', '手表', '西门子');
INSERT INTO `tbl_goods_type` VALUES ('9', '2', 'itouch', '');
INSERT INTO `tbl_goods_type` VALUES ('10', '0', '办公', null);
INSERT INTO `tbl_goods_type` VALUES ('11', '0', '美食', null);
INSERT INTO `tbl_goods_type` VALUES ('12', '0', '美妆', null);
INSERT INTO `tbl_goods_type` VALUES ('13', '0', '百货', null);
INSERT INTO `tbl_goods_type` VALUES ('14', '0', '装饰', null);
INSERT INTO `tbl_goods_type` VALUES ('15', '0', '建材', null);
INSERT INTO `tbl_goods_type` VALUES ('16', '0', '团购', null);

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `buytime` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('25', '2', '60', '2016-01-20 13:52:48', '123', '2');
INSERT INTO `tbl_order` VALUES ('26', '2', '61', '2016-01-20 13:53:51', '241', '3');
INSERT INTO `tbl_order` VALUES ('27', '2', '4', '2016-01-20 13:54:12', '888', '2');
INSERT INTO `tbl_order` VALUES ('28', '1', '58', '2016-01-20 13:54:59', '325', '2');
INSERT INTO `tbl_order` VALUES ('29', '1', '51', '2016-01-20 13:55:20', '999', '3');
INSERT INTO `tbl_order` VALUES ('30', '5', '51', '2016-01-20 13:58:19', '566', '3');
INSERT INTO `tbl_order` VALUES ('31', '5', '52', '2016-01-20 13:58:45', '1241', '2');
INSERT INTO `tbl_order` VALUES ('32', '2', '55', '2016-01-20 14:15:00', '666', '2');
INSERT INTO `tbl_order` VALUES ('33', '2', '59', '2016-01-20 14:37:35', '2142', '2');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', 'admin', '1', 'tiger', null, null, '江苏南通通州');
INSERT INTO `tbl_user` VALUES ('2', 'qq', '123', '1', '国泰', null, null, '江苏南通通州');
INSERT INTO `tbl_user` VALUES ('5', 'suguotai', '123456', '2', '苏国泰', '', '', '江苏南通');

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '超级管理员');
INSERT INTO `tbl_user_role` VALUES ('2', '管理员');
INSERT INTO `tbl_user_role` VALUES ('3', '普通管理员');
