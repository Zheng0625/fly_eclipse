/*
Navicat MySQL Data Transfer

Source Server         : ly
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : fight

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2019-09-09 17:37:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tab_a320`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a320`;
CREATE TABLE `tab_a320` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型  0经济舱1公务舱2头等舱',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a320
-- ----------------------------
INSERT INTO `tab_a320` VALUES ('1', '1', '1', '1', '0', '0', '0', '0', '0', '0002');
INSERT INTO `tab_a320` VALUES ('2', '1', '1', '1', '0', '1', '0', '0', '1', '0001');
INSERT INTO `tab_a320` VALUES ('3', '1', '1', '1', '0', '0', '0', '0', '2', '0001');
INSERT INTO `tab_a320` VALUES ('4', '1', '1', '1', '1', '0', '0', '0', '3', '0001');
INSERT INTO `tab_a320` VALUES ('5', '1', '1', '1', '0', '0', '0', '0', '4', '0002');
INSERT INTO `tab_a320` VALUES ('6', '1', '1', '1', '1', '0', '0', '0', '5', '0001');
INSERT INTO `tab_a320` VALUES ('7', '1', '1', '1', '0', '0', '0', '0', '6', '0001');
INSERT INTO `tab_a320` VALUES ('8', '1', '1', '1', '0', '1', '0', '0', '7', '0000');
INSERT INTO `tab_a320` VALUES ('9', '1', '1', '1', '0', '0', '0', '0', '8', '0002');
INSERT INTO `tab_a320` VALUES ('10', '1', '1', '1', '0', '0', '0', '1', '0', '0002');
INSERT INTO `tab_a320` VALUES ('11', '1', '1', '1', '0', '1', '0', '1', '1', '0000');
INSERT INTO `tab_a320` VALUES ('12', '1', '1', '1', '0', '0', '0', '1', '2', '0001');
INSERT INTO `tab_a320` VALUES ('13', '1', '1', '1', '1', '0', '0', '1', '3', '0000');
INSERT INTO `tab_a320` VALUES ('14', '1', '1', '1', '0', '0', '0', '1', '4', '0002');
INSERT INTO `tab_a320` VALUES ('15', '1', '1', '1', '1', '0', '0', '1', '5', '0000');
INSERT INTO `tab_a320` VALUES ('16', '1', '1', '1', '0', '0', '0', '1', '6', '0001');
INSERT INTO `tab_a320` VALUES ('17', '1', '1', '1', '0', '1', '0', '1', '7', '0000');
INSERT INTO `tab_a320` VALUES ('18', '1', '1', '1', '0', '0', '0', '1', '8', '0002');
INSERT INTO `tab_a320` VALUES ('19', '1', '1', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a320` VALUES ('20', '1', '1', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a320` VALUES ('21', '1', '1', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a320` VALUES ('22', '1', '1', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a320` VALUES ('23', '1', '1', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a320` VALUES ('24', '1', '1', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a320` VALUES ('25', '1', '1', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a320` VALUES ('26', '1', '1', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a320` VALUES ('27', '1', '1', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a320` VALUES ('28', '1', '1', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a320` VALUES ('29', '1', '1', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a320` VALUES ('30', '1', '1', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a320` VALUES ('31', '1', '1', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a320` VALUES ('32', '1', '1', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a320` VALUES ('33', '1', '1', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a320` VALUES ('34', '1', '1', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a320` VALUES ('35', '1', '1', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a320` VALUES ('36', '1', '1', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a320` VALUES ('37', '1', '1', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a320` VALUES ('38', '1', '1', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a320` VALUES ('39', '1', '1', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a320` VALUES ('40', '1', '1', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a320` VALUES ('41', '1', '1', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a320` VALUES ('42', '1', '1', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a320` VALUES ('43', '1', '1', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a320` VALUES ('44', '1', '1', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a320` VALUES ('45', '1', '1', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a320` VALUES ('46', '1', '1', '1', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a320` VALUES ('47', '1', '1', '1', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a320` VALUES ('48', '1', '1', '1', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a320` VALUES ('49', '1', '1', '1', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a320` VALUES ('50', '1', '1', '1', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a320` VALUES ('51', '1', '1', '1', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a320` VALUES ('52', '1', '1', '1', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a320` VALUES ('53', '1', '1', '1', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a320` VALUES ('54', '1', '1', '1', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a320` VALUES ('55', '1', '1', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a320` VALUES ('56', '1', '1', '0', '0', '1', '0', '6', '1', '0001');
INSERT INTO `tab_a320` VALUES ('57', '1', '1', '0', '0', '0', '0', '6', '2', '0001');
INSERT INTO `tab_a320` VALUES ('58', '1', '1', '0', '1', '0', '0', '6', '3', '0001');
INSERT INTO `tab_a320` VALUES ('59', '1', '1', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a320` VALUES ('60', '1', '1', '0', '1', '0', '0', '6', '5', '0001');
INSERT INTO `tab_a320` VALUES ('61', '1', '1', '0', '0', '0', '0', '6', '6', '0001');
INSERT INTO `tab_a320` VALUES ('62', '1', '1', '0', '0', '1', '0', '6', '7', '0001');
INSERT INTO `tab_a320` VALUES ('63', '1', '1', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a320` VALUES ('64', '1', '1', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a320` VALUES ('65', '1', '1', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a320` VALUES ('66', '1', '1', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a320` VALUES ('67', '1', '1', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a320` VALUES ('68', '1', '1', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a320` VALUES ('69', '1', '1', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a320` VALUES ('70', '1', '1', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a320` VALUES ('71', '1', '1', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a320` VALUES ('72', '1', '1', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a320` VALUES ('73', '1', '1', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a320` VALUES ('74', '1', '1', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a320` VALUES ('75', '1', '1', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a320` VALUES ('76', '1', '1', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a320` VALUES ('77', '1', '1', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a320` VALUES ('78', '1', '1', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a320` VALUES ('79', '1', '1', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a320` VALUES ('80', '1', '1', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a320` VALUES ('81', '1', '1', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a320` VALUES ('82', '1', '1', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a320` VALUES ('83', '1', '1', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a320` VALUES ('84', '1', '1', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a320` VALUES ('85', '1', '1', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a320` VALUES ('86', '1', '1', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a320` VALUES ('87', '1', '1', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a320` VALUES ('88', '1', '1', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a320` VALUES ('89', '1', '1', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a320` VALUES ('90', '1', '1', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a320` VALUES ('91', '1', '1', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a320` VALUES ('92', '1', '1', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a320` VALUES ('93', '1', '1', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a320` VALUES ('94', '1', '1', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a320` VALUES ('95', '1', '1', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a320` VALUES ('96', '1', '1', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a320` VALUES ('97', '1', '1', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a320` VALUES ('98', '1', '1', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a320` VALUES ('99', '1', '1', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a320` VALUES ('100', '1', '1', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a320` VALUES ('101', '1', '1', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a320` VALUES ('102', '1', '1', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a320` VALUES ('103', '1', '1', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a320` VALUES ('104', '1', '1', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a320` VALUES ('105', '1', '1', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a320` VALUES ('106', '1', '1', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a320` VALUES ('107', '1', '1', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a320` VALUES ('108', '1', '1', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a320` VALUES ('109', '1', '1', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a320` VALUES ('110', '1', '1', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a320` VALUES ('111', '1', '1', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a320` VALUES ('112', '1', '1', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a320` VALUES ('113', '1', '1', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a320` VALUES ('114', '1', '1', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a320` VALUES ('115', '1', '1', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a320` VALUES ('116', '1', '1', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a320` VALUES ('117', '1', '1', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a320` VALUES ('118', '1', '1', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a320` VALUES ('119', '1', '1', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a320` VALUES ('120', '1', '1', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a320` VALUES ('121', '1', '1', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a320` VALUES ('122', '1', '1', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a320` VALUES ('123', '1', '1', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a320` VALUES ('124', '1', '1', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a320` VALUES ('125', '1', '1', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a320` VALUES ('126', '1', '1', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a320` VALUES ('127', '1', '1', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a320` VALUES ('128', '1', '1', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a320` VALUES ('129', '1', '1', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a320` VALUES ('130', '1', '1', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a320` VALUES ('131', '1', '1', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a320` VALUES ('132', '1', '1', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a320` VALUES ('133', '1', '1', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a320` VALUES ('134', '1', '1', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a320` VALUES ('135', '1', '1', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a320` VALUES ('136', '1', '1', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a320` VALUES ('137', '1', '1', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a320` VALUES ('138', '1', '1', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a320` VALUES ('139', '1', '1', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a320` VALUES ('140', '1', '1', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a320` VALUES ('141', '1', '1', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a320` VALUES ('142', '1', '1', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a320` VALUES ('143', '1', '1', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a320` VALUES ('144', '1', '1', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a320` VALUES ('145', '1', '1', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a320` VALUES ('146', '1', '1', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a320` VALUES ('147', '1', '1', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a320` VALUES ('148', '1', '1', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a320` VALUES ('149', '1', '1', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a320` VALUES ('150', '1', '1', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a320` VALUES ('151', '1', '1', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a320` VALUES ('152', '1', '1', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a320` VALUES ('153', '1', '1', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a320` VALUES ('154', '1', '1', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a320` VALUES ('155', '1', '1', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a320` VALUES ('156', '1', '1', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a320` VALUES ('157', '1', '1', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a320` VALUES ('158', '1', '1', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a320` VALUES ('159', '1', '1', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a320` VALUES ('160', '1', '1', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a320` VALUES ('161', '1', '1', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a320` VALUES ('162', '1', '1', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a320` VALUES ('163', '1', '1', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a320` VALUES ('164', '1', '1', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a320` VALUES ('165', '1', '1', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a320` VALUES ('166', '1', '1', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a320` VALUES ('167', '1', '1', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a320` VALUES ('168', '1', '1', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a320` VALUES ('169', '1', '1', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a320` VALUES ('170', '1', '1', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a320` VALUES ('171', '1', '1', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a320` VALUES ('172', '1', '1', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a320` VALUES ('173', '1', '1', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a320` VALUES ('174', '1', '1', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a320` VALUES ('175', '1', '1', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a320` VALUES ('176', '1', '1', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a320` VALUES ('177', '1', '1', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a320` VALUES ('178', '1', '1', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a320` VALUES ('179', '1', '1', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a320` VALUES ('180', '1', '1', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a320` VALUES ('181', '1', '1', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a320` VALUES ('182', '1', '1', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a320` VALUES ('183', '1', '1', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a320` VALUES ('184', '1', '1', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a320` VALUES ('185', '1', '1', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a320` VALUES ('186', '1', '1', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a320` VALUES ('187', '1', '1', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a320` VALUES ('188', '1', '1', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a320` VALUES ('189', '1', '1', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a320` VALUES ('190', '1', '1', '0', '0', '0', '1', '21', '0', '0002');
INSERT INTO `tab_a320` VALUES ('191', '1', '1', '0', '0', '1', '1', '21', '1', '0000');
INSERT INTO `tab_a320` VALUES ('192', '1', '1', '0', '0', '0', '1', '21', '2', '0000');
INSERT INTO `tab_a320` VALUES ('193', '1', '1', '0', '1', '0', '1', '21', '3', '0000');
INSERT INTO `tab_a320` VALUES ('194', '1', '1', '0', '0', '0', '1', '21', '4', '0002');
INSERT INTO `tab_a320` VALUES ('195', '1', '1', '0', '1', '0', '1', '21', '5', '0000');
INSERT INTO `tab_a320` VALUES ('196', '1', '1', '0', '0', '0', '1', '21', '6', '0000');
INSERT INTO `tab_a320` VALUES ('197', '1', '1', '0', '0', '1', '1', '21', '7', '0000');
INSERT INTO `tab_a320` VALUES ('198', '1', '1', '0', '0', '0', '1', '21', '8', '0002');
INSERT INTO `tab_a320` VALUES ('199', '1', '1', '0', '0', '0', '1', '22', '0', '0002');
INSERT INTO `tab_a320` VALUES ('200', '1', '1', '0', '0', '1', '1', '22', '1', '0000');
INSERT INTO `tab_a320` VALUES ('201', '1', '1', '0', '0', '0', '1', '22', '2', '0000');
INSERT INTO `tab_a320` VALUES ('202', '1', '1', '0', '1', '0', '1', '22', '3', '0000');
INSERT INTO `tab_a320` VALUES ('203', '1', '1', '0', '0', '0', '1', '22', '4', '0002');
INSERT INTO `tab_a320` VALUES ('204', '1', '1', '0', '1', '0', '1', '22', '5', '0000');
INSERT INTO `tab_a320` VALUES ('205', '1', '1', '0', '0', '0', '1', '22', '6', '0000');
INSERT INTO `tab_a320` VALUES ('206', '1', '1', '0', '0', '1', '1', '22', '7', '0000');
INSERT INTO `tab_a320` VALUES ('207', '1', '1', '0', '0', '0', '1', '22', '8', '0002');
INSERT INTO `tab_a320` VALUES ('208', '1', '1', '0', '0', '0', '1', '23', '0', '0002');
INSERT INTO `tab_a320` VALUES ('209', '1', '1', '0', '0', '1', '1', '23', '1', '0000');
INSERT INTO `tab_a320` VALUES ('210', '1', '1', '0', '0', '0', '1', '23', '2', '0000');
INSERT INTO `tab_a320` VALUES ('211', '1', '1', '0', '1', '0', '1', '23', '3', '0000');
INSERT INTO `tab_a320` VALUES ('212', '1', '1', '0', '0', '0', '1', '23', '4', '0002');
INSERT INTO `tab_a320` VALUES ('213', '1', '1', '0', '1', '0', '1', '23', '5', '0000');
INSERT INTO `tab_a320` VALUES ('214', '1', '1', '0', '0', '0', '1', '23', '6', '0000');
INSERT INTO `tab_a320` VALUES ('215', '1', '1', '0', '0', '1', '1', '23', '7', '0000');
INSERT INTO `tab_a320` VALUES ('216', '1', '1', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a320` VALUES ('217', '1', '1', '0', '0', '0', '0', '24', '0', '0002');
INSERT INTO `tab_a320` VALUES ('218', '1', '1', '0', '0', '1', '0', '24', '1', '0002');
INSERT INTO `tab_a320` VALUES ('219', '1', '1', '0', '0', '0', '0', '24', '2', '0002');
INSERT INTO `tab_a320` VALUES ('220', '1', '1', '0', '1', '0', '0', '24', '3', '0002');
INSERT INTO `tab_a320` VALUES ('221', '1', '1', '0', '0', '0', '0', '24', '4', '0002');
INSERT INTO `tab_a320` VALUES ('222', '1', '1', '0', '1', '0', '0', '24', '5', '0002');
INSERT INTO `tab_a320` VALUES ('223', '1', '1', '0', '0', '0', '0', '24', '6', '0002');
INSERT INTO `tab_a320` VALUES ('224', '1', '1', '0', '0', '1', '0', '24', '7', '0002');
INSERT INTO `tab_a320` VALUES ('225', '1', '1', '0', '0', '0', '0', '24', '8', '0002');
INSERT INTO `tab_a320` VALUES ('226', '1', '1', '0', '0', '0', '0', '25', '0', '0002');
INSERT INTO `tab_a320` VALUES ('227', '1', '1', '0', '0', '0', '0', '25', '1', '0002');
INSERT INTO `tab_a320` VALUES ('228', '1', '1', '0', '0', '0', '0', '25', '2', '0002');
INSERT INTO `tab_a320` VALUES ('229', '1', '1', '0', '0', '0', '0', '25', '3', '0002');
INSERT INTO `tab_a320` VALUES ('230', '1', '1', '0', '0', '0', '0', '25', '4', '0002');
INSERT INTO `tab_a320` VALUES ('231', '1', '1', '0', '0', '0', '0', '25', '5', '0002');
INSERT INTO `tab_a320` VALUES ('232', '1', '1', '0', '0', '0', '0', '25', '6', '0002');
INSERT INTO `tab_a320` VALUES ('233', '1', '1', '0', '0', '0', '0', '25', '7', '0002');
INSERT INTO `tab_a320` VALUES ('234', '1', '1', '0', '0', '0', '0', '25', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a320_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a320_copy`;
CREATE TABLE `tab_a320_copy` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型  0经济舱1公务舱2头等舱',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a320_copy
-- ----------------------------
INSERT INTO `tab_a320_copy` VALUES ('1', '1', '1', '1', '0', '0', '0', '0', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('2', '1', '1', '1', '0', '1', '0', '0', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('3', '1', '1', '1', '0', '0', '0', '0', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('4', '1', '1', '1', '1', '0', '0', '0', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('5', '1', '1', '1', '0', '0', '0', '0', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('6', '1', '1', '1', '1', '0', '0', '0', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('7', '1', '1', '1', '0', '0', '0', '0', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('8', '1', '1', '1', '0', '1', '0', '0', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('9', '1', '1', '1', '0', '0', '0', '0', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('10', '1', '1', '1', '0', '0', '0', '1', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('11', '1', '1', '1', '0', '1', '0', '1', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('12', '1', '1', '1', '0', '0', '0', '1', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('13', '1', '1', '1', '1', '0', '0', '1', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('14', '1', '1', '1', '0', '0', '0', '1', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('15', '1', '1', '1', '1', '0', '0', '1', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('16', '1', '1', '1', '0', '0', '0', '1', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('17', '1', '1', '1', '0', '1', '0', '1', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('18', '1', '1', '1', '0', '0', '0', '1', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('19', '1', '1', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('20', '1', '1', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('21', '1', '1', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('22', '1', '1', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('23', '1', '1', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('24', '1', '1', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('25', '1', '1', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('26', '1', '1', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('27', '1', '1', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('28', '1', '1', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('29', '1', '1', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('30', '1', '1', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('31', '1', '1', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('32', '1', '1', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('33', '1', '1', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('34', '1', '1', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('35', '1', '1', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('36', '1', '1', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('37', '1', '1', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('38', '1', '1', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('39', '1', '1', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('40', '1', '1', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('41', '1', '1', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('42', '1', '1', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('43', '1', '1', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('44', '1', '1', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('45', '1', '1', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('46', '1', '1', '1', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('47', '1', '1', '1', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('48', '1', '1', '1', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('49', '1', '1', '1', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('50', '1', '1', '1', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('51', '1', '1', '1', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('52', '1', '1', '1', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('53', '1', '1', '1', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('54', '1', '1', '1', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('55', '1', '1', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('56', '1', '1', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('57', '1', '1', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('58', '1', '1', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('59', '1', '1', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('60', '1', '1', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('61', '1', '1', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('62', '1', '1', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('63', '1', '1', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('64', '1', '1', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('65', '1', '1', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('66', '1', '1', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('67', '1', '1', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('68', '1', '1', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('69', '1', '1', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('70', '1', '1', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('71', '1', '1', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('72', '1', '1', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('73', '1', '1', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('74', '1', '1', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('75', '1', '1', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('76', '1', '1', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('77', '1', '1', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('78', '1', '1', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('79', '1', '1', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('80', '1', '1', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('81', '1', '1', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('82', '1', '1', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('83', '1', '1', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('84', '1', '1', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('85', '1', '1', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('86', '1', '1', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('87', '1', '1', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('88', '1', '1', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('89', '1', '1', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('90', '1', '1', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('91', '1', '1', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('92', '1', '1', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('93', '1', '1', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('94', '1', '1', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('95', '1', '1', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('96', '1', '1', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('97', '1', '1', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('98', '1', '1', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('99', '1', '1', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('100', '1', '1', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('101', '1', '1', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('102', '1', '1', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('103', '1', '1', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('104', '1', '1', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('105', '1', '1', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('106', '1', '1', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('107', '1', '1', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('108', '1', '1', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('109', '1', '1', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('110', '1', '1', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('111', '1', '1', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('112', '1', '1', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('113', '1', '1', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('114', '1', '1', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('115', '1', '1', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('116', '1', '1', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('117', '1', '1', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('118', '1', '1', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('119', '1', '1', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('120', '1', '1', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('121', '1', '1', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('122', '1', '1', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('123', '1', '1', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('124', '1', '1', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('125', '1', '1', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('126', '1', '1', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('127', '1', '1', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('128', '1', '1', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('129', '1', '1', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('130', '1', '1', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('131', '1', '1', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('132', '1', '1', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('133', '1', '1', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('134', '1', '1', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('135', '1', '1', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('136', '1', '1', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('137', '1', '1', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('138', '1', '1', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('139', '1', '1', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('140', '1', '1', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('141', '1', '1', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('142', '1', '1', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('143', '1', '1', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('144', '1', '1', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('145', '1', '1', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('146', '1', '1', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('147', '1', '1', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('148', '1', '1', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('149', '1', '1', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('150', '1', '1', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('151', '1', '1', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('152', '1', '1', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('153', '1', '1', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('154', '1', '1', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('155', '1', '1', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('156', '1', '1', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('157', '1', '1', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('158', '1', '1', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('159', '1', '1', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('160', '1', '1', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('161', '1', '1', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('162', '1', '1', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('163', '1', '1', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('164', '1', '1', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('165', '1', '1', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('166', '1', '1', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('167', '1', '1', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('168', '1', '1', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('169', '1', '1', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('170', '1', '1', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('171', '1', '1', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('172', '1', '1', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('173', '1', '1', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('174', '1', '1', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('175', '1', '1', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('176', '1', '1', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('177', '1', '1', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('178', '1', '1', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('179', '1', '1', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('180', '1', '1', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('181', '1', '1', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('182', '1', '1', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('183', '1', '1', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('184', '1', '1', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('185', '1', '1', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('186', '1', '1', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('187', '1', '1', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('188', '1', '1', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('189', '1', '1', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('190', '1', '1', '0', '0', '0', '1', '21', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('191', '1', '1', '0', '0', '1', '1', '21', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('192', '1', '1', '0', '0', '0', '1', '21', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('193', '1', '1', '0', '1', '0', '1', '21', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('194', '1', '1', '0', '0', '0', '1', '21', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('195', '1', '1', '0', '1', '0', '1', '21', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('196', '1', '1', '0', '0', '0', '1', '21', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('197', '1', '1', '0', '0', '1', '1', '21', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('198', '1', '1', '0', '0', '0', '1', '21', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('199', '1', '1', '0', '0', '0', '1', '22', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('200', '1', '1', '0', '0', '1', '1', '22', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('201', '1', '1', '0', '0', '0', '1', '22', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('202', '1', '1', '0', '1', '0', '1', '22', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('203', '1', '1', '0', '0', '0', '1', '22', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('204', '1', '1', '0', '1', '0', '1', '22', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('205', '1', '1', '0', '0', '0', '1', '22', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('206', '1', '1', '0', '0', '1', '1', '22', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('207', '1', '1', '0', '0', '0', '1', '22', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('208', '1', '1', '0', '0', '0', '1', '23', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('209', '1', '1', '0', '0', '1', '1', '23', '1', '0000');
INSERT INTO `tab_a320_copy` VALUES ('210', '1', '1', '0', '0', '0', '1', '23', '2', '0000');
INSERT INTO `tab_a320_copy` VALUES ('211', '1', '1', '0', '1', '0', '1', '23', '3', '0000');
INSERT INTO `tab_a320_copy` VALUES ('212', '1', '1', '0', '0', '0', '1', '23', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('213', '1', '1', '0', '1', '0', '1', '23', '5', '0000');
INSERT INTO `tab_a320_copy` VALUES ('214', '1', '1', '0', '0', '0', '1', '23', '6', '0000');
INSERT INTO `tab_a320_copy` VALUES ('215', '1', '1', '0', '0', '1', '1', '23', '7', '0000');
INSERT INTO `tab_a320_copy` VALUES ('216', '1', '1', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('217', '1', '1', '0', '0', '0', '0', '24', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('218', '1', '1', '0', '0', '1', '0', '24', '1', '0002');
INSERT INTO `tab_a320_copy` VALUES ('219', '1', '1', '0', '0', '0', '0', '24', '2', '0002');
INSERT INTO `tab_a320_copy` VALUES ('220', '1', '1', '0', '1', '0', '0', '24', '3', '0002');
INSERT INTO `tab_a320_copy` VALUES ('221', '1', '1', '0', '0', '0', '0', '24', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('222', '1', '1', '0', '1', '0', '0', '24', '5', '0002');
INSERT INTO `tab_a320_copy` VALUES ('223', '1', '1', '0', '0', '0', '0', '24', '6', '0002');
INSERT INTO `tab_a320_copy` VALUES ('224', '1', '1', '0', '0', '1', '0', '24', '7', '0002');
INSERT INTO `tab_a320_copy` VALUES ('225', '1', '1', '0', '0', '0', '0', '24', '8', '0002');
INSERT INTO `tab_a320_copy` VALUES ('226', '1', '1', '0', '0', '0', '0', '25', '0', '0002');
INSERT INTO `tab_a320_copy` VALUES ('227', '1', '1', '0', '0', '0', '0', '25', '1', '0002');
INSERT INTO `tab_a320_copy` VALUES ('228', '1', '1', '0', '0', '0', '0', '25', '2', '0002');
INSERT INTO `tab_a320_copy` VALUES ('229', '1', '1', '0', '0', '0', '0', '25', '3', '0002');
INSERT INTO `tab_a320_copy` VALUES ('230', '1', '1', '0', '0', '0', '0', '25', '4', '0002');
INSERT INTO `tab_a320_copy` VALUES ('231', '1', '1', '0', '0', '0', '0', '25', '5', '0002');
INSERT INTO `tab_a320_copy` VALUES ('232', '1', '1', '0', '0', '0', '0', '25', '6', '0002');
INSERT INTO `tab_a320_copy` VALUES ('233', '1', '1', '0', '0', '0', '0', '25', '7', '0002');
INSERT INTO `tab_a320_copy` VALUES ('234', '1', '1', '0', '0', '0', '0', '25', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a32e`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a32e`;
CREATE TABLE `tab_a32e` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型  0经济舱1公务舱2头等舱',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a32e
-- ----------------------------
INSERT INTO `tab_a32e` VALUES ('1', '2', '2', '1', '0', '0', '1', '0', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('2', '2', '2', '1', '0', '1', '1', '0', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('3', '2', '2', '1', '0', '0', '1', '0', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('4', '2', '2', '1', '1', '0', '1', '0', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('5', '2', '2', '1', '0', '0', '1', '0', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('6', '2', '2', '1', '1', '0', '1', '0', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('7', '2', '2', '1', '0', '0', '1', '0', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('8', '2', '2', '1', '0', '1', '1', '0', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('9', '2', '2', '1', '0', '0', '1', '0', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('10', '2', '2', '1', '0', '0', '1', '1', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('11', '2', '2', '1', '0', '1', '1', '1', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('12', '2', '2', '1', '0', '0', '1', '1', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('13', '2', '2', '1', '1', '0', '1', '1', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('14', '2', '2', '1', '0', '0', '1', '1', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('15', '2', '2', '1', '1', '0', '1', '1', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('16', '2', '2', '1', '0', '0', '1', '1', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('17', '2', '2', '1', '0', '1', '1', '1', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('18', '2', '2', '1', '0', '0', '1', '1', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('19', '2', '2', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('20', '2', '2', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('21', '2', '2', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('22', '2', '2', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('23', '2', '2', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('24', '2', '2', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('25', '2', '2', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('26', '2', '2', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('27', '2', '2', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('28', '2', '2', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('29', '2', '2', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('30', '2', '2', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('31', '2', '2', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('32', '2', '2', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('33', '2', '2', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('34', '2', '2', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('35', '2', '2', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('36', '2', '2', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('37', '2', '2', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('38', '2', '2', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('39', '2', '2', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('40', '2', '2', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('41', '2', '2', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('42', '2', '2', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('43', '2', '2', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('44', '2', '2', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('45', '2', '2', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('46', '2', '2', '0', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('47', '2', '2', '0', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('48', '2', '2', '0', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('49', '2', '2', '0', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('50', '2', '2', '0', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('51', '2', '2', '0', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('52', '2', '2', '0', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('53', '2', '2', '0', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('54', '2', '2', '0', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('55', '2', '2', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('56', '2', '2', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('57', '2', '2', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('58', '2', '2', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('59', '2', '2', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('60', '2', '2', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('61', '2', '2', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('62', '2', '2', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('63', '2', '2', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('64', '2', '2', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('65', '2', '2', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('66', '2', '2', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('67', '2', '2', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('68', '2', '2', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('69', '2', '2', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('70', '2', '2', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('71', '2', '2', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('72', '2', '2', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('73', '2', '2', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('74', '2', '2', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('75', '2', '2', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('76', '2', '2', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('77', '2', '2', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('78', '2', '2', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('79', '2', '2', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('80', '2', '2', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('81', '2', '2', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('82', '2', '2', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('83', '2', '2', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('84', '2', '2', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('85', '2', '2', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('86', '2', '2', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('87', '2', '2', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('88', '2', '2', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('89', '2', '2', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('90', '2', '2', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('91', '2', '2', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('92', '2', '2', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('93', '2', '2', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('94', '2', '2', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('95', '2', '2', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('96', '2', '2', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('97', '2', '2', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('98', '2', '2', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('99', '2', '2', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('100', '2', '2', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('101', '2', '2', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('102', '2', '2', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('103', '2', '2', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('104', '2', '2', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('105', '2', '2', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('106', '2', '2', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('107', '2', '2', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('108', '2', '2', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('109', '2', '2', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('110', '2', '2', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('111', '2', '2', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('112', '2', '2', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('113', '2', '2', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('114', '2', '2', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('115', '2', '2', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('116', '2', '2', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('117', '2', '2', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('118', '2', '2', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('119', '2', '2', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('120', '2', '2', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('121', '2', '2', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('122', '2', '2', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('123', '2', '2', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('124', '2', '2', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('125', '2', '2', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('126', '2', '2', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('127', '2', '2', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('128', '2', '2', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('129', '2', '2', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('130', '2', '2', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('131', '2', '2', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('132', '2', '2', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('133', '2', '2', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('134', '2', '2', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('135', '2', '2', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('136', '2', '2', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('137', '2', '2', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('138', '2', '2', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('139', '2', '2', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('140', '2', '2', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('141', '2', '2', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('142', '2', '2', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('143', '2', '2', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('144', '2', '2', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('145', '2', '2', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('146', '2', '2', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('147', '2', '2', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('148', '2', '2', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('149', '2', '2', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('150', '2', '2', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('151', '2', '2', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('152', '2', '2', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('153', '2', '2', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('154', '2', '2', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('155', '2', '2', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('156', '2', '2', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('157', '2', '2', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('158', '2', '2', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('159', '2', '2', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('160', '2', '2', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('161', '2', '2', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('162', '2', '2', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('163', '2', '2', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('164', '2', '2', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('165', '2', '2', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('166', '2', '2', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('167', '2', '2', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('168', '2', '2', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('169', '2', '2', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('170', '2', '2', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('171', '2', '2', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('172', '2', '2', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('173', '2', '2', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('174', '2', '2', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('175', '2', '2', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('176', '2', '2', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('177', '2', '2', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('178', '2', '2', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('179', '2', '2', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('180', '2', '2', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('181', '2', '2', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('182', '2', '2', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('183', '2', '2', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('184', '2', '2', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('185', '2', '2', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('186', '2', '2', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('187', '2', '2', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('188', '2', '2', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('189', '2', '2', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('190', '2', '2', '0', '0', '0', '0', '21', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('191', '2', '2', '0', '0', '1', '0', '21', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('192', '2', '2', '0', '0', '0', '0', '21', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('193', '2', '2', '0', '1', '0', '0', '21', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('194', '2', '2', '0', '0', '0', '0', '21', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('195', '2', '2', '0', '1', '0', '0', '21', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('196', '2', '2', '0', '0', '0', '0', '21', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('197', '2', '2', '0', '0', '1', '0', '21', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('198', '2', '2', '0', '0', '0', '0', '21', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('199', '2', '2', '0', '0', '0', '0', '22', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('200', '2', '2', '0', '0', '1', '0', '22', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('201', '2', '2', '0', '0', '0', '0', '22', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('202', '2', '2', '0', '1', '0', '0', '22', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('203', '2', '2', '0', '0', '0', '0', '22', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('204', '2', '2', '0', '1', '0', '0', '22', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('205', '2', '2', '0', '0', '0', '0', '22', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('206', '2', '2', '0', '0', '1', '0', '22', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('207', '2', '2', '0', '0', '0', '0', '22', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('208', '2', '2', '0', '0', '0', '0', '23', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('209', '2', '2', '0', '0', '1', '0', '23', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('210', '2', '2', '0', '0', '0', '0', '23', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('211', '2', '2', '0', '1', '0', '0', '23', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('212', '2', '2', '0', '0', '0', '0', '23', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('213', '2', '2', '0', '1', '0', '0', '23', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('214', '2', '2', '0', '0', '0', '0', '23', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('215', '2', '2', '0', '0', '1', '0', '23', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('216', '2', '2', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('217', '2', '2', '0', '0', '0', '1', '24', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('218', '2', '2', '0', '0', '1', '1', '24', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('219', '2', '2', '0', '0', '0', '1', '24', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('220', '2', '2', '0', '1', '0', '1', '24', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('221', '2', '2', '0', '0', '0', '1', '24', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('222', '2', '2', '0', '1', '0', '1', '24', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('223', '2', '2', '0', '0', '0', '1', '24', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('224', '2', '2', '0', '0', '1', '1', '24', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('225', '2', '2', '0', '0', '0', '1', '24', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('226', '2', '2', '0', '0', '0', '1', '25', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('227', '2', '2', '0', '0', '1', '1', '25', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('228', '2', '2', '0', '0', '0', '1', '25', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('229', '2', '2', '0', '1', '0', '1', '25', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('230', '2', '2', '0', '0', '0', '1', '25', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('231', '2', '2', '0', '1', '0', '1', '25', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('232', '2', '2', '0', '0', '0', '1', '25', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('233', '2', '2', '0', '0', '1', '1', '25', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('234', '2', '2', '0', '0', '0', '1', '25', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('235', '2', '2', '0', '0', '0', '1', '26', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('236', '2', '2', '0', '0', '1', '1', '26', '1', '0000');
INSERT INTO `tab_a32e` VALUES ('237', '2', '2', '0', '0', '0', '1', '26', '2', '0000');
INSERT INTO `tab_a32e` VALUES ('238', '2', '2', '0', '1', '0', '1', '26', '3', '0000');
INSERT INTO `tab_a32e` VALUES ('239', '2', '2', '0', '0', '0', '1', '26', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('240', '2', '2', '0', '1', '0', '1', '26', '5', '0000');
INSERT INTO `tab_a32e` VALUES ('241', '2', '2', '0', '0', '0', '1', '26', '6', '0000');
INSERT INTO `tab_a32e` VALUES ('242', '2', '2', '0', '0', '1', '1', '26', '7', '0000');
INSERT INTO `tab_a32e` VALUES ('243', '2', '2', '0', '0', '0', '1', '26', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('244', '2', '2', '2', '2', '2', '2', '27', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('245', '2', '2', '2', '2', '2', '2', '27', '1', '0002');
INSERT INTO `tab_a32e` VALUES ('246', '2', '2', '2', '2', '2', '2', '27', '2', '0002');
INSERT INTO `tab_a32e` VALUES ('247', '2', '2', '2', '2', '2', '2', '27', '3', '0002');
INSERT INTO `tab_a32e` VALUES ('248', '2', '2', '2', '2', '2', '2', '27', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('249', '2', '2', '2', '2', '2', '2', '27', '5', '0002');
INSERT INTO `tab_a32e` VALUES ('250', '2', '2', '2', '2', '2', '2', '27', '6', '0002');
INSERT INTO `tab_a32e` VALUES ('251', '2', '2', '2', '2', '2', '2', '27', '7', '0002');
INSERT INTO `tab_a32e` VALUES ('252', '2', '2', '2', '2', '2', '2', '27', '8', '0002');
INSERT INTO `tab_a32e` VALUES ('253', '2', '2', '2', '2', '2', '2', '28', '0', '0002');
INSERT INTO `tab_a32e` VALUES ('254', '2', '2', '2', '2', '2', '2', '28', '1', '0002');
INSERT INTO `tab_a32e` VALUES ('255', '2', '2', '2', '2', '2', '2', '28', '2', '0002');
INSERT INTO `tab_a32e` VALUES ('256', '2', '2', '2', '2', '2', '2', '28', '3', '0002');
INSERT INTO `tab_a32e` VALUES ('257', '2', '2', '2', '2', '2', '2', '28', '4', '0002');
INSERT INTO `tab_a32e` VALUES ('258', '2', '2', '2', '2', '2', '2', '28', '5', '0002');
INSERT INTO `tab_a32e` VALUES ('259', '2', '2', '2', '2', '2', '2', '28', '6', '0002');
INSERT INTO `tab_a32e` VALUES ('260', '2', '2', '2', '2', '2', '2', '28', '7', '0002');
INSERT INTO `tab_a32e` VALUES ('261', '2', '2', '2', '2', '2', '2', '28', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a32e_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a32e_copy`;
CREATE TABLE `tab_a32e_copy` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型  0经济舱1公务舱2头等舱',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a32e_copy
-- ----------------------------
INSERT INTO `tab_a32e_copy` VALUES ('1', '2', '2', '1', '0', '0', '1', '0', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('2', '2', '2', '1', '0', '1', '1', '0', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('3', '2', '2', '1', '0', '0', '1', '0', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('4', '2', '2', '1', '1', '0', '1', '0', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('5', '2', '2', '1', '0', '0', '1', '0', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('6', '2', '2', '1', '1', '0', '1', '0', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('7', '2', '2', '1', '0', '0', '1', '0', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('8', '2', '2', '1', '0', '1', '1', '0', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('9', '2', '2', '1', '0', '0', '1', '0', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('10', '2', '2', '1', '0', '0', '1', '1', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('11', '2', '2', '1', '0', '1', '1', '1', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('12', '2', '2', '1', '0', '0', '1', '1', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('13', '2', '2', '1', '1', '0', '1', '1', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('14', '2', '2', '1', '0', '0', '1', '1', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('15', '2', '2', '1', '1', '0', '1', '1', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('16', '2', '2', '1', '0', '0', '1', '1', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('17', '2', '2', '1', '0', '1', '1', '1', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('18', '2', '2', '1', '0', '0', '1', '1', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('19', '2', '2', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('20', '2', '2', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('21', '2', '2', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('22', '2', '2', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('23', '2', '2', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('24', '2', '2', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('25', '2', '2', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('26', '2', '2', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('27', '2', '2', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('28', '2', '2', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('29', '2', '2', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('30', '2', '2', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('31', '2', '2', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('32', '2', '2', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('33', '2', '2', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('34', '2', '2', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('35', '2', '2', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('36', '2', '2', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('37', '2', '2', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('38', '2', '2', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('39', '2', '2', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('40', '2', '2', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('41', '2', '2', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('42', '2', '2', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('43', '2', '2', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('44', '2', '2', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('45', '2', '2', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('46', '2', '2', '0', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('47', '2', '2', '0', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('48', '2', '2', '0', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('49', '2', '2', '0', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('50', '2', '2', '0', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('51', '2', '2', '0', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('52', '2', '2', '0', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('53', '2', '2', '0', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('54', '2', '2', '0', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('55', '2', '2', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('56', '2', '2', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('57', '2', '2', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('58', '2', '2', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('59', '2', '2', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('60', '2', '2', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('61', '2', '2', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('62', '2', '2', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('63', '2', '2', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('64', '2', '2', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('65', '2', '2', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('66', '2', '2', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('67', '2', '2', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('68', '2', '2', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('69', '2', '2', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('70', '2', '2', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('71', '2', '2', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('72', '2', '2', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('73', '2', '2', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('74', '2', '2', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('75', '2', '2', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('76', '2', '2', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('77', '2', '2', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('78', '2', '2', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('79', '2', '2', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('80', '2', '2', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('81', '2', '2', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('82', '2', '2', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('83', '2', '2', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('84', '2', '2', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('85', '2', '2', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('86', '2', '2', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('87', '2', '2', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('88', '2', '2', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('89', '2', '2', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('90', '2', '2', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('91', '2', '2', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('92', '2', '2', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('93', '2', '2', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('94', '2', '2', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('95', '2', '2', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('96', '2', '2', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('97', '2', '2', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('98', '2', '2', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('99', '2', '2', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('100', '2', '2', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('101', '2', '2', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('102', '2', '2', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('103', '2', '2', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('104', '2', '2', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('105', '2', '2', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('106', '2', '2', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('107', '2', '2', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('108', '2', '2', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('109', '2', '2', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('110', '2', '2', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('111', '2', '2', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('112', '2', '2', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('113', '2', '2', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('114', '2', '2', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('115', '2', '2', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('116', '2', '2', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('117', '2', '2', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('118', '2', '2', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('119', '2', '2', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('120', '2', '2', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('121', '2', '2', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('122', '2', '2', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('123', '2', '2', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('124', '2', '2', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('125', '2', '2', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('126', '2', '2', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('127', '2', '2', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('128', '2', '2', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('129', '2', '2', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('130', '2', '2', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('131', '2', '2', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('132', '2', '2', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('133', '2', '2', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('134', '2', '2', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('135', '2', '2', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('136', '2', '2', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('137', '2', '2', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('138', '2', '2', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('139', '2', '2', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('140', '2', '2', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('141', '2', '2', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('142', '2', '2', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('143', '2', '2', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('144', '2', '2', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('145', '2', '2', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('146', '2', '2', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('147', '2', '2', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('148', '2', '2', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('149', '2', '2', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('150', '2', '2', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('151', '2', '2', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('152', '2', '2', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('153', '2', '2', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('154', '2', '2', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('155', '2', '2', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('156', '2', '2', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('157', '2', '2', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('158', '2', '2', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('159', '2', '2', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('160', '2', '2', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('161', '2', '2', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('162', '2', '2', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('163', '2', '2', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('164', '2', '2', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('165', '2', '2', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('166', '2', '2', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('167', '2', '2', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('168', '2', '2', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('169', '2', '2', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('170', '2', '2', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('171', '2', '2', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('172', '2', '2', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('173', '2', '2', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('174', '2', '2', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('175', '2', '2', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('176', '2', '2', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('177', '2', '2', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('178', '2', '2', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('179', '2', '2', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('180', '2', '2', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('181', '2', '2', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('182', '2', '2', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('183', '2', '2', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('184', '2', '2', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('185', '2', '2', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('186', '2', '2', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('187', '2', '2', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('188', '2', '2', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('189', '2', '2', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('190', '2', '2', '0', '0', '0', '0', '21', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('191', '2', '2', '0', '0', '1', '0', '21', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('192', '2', '2', '0', '0', '0', '0', '21', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('193', '2', '2', '0', '1', '0', '0', '21', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('194', '2', '2', '0', '0', '0', '0', '21', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('195', '2', '2', '0', '1', '0', '0', '21', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('196', '2', '2', '0', '0', '0', '0', '21', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('197', '2', '2', '0', '0', '1', '0', '21', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('198', '2', '2', '0', '0', '0', '0', '21', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('199', '2', '2', '0', '0', '0', '0', '22', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('200', '2', '2', '0', '0', '1', '0', '22', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('201', '2', '2', '0', '0', '0', '0', '22', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('202', '2', '2', '0', '1', '0', '0', '22', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('203', '2', '2', '0', '0', '0', '0', '22', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('204', '2', '2', '0', '1', '0', '0', '22', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('205', '2', '2', '0', '0', '0', '0', '22', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('206', '2', '2', '0', '0', '1', '0', '22', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('207', '2', '2', '0', '0', '0', '0', '22', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('208', '2', '2', '0', '0', '0', '0', '23', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('209', '2', '2', '0', '0', '1', '0', '23', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('210', '2', '2', '0', '0', '0', '0', '23', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('211', '2', '2', '0', '1', '0', '0', '23', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('212', '2', '2', '0', '0', '0', '0', '23', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('213', '2', '2', '0', '1', '0', '0', '23', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('214', '2', '2', '0', '0', '0', '0', '23', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('215', '2', '2', '0', '0', '1', '0', '23', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('216', '2', '2', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('217', '2', '2', '0', '0', '0', '1', '24', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('218', '2', '2', '0', '0', '1', '1', '24', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('219', '2', '2', '0', '0', '0', '1', '24', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('220', '2', '2', '0', '1', '0', '1', '24', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('221', '2', '2', '0', '0', '0', '1', '24', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('222', '2', '2', '0', '1', '0', '1', '24', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('223', '2', '2', '0', '0', '0', '1', '24', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('224', '2', '2', '0', '0', '1', '1', '24', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('225', '2', '2', '0', '0', '0', '1', '24', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('226', '2', '2', '0', '0', '0', '1', '25', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('227', '2', '2', '0', '0', '1', '1', '25', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('228', '2', '2', '0', '0', '0', '1', '25', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('229', '2', '2', '0', '1', '0', '1', '25', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('230', '2', '2', '0', '0', '0', '1', '25', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('231', '2', '2', '0', '1', '0', '1', '25', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('232', '2', '2', '0', '0', '0', '1', '25', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('233', '2', '2', '0', '0', '1', '1', '25', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('234', '2', '2', '0', '0', '0', '1', '25', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('235', '2', '2', '0', '0', '0', '1', '26', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('236', '2', '2', '0', '0', '1', '1', '26', '1', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('237', '2', '2', '0', '0', '0', '1', '26', '2', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('238', '2', '2', '0', '1', '0', '1', '26', '3', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('239', '2', '2', '0', '0', '0', '1', '26', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('240', '2', '2', '0', '1', '0', '1', '26', '5', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('241', '2', '2', '0', '0', '0', '1', '26', '6', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('242', '2', '2', '0', '0', '1', '1', '26', '7', '0000');
INSERT INTO `tab_a32e_copy` VALUES ('243', '2', '2', '0', '0', '0', '1', '26', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('244', '2', '2', '2', '2', '2', '2', '27', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('245', '2', '2', '2', '2', '2', '2', '27', '1', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('246', '2', '2', '2', '2', '2', '2', '27', '2', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('247', '2', '2', '2', '2', '2', '2', '27', '3', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('248', '2', '2', '2', '2', '2', '2', '27', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('249', '2', '2', '2', '2', '2', '2', '27', '5', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('250', '2', '2', '2', '2', '2', '2', '27', '6', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('251', '2', '2', '2', '2', '2', '2', '27', '7', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('252', '2', '2', '2', '2', '2', '2', '27', '8', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('253', '2', '2', '2', '2', '2', '2', '28', '0', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('254', '2', '2', '2', '2', '2', '2', '28', '1', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('255', '2', '2', '2', '2', '2', '2', '28', '2', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('256', '2', '2', '2', '2', '2', '2', '28', '3', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('257', '2', '2', '2', '2', '2', '2', '28', '4', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('258', '2', '2', '2', '2', '2', '2', '28', '5', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('259', '2', '2', '2', '2', '2', '2', '28', '6', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('260', '2', '2', '2', '2', '2', '2', '28', '7', '0002');
INSERT INTO `tab_a32e_copy` VALUES ('261', '2', '2', '2', '2', '2', '2', '28', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a32g`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a32g`;
CREATE TABLE `tab_a32g` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型 （0经济舱1公务舱2头等舱）',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a32g
-- ----------------------------
INSERT INTO `tab_a32g` VALUES ('1', '2', '2', '1', '0', '0', '1', '0', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('2', '2', '2', '1', '0', '1', '1', '0', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('3', '2', '2', '1', '0', '0', '1', '0', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('4', '2', '2', '1', '1', '0', '1', '0', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('5', '2', '2', '1', '0', '0', '1', '0', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('6', '2', '2', '1', '1', '0', '1', '0', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('7', '2', '2', '1', '0', '0', '1', '0', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('8', '2', '2', '1', '0', '1', '1', '0', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('9', '2', '2', '1', '0', '0', '1', '0', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('10', '2', '2', '1', '0', '0', '1', '1', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('11', '2', '2', '1', '0', '1', '1', '1', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('12', '2', '2', '1', '0', '0', '1', '1', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('13', '2', '2', '1', '1', '0', '1', '1', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('14', '2', '2', '1', '0', '0', '1', '1', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('15', '2', '2', '1', '1', '0', '1', '1', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('16', '2', '2', '1', '0', '0', '1', '1', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('17', '2', '2', '1', '0', '1', '1', '1', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('18', '2', '2', '1', '0', '0', '1', '1', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('19', '2', '2', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('20', '2', '2', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('21', '2', '2', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('22', '2', '2', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('23', '2', '2', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('24', '2', '2', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('25', '2', '2', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('26', '2', '2', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('27', '2', '2', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('28', '2', '2', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('29', '2', '2', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('30', '2', '2', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('31', '2', '2', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('32', '2', '2', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('33', '2', '2', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('34', '2', '2', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('35', '2', '2', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('36', '2', '2', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('37', '2', '2', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('38', '2', '2', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('39', '2', '2', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('40', '2', '2', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('41', '2', '2', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('42', '2', '2', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('43', '2', '2', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('44', '2', '2', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('45', '2', '2', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('46', '2', '2', '0', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('47', '2', '2', '0', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('48', '2', '2', '0', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('49', '2', '2', '0', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('50', '2', '2', '0', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('51', '2', '2', '0', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('52', '2', '2', '0', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('53', '2', '2', '0', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('54', '2', '2', '0', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('55', '2', '2', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('56', '2', '2', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('57', '2', '2', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('58', '2', '2', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('59', '2', '2', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('60', '2', '2', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('61', '2', '2', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('62', '2', '2', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('63', '2', '2', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('64', '2', '2', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('65', '2', '2', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('66', '2', '2', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('67', '2', '2', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('68', '2', '2', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('69', '2', '2', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('70', '2', '2', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('71', '2', '2', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('72', '2', '2', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('73', '2', '2', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('74', '2', '2', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('75', '2', '2', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('76', '2', '2', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('77', '2', '2', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('78', '2', '2', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('79', '2', '2', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('80', '2', '2', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('81', '2', '2', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('82', '2', '2', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('83', '2', '2', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('84', '2', '2', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('85', '2', '2', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('86', '2', '2', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('87', '2', '2', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('88', '2', '2', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('89', '2', '2', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('90', '2', '2', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('91', '2', '2', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('92', '2', '2', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('93', '2', '2', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('94', '2', '2', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('95', '2', '2', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('96', '2', '2', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('97', '2', '2', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('98', '2', '2', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('99', '2', '2', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('100', '2', '2', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('101', '2', '2', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('102', '2', '2', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('103', '2', '2', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('104', '2', '2', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('105', '2', '2', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('106', '2', '2', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('107', '2', '2', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('108', '2', '2', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('109', '2', '2', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('110', '2', '2', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('111', '2', '2', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('112', '2', '2', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('113', '2', '2', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('114', '2', '2', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('115', '2', '2', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('116', '2', '2', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('117', '2', '2', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('118', '2', '2', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('119', '2', '2', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('120', '2', '2', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('121', '2', '2', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('122', '2', '2', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('123', '2', '2', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('124', '2', '2', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('125', '2', '2', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('126', '2', '2', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('127', '2', '2', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('128', '2', '2', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('129', '2', '2', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('130', '2', '2', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('131', '2', '2', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('132', '2', '2', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('133', '2', '2', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('134', '2', '2', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('135', '2', '2', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('136', '2', '2', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('137', '2', '2', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('138', '2', '2', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('139', '2', '2', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('140', '2', '2', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('141', '2', '2', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('142', '2', '2', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('143', '2', '2', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('144', '2', '2', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('145', '2', '2', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('146', '2', '2', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('147', '2', '2', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('148', '2', '2', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('149', '2', '2', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('150', '2', '2', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('151', '2', '2', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('152', '2', '2', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('153', '2', '2', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('154', '2', '2', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('155', '2', '2', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('156', '2', '2', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('157', '2', '2', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('158', '2', '2', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('159', '2', '2', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('160', '2', '2', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('161', '2', '2', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('162', '2', '2', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('163', '2', '2', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('164', '2', '2', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('165', '2', '2', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('166', '2', '2', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('167', '2', '2', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('168', '2', '2', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('169', '2', '2', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('170', '2', '2', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('171', '2', '2', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('172', '2', '2', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('173', '2', '2', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('174', '2', '2', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('175', '2', '2', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('176', '2', '2', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('177', '2', '2', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('178', '2', '2', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('179', '2', '2', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('180', '2', '2', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('181', '2', '2', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('182', '2', '2', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('183', '2', '2', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('184', '2', '2', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('185', '2', '2', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('186', '2', '2', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('187', '2', '2', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('188', '2', '2', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('189', '2', '2', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('190', '2', '2', '0', '0', '0', '0', '21', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('191', '2', '2', '0', '0', '1', '0', '21', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('192', '2', '2', '0', '0', '0', '0', '21', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('193', '2', '2', '0', '1', '0', '0', '21', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('194', '2', '2', '0', '0', '0', '0', '21', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('195', '2', '2', '0', '1', '0', '0', '21', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('196', '2', '2', '0', '0', '0', '0', '21', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('197', '2', '2', '0', '0', '1', '0', '21', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('198', '2', '2', '0', '0', '0', '0', '21', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('199', '2', '2', '0', '0', '0', '0', '22', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('200', '2', '2', '0', '0', '1', '0', '22', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('201', '2', '2', '0', '0', '0', '0', '22', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('202', '2', '2', '0', '1', '0', '0', '22', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('203', '2', '2', '0', '0', '0', '0', '22', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('204', '2', '2', '0', '1', '0', '0', '22', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('205', '2', '2', '0', '0', '0', '0', '22', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('206', '2', '2', '0', '0', '1', '0', '22', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('207', '2', '2', '0', '0', '0', '0', '22', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('208', '2', '2', '0', '0', '0', '0', '23', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('209', '2', '2', '0', '0', '1', '0', '23', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('210', '2', '2', '0', '0', '0', '0', '23', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('211', '2', '2', '0', '1', '0', '0', '23', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('212', '2', '2', '0', '0', '0', '0', '23', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('213', '2', '2', '0', '1', '0', '0', '23', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('214', '2', '2', '0', '0', '0', '0', '23', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('215', '2', '2', '0', '0', '1', '0', '23', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('216', '2', '2', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('217', '2', '2', '0', '0', '0', '1', '24', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('218', '2', '2', '0', '0', '1', '1', '24', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('219', '2', '2', '0', '0', '0', '1', '24', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('220', '2', '2', '0', '1', '0', '1', '24', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('221', '2', '2', '0', '0', '0', '1', '24', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('222', '2', '2', '0', '1', '0', '1', '24', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('223', '2', '2', '0', '0', '0', '1', '24', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('224', '2', '2', '0', '0', '1', '1', '24', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('225', '2', '2', '0', '0', '0', '1', '24', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('226', '2', '2', '0', '0', '0', '1', '25', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('227', '2', '2', '0', '0', '1', '1', '25', '1', '0000');
INSERT INTO `tab_a32g` VALUES ('228', '2', '2', '0', '0', '0', '1', '25', '2', '0000');
INSERT INTO `tab_a32g` VALUES ('229', '2', '2', '0', '1', '0', '1', '25', '3', '0000');
INSERT INTO `tab_a32g` VALUES ('230', '2', '2', '0', '0', '0', '1', '25', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('231', '2', '2', '0', '1', '0', '1', '25', '5', '0000');
INSERT INTO `tab_a32g` VALUES ('232', '2', '2', '0', '0', '0', '1', '25', '6', '0000');
INSERT INTO `tab_a32g` VALUES ('233', '2', '2', '0', '0', '1', '1', '25', '7', '0000');
INSERT INTO `tab_a32g` VALUES ('234', '2', '2', '0', '0', '0', '1', '25', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('235', '2', '2', '2', '2', '2', '2', '26', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('236', '2', '2', '2', '2', '2', '2', '26', '1', '0002');
INSERT INTO `tab_a32g` VALUES ('237', '2', '2', '2', '2', '2', '2', '26', '2', '0002');
INSERT INTO `tab_a32g` VALUES ('238', '2', '2', '2', '2', '2', '2', '26', '3', '0002');
INSERT INTO `tab_a32g` VALUES ('239', '2', '2', '2', '2', '2', '2', '26', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('240', '2', '2', '2', '2', '2', '2', '26', '5', '0002');
INSERT INTO `tab_a32g` VALUES ('241', '2', '2', '2', '2', '2', '2', '26', '6', '0002');
INSERT INTO `tab_a32g` VALUES ('242', '2', '2', '2', '2', '2', '2', '26', '7', '0002');
INSERT INTO `tab_a32g` VALUES ('243', '2', '2', '2', '2', '2', '2', '26', '8', '0002');
INSERT INTO `tab_a32g` VALUES ('244', '2', '2', '2', '2', '2', '2', '27', '0', '0002');
INSERT INTO `tab_a32g` VALUES ('245', '2', '2', '2', '2', '2', '2', '27', '1', '0002');
INSERT INTO `tab_a32g` VALUES ('246', '2', '2', '2', '2', '2', '2', '27', '2', '0002');
INSERT INTO `tab_a32g` VALUES ('247', '2', '2', '2', '2', '2', '2', '27', '3', '0002');
INSERT INTO `tab_a32g` VALUES ('248', '2', '2', '2', '2', '2', '2', '27', '4', '0002');
INSERT INTO `tab_a32g` VALUES ('249', '2', '2', '2', '2', '2', '2', '27', '5', '0002');
INSERT INTO `tab_a32g` VALUES ('250', '2', '2', '2', '2', '2', '2', '27', '6', '0002');
INSERT INTO `tab_a32g` VALUES ('251', '2', '2', '2', '2', '2', '2', '27', '7', '0002');
INSERT INTO `tab_a32g` VALUES ('252', '2', '2', '2', '2', '2', '2', '27', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a32g_copy`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a32g_copy`;
CREATE TABLE `tab_a32g_copy` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型 （0经济舱1公务舱2头等舱）',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a32g_copy
-- ----------------------------
INSERT INTO `tab_a32g_copy` VALUES ('1', '2', '2', '1', '0', '0', '1', '0', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('2', '2', '2', '1', '0', '1', '1', '0', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('3', '2', '2', '1', '0', '0', '1', '0', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('4', '2', '2', '1', '1', '0', '1', '0', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('5', '2', '2', '1', '0', '0', '1', '0', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('6', '2', '2', '1', '1', '0', '1', '0', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('7', '2', '2', '1', '0', '0', '1', '0', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('8', '2', '2', '1', '0', '1', '1', '0', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('9', '2', '2', '1', '0', '0', '1', '0', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('10', '2', '2', '1', '0', '0', '1', '1', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('11', '2', '2', '1', '0', '1', '1', '1', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('12', '2', '2', '1', '0', '0', '1', '1', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('13', '2', '2', '1', '1', '0', '1', '1', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('14', '2', '2', '1', '0', '0', '1', '1', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('15', '2', '2', '1', '1', '0', '1', '1', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('16', '2', '2', '1', '0', '0', '1', '1', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('17', '2', '2', '1', '0', '1', '1', '1', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('18', '2', '2', '1', '0', '0', '1', '1', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('19', '2', '2', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('20', '2', '2', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('21', '2', '2', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('22', '2', '2', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('23', '2', '2', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('24', '2', '2', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('25', '2', '2', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('26', '2', '2', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('27', '2', '2', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('28', '2', '2', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('29', '2', '2', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('30', '2', '2', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('31', '2', '2', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('32', '2', '2', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('33', '2', '2', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('34', '2', '2', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('35', '2', '2', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('36', '2', '2', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('37', '2', '2', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('38', '2', '2', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('39', '2', '2', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('40', '2', '2', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('41', '2', '2', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('42', '2', '2', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('43', '2', '2', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('44', '2', '2', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('45', '2', '2', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('46', '2', '2', '0', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('47', '2', '2', '0', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('48', '2', '2', '0', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('49', '2', '2', '0', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('50', '2', '2', '0', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('51', '2', '2', '0', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('52', '2', '2', '0', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('53', '2', '2', '0', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('54', '2', '2', '0', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('55', '2', '2', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('56', '2', '2', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('57', '2', '2', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('58', '2', '2', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('59', '2', '2', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('60', '2', '2', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('61', '2', '2', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('62', '2', '2', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('63', '2', '2', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('64', '2', '2', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('65', '2', '2', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('66', '2', '2', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('67', '2', '2', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('68', '2', '2', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('69', '2', '2', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('70', '2', '2', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('71', '2', '2', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('72', '2', '2', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('73', '2', '2', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('74', '2', '2', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('75', '2', '2', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('76', '2', '2', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('77', '2', '2', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('78', '2', '2', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('79', '2', '2', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('80', '2', '2', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('81', '2', '2', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('82', '2', '2', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('83', '2', '2', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('84', '2', '2', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('85', '2', '2', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('86', '2', '2', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('87', '2', '2', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('88', '2', '2', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('89', '2', '2', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('90', '2', '2', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('91', '2', '2', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('92', '2', '2', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('93', '2', '2', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('94', '2', '2', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('95', '2', '2', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('96', '2', '2', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('97', '2', '2', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('98', '2', '2', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('99', '2', '2', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('100', '2', '2', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('101', '2', '2', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('102', '2', '2', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('103', '2', '2', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('104', '2', '2', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('105', '2', '2', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('106', '2', '2', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('107', '2', '2', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('108', '2', '2', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('109', '2', '2', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('110', '2', '2', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('111', '2', '2', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('112', '2', '2', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('113', '2', '2', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('114', '2', '2', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('115', '2', '2', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('116', '2', '2', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('117', '2', '2', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('118', '2', '2', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('119', '2', '2', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('120', '2', '2', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('121', '2', '2', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('122', '2', '2', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('123', '2', '2', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('124', '2', '2', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('125', '2', '2', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('126', '2', '2', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('127', '2', '2', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('128', '2', '2', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('129', '2', '2', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('130', '2', '2', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('131', '2', '2', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('132', '2', '2', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('133', '2', '2', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('134', '2', '2', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('135', '2', '2', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('136', '2', '2', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('137', '2', '2', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('138', '2', '2', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('139', '2', '2', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('140', '2', '2', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('141', '2', '2', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('142', '2', '2', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('143', '2', '2', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('144', '2', '2', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('145', '2', '2', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('146', '2', '2', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('147', '2', '2', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('148', '2', '2', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('149', '2', '2', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('150', '2', '2', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('151', '2', '2', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('152', '2', '2', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('153', '2', '2', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('154', '2', '2', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('155', '2', '2', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('156', '2', '2', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('157', '2', '2', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('158', '2', '2', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('159', '2', '2', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('160', '2', '2', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('161', '2', '2', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('162', '2', '2', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('163', '2', '2', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('164', '2', '2', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('165', '2', '2', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('166', '2', '2', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('167', '2', '2', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('168', '2', '2', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('169', '2', '2', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('170', '2', '2', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('171', '2', '2', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('172', '2', '2', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('173', '2', '2', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('174', '2', '2', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('175', '2', '2', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('176', '2', '2', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('177', '2', '2', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('178', '2', '2', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('179', '2', '2', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('180', '2', '2', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('181', '2', '2', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('182', '2', '2', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('183', '2', '2', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('184', '2', '2', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('185', '2', '2', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('186', '2', '2', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('187', '2', '2', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('188', '2', '2', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('189', '2', '2', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('190', '2', '2', '0', '0', '0', '0', '21', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('191', '2', '2', '0', '0', '1', '0', '21', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('192', '2', '2', '0', '0', '0', '0', '21', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('193', '2', '2', '0', '1', '0', '0', '21', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('194', '2', '2', '0', '0', '0', '0', '21', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('195', '2', '2', '0', '1', '0', '0', '21', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('196', '2', '2', '0', '0', '0', '0', '21', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('197', '2', '2', '0', '0', '1', '0', '21', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('198', '2', '2', '0', '0', '0', '0', '21', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('199', '2', '2', '0', '0', '0', '0', '22', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('200', '2', '2', '0', '0', '1', '0', '22', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('201', '2', '2', '0', '0', '0', '0', '22', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('202', '2', '2', '0', '1', '0', '0', '22', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('203', '2', '2', '0', '0', '0', '0', '22', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('204', '2', '2', '0', '1', '0', '0', '22', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('205', '2', '2', '0', '0', '0', '0', '22', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('206', '2', '2', '0', '0', '1', '0', '22', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('207', '2', '2', '0', '0', '0', '0', '22', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('208', '2', '2', '0', '0', '0', '0', '23', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('209', '2', '2', '0', '0', '1', '0', '23', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('210', '2', '2', '0', '0', '0', '0', '23', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('211', '2', '2', '0', '1', '0', '0', '23', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('212', '2', '2', '0', '0', '0', '0', '23', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('213', '2', '2', '0', '1', '0', '0', '23', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('214', '2', '2', '0', '0', '0', '0', '23', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('215', '2', '2', '0', '0', '1', '0', '23', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('216', '2', '2', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('217', '2', '2', '0', '0', '0', '1', '24', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('218', '2', '2', '0', '0', '1', '1', '24', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('219', '2', '2', '0', '0', '0', '1', '24', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('220', '2', '2', '0', '1', '0', '1', '24', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('221', '2', '2', '0', '0', '0', '1', '24', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('222', '2', '2', '0', '1', '0', '1', '24', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('223', '2', '2', '0', '0', '0', '1', '24', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('224', '2', '2', '0', '0', '1', '1', '24', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('225', '2', '2', '0', '0', '0', '1', '24', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('226', '2', '2', '0', '0', '0', '1', '25', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('227', '2', '2', '0', '0', '1', '1', '25', '1', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('228', '2', '2', '0', '0', '0', '1', '25', '2', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('229', '2', '2', '0', '1', '0', '1', '25', '3', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('230', '2', '2', '0', '0', '0', '1', '25', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('231', '2', '2', '0', '1', '0', '1', '25', '5', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('232', '2', '2', '0', '0', '0', '1', '25', '6', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('233', '2', '2', '0', '0', '1', '1', '25', '7', '0000');
INSERT INTO `tab_a32g_copy` VALUES ('234', '2', '2', '0', '0', '0', '1', '25', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('235', '2', '2', '2', '2', '2', '2', '26', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('236', '2', '2', '2', '2', '2', '2', '26', '1', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('237', '2', '2', '2', '2', '2', '2', '26', '2', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('238', '2', '2', '2', '2', '2', '2', '26', '3', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('239', '2', '2', '2', '2', '2', '2', '26', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('240', '2', '2', '2', '2', '2', '2', '26', '5', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('241', '2', '2', '2', '2', '2', '2', '26', '6', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('242', '2', '2', '2', '2', '2', '2', '26', '7', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('243', '2', '2', '2', '2', '2', '2', '26', '8', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('244', '2', '2', '2', '2', '2', '2', '27', '0', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('245', '2', '2', '2', '2', '2', '2', '27', '1', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('246', '2', '2', '2', '2', '2', '2', '27', '2', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('247', '2', '2', '2', '2', '2', '2', '27', '3', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('248', '2', '2', '2', '2', '2', '2', '27', '4', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('249', '2', '2', '2', '2', '2', '2', '27', '5', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('250', '2', '2', '2', '2', '2', '2', '27', '6', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('251', '2', '2', '2', '2', '2', '2', '27', '7', '0002');
INSERT INTO `tab_a32g_copy` VALUES ('252', '2', '2', '2', '2', '2', '2', '27', '8', '0002');

-- ----------------------------
-- Table structure for `tab_a32n`
-- ----------------------------
DROP TABLE IF EXISTS `tab_a32n`;
CREATE TABLE `tab_a32n` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `class_type` int(8) DEFAULT NULL COMMENT '舱位类型  0经济舱1公务舱2头等舱',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `isbefore` tinyint(4) DEFAULT NULL COMMENT '是否是前排  0是1否',
  `isasile` tinyint(4) DEFAULT NULL COMMENT '是否靠过道  0否1是',
  `iswindow` tinyint(4) DEFAULT NULL COMMENT '是否靠窗 0否1是',
  `isgate` tinyint(4) DEFAULT NULL COMMENT '是否靠登机口  0否1是',
  `row` int(4) DEFAULT NULL COMMENT '行 ',
  `column` int(4) DEFAULT NULL COMMENT '列',
  `ischoose` tinyint(4) unsigned zerofill DEFAULT NULL COMMENT '是否已选  0未选1已选2锁定不可选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_a32n
-- ----------------------------
INSERT INTO `tab_a32n` VALUES ('1', '1', '1', '1', '0', '0', '0', '0', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('2', '1', '1', '1', '0', '1', '0', '0', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('3', '1', '1', '1', '0', '0', '0', '0', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('4', '1', '1', '1', '1', '0', '0', '0', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('5', '1', '1', '1', '0', '0', '0', '0', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('6', '1', '1', '1', '1', '0', '0', '0', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('7', '1', '1', '1', '0', '0', '0', '0', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('8', '1', '1', '1', '0', '1', '0', '0', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('9', '1', '1', '1', '0', '0', '0', '0', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('10', '1', '1', '1', '0', '0', '0', '1', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('11', '1', '1', '1', '0', '1', '0', '1', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('12', '1', '1', '1', '0', '0', '0', '1', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('13', '1', '1', '1', '1', '0', '0', '1', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('14', '1', '1', '1', '0', '0', '0', '1', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('15', '1', '1', '1', '1', '0', '0', '1', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('16', '1', '1', '1', '0', '0', '0', '1', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('17', '1', '1', '1', '0', '1', '0', '1', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('18', '1', '1', '1', '0', '0', '0', '1', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('19', '1', '1', '1', '0', '0', '0', '2', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('20', '1', '1', '1', '0', '1', '0', '2', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('21', '1', '1', '1', '0', '0', '0', '2', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('22', '1', '1', '1', '1', '0', '0', '2', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('23', '1', '1', '1', '0', '0', '0', '2', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('24', '1', '1', '1', '1', '0', '0', '2', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('25', '1', '1', '1', '0', '0', '0', '2', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('26', '1', '1', '1', '0', '1', '0', '2', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('27', '1', '1', '1', '0', '0', '0', '2', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('28', '1', '1', '1', '0', '0', '0', '3', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('29', '1', '1', '1', '0', '1', '0', '3', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('30', '1', '1', '1', '0', '0', '0', '3', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('31', '1', '1', '1', '1', '0', '0', '3', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('32', '1', '1', '1', '0', '0', '0', '3', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('33', '1', '1', '1', '1', '0', '0', '3', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('34', '1', '1', '1', '0', '0', '0', '3', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('35', '1', '1', '1', '0', '1', '0', '3', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('36', '1', '1', '1', '0', '0', '0', '3', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('37', '1', '1', '1', '0', '0', '0', '4', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('38', '1', '1', '1', '0', '1', '0', '4', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('39', '1', '1', '1', '0', '0', '0', '4', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('40', '1', '1', '1', '1', '0', '0', '4', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('41', '1', '1', '1', '0', '0', '0', '4', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('42', '1', '1', '1', '1', '0', '0', '4', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('43', '1', '1', '1', '0', '0', '0', '4', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('44', '1', '1', '1', '0', '1', '0', '4', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('45', '1', '1', '1', '0', '0', '0', '4', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('46', '1', '1', '1', '0', '0', '0', '5', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('47', '1', '1', '1', '0', '1', '0', '5', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('48', '1', '1', '1', '0', '0', '0', '5', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('49', '1', '1', '1', '1', '0', '0', '5', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('50', '1', '1', '1', '0', '0', '0', '5', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('51', '1', '1', '1', '1', '0', '0', '5', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('52', '1', '1', '1', '0', '0', '0', '5', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('53', '1', '1', '1', '0', '1', '0', '5', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('54', '1', '1', '1', '0', '0', '0', '5', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('55', '1', '1', '0', '0', '0', '0', '6', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('56', '1', '1', '0', '0', '1', '0', '6', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('57', '1', '1', '0', '0', '0', '0', '6', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('58', '1', '1', '0', '1', '0', '0', '6', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('59', '1', '1', '0', '0', '0', '0', '6', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('60', '1', '1', '0', '1', '0', '0', '6', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('61', '1', '1', '0', '0', '0', '0', '6', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('62', '1', '1', '0', '0', '1', '0', '6', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('63', '1', '1', '0', '0', '0', '0', '6', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('64', '1', '1', '0', '0', '0', '0', '7', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('65', '1', '1', '0', '0', '1', '0', '7', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('66', '1', '1', '0', '0', '0', '0', '7', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('67', '1', '1', '0', '1', '0', '0', '7', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('68', '1', '1', '0', '0', '0', '0', '7', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('69', '1', '1', '0', '1', '0', '0', '7', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('70', '1', '1', '0', '0', '0', '0', '7', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('71', '1', '1', '0', '0', '1', '0', '7', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('72', '1', '1', '0', '0', '0', '0', '7', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('73', '1', '1', '0', '0', '0', '0', '8', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('74', '1', '1', '0', '0', '1', '0', '8', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('75', '1', '1', '0', '0', '0', '0', '8', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('76', '1', '1', '0', '1', '0', '0', '8', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('77', '1', '1', '0', '0', '0', '0', '8', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('78', '1', '1', '0', '1', '0', '0', '8', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('79', '1', '1', '0', '0', '0', '0', '8', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('80', '1', '1', '0', '0', '1', '0', '8', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('81', '1', '1', '0', '0', '0', '0', '8', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('82', '1', '1', '0', '0', '0', '0', '9', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('83', '1', '1', '0', '0', '1', '0', '9', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('84', '1', '1', '0', '0', '0', '0', '9', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('85', '1', '1', '0', '1', '0', '0', '9', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('86', '1', '1', '0', '0', '0', '0', '9', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('87', '1', '1', '0', '1', '0', '0', '9', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('88', '1', '1', '0', '0', '0', '0', '9', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('89', '1', '1', '0', '0', '1', '0', '9', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('90', '1', '1', '0', '0', '0', '0', '9', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('91', '1', '1', '0', '0', '0', '0', '10', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('92', '1', '1', '0', '0', '1', '0', '10', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('93', '1', '1', '0', '0', '0', '0', '10', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('94', '1', '1', '0', '1', '0', '0', '10', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('95', '1', '1', '0', '0', '0', '0', '10', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('96', '1', '1', '0', '1', '0', '0', '10', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('97', '1', '1', '0', '0', '0', '0', '10', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('98', '1', '1', '0', '0', '1', '0', '10', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('99', '1', '1', '0', '0', '0', '0', '10', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('100', '1', '1', '0', '0', '0', '0', '11', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('101', '1', '1', '0', '0', '1', '0', '11', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('102', '1', '1', '0', '0', '0', '0', '11', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('103', '1', '1', '0', '1', '0', '0', '11', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('104', '1', '1', '0', '0', '0', '0', '11', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('105', '1', '1', '0', '1', '0', '0', '11', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('106', '1', '1', '0', '0', '0', '0', '11', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('107', '1', '1', '0', '0', '1', '0', '11', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('108', '1', '1', '0', '0', '0', '0', '11', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('109', '1', '1', '0', '0', '0', '0', '12', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('110', '1', '1', '0', '0', '1', '0', '12', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('111', '1', '1', '0', '0', '0', '0', '12', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('112', '1', '1', '0', '1', '0', '0', '12', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('113', '1', '1', '0', '0', '0', '0', '12', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('114', '1', '1', '0', '1', '0', '0', '12', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('115', '1', '1', '0', '0', '0', '0', '12', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('116', '1', '1', '0', '0', '1', '0', '12', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('117', '1', '1', '0', '0', '0', '0', '12', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('118', '1', '1', '0', '0', '0', '0', '13', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('119', '1', '1', '0', '0', '1', '0', '13', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('120', '1', '1', '0', '0', '0', '0', '13', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('121', '1', '1', '0', '1', '0', '0', '13', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('122', '1', '1', '0', '0', '0', '0', '13', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('123', '1', '1', '0', '1', '0', '0', '13', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('124', '1', '1', '0', '0', '0', '0', '13', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('125', '1', '1', '0', '0', '1', '0', '13', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('126', '1', '1', '0', '0', '0', '0', '13', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('127', '1', '1', '0', '0', '0', '0', '14', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('128', '1', '1', '0', '0', '1', '0', '14', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('129', '1', '1', '0', '0', '0', '0', '14', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('130', '1', '1', '0', '1', '0', '0', '14', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('131', '1', '1', '0', '0', '0', '0', '14', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('132', '1', '1', '0', '1', '0', '0', '14', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('133', '1', '1', '0', '0', '0', '0', '14', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('134', '1', '1', '0', '0', '1', '0', '14', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('135', '1', '1', '0', '0', '0', '0', '14', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('136', '1', '1', '0', '0', '0', '0', '15', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('137', '1', '1', '0', '0', '1', '0', '15', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('138', '1', '1', '0', '0', '0', '0', '15', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('139', '1', '1', '0', '1', '0', '0', '15', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('140', '1', '1', '0', '0', '0', '0', '15', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('141', '1', '1', '0', '1', '0', '0', '15', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('142', '1', '1', '0', '0', '0', '0', '15', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('143', '1', '1', '0', '0', '1', '0', '15', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('144', '1', '1', '0', '0', '0', '0', '15', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('145', '1', '1', '0', '0', '0', '0', '16', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('146', '1', '1', '0', '0', '1', '0', '16', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('147', '1', '1', '0', '0', '0', '0', '16', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('148', '1', '1', '0', '1', '0', '0', '16', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('149', '1', '1', '0', '0', '0', '0', '16', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('150', '1', '1', '0', '1', '0', '0', '16', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('151', '1', '1', '0', '0', '0', '0', '16', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('152', '1', '1', '0', '0', '1', '0', '16', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('153', '1', '1', '0', '0', '0', '0', '16', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('154', '1', '1', '0', '0', '0', '0', '17', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('155', '1', '1', '0', '0', '1', '0', '17', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('156', '1', '1', '0', '0', '0', '0', '17', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('157', '1', '1', '0', '1', '0', '0', '17', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('158', '1', '1', '0', '0', '0', '0', '17', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('159', '1', '1', '0', '1', '0', '0', '17', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('160', '1', '1', '0', '0', '0', '0', '17', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('161', '1', '1', '0', '0', '1', '0', '17', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('162', '1', '1', '0', '0', '0', '0', '17', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('163', '1', '1', '0', '0', '0', '0', '18', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('164', '1', '1', '0', '0', '1', '0', '18', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('165', '1', '1', '0', '0', '0', '0', '18', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('166', '1', '1', '0', '1', '0', '0', '18', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('167', '1', '1', '0', '0', '0', '0', '18', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('168', '1', '1', '0', '1', '0', '0', '18', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('169', '1', '1', '0', '0', '0', '0', '18', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('170', '1', '1', '0', '0', '1', '0', '18', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('171', '1', '1', '0', '0', '0', '0', '18', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('172', '1', '1', '0', '0', '0', '0', '19', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('173', '1', '1', '0', '0', '1', '0', '19', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('174', '1', '1', '0', '0', '0', '0', '19', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('175', '1', '1', '0', '1', '0', '0', '19', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('176', '1', '1', '0', '0', '0', '0', '19', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('177', '1', '1', '0', '1', '0', '0', '19', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('178', '1', '1', '0', '0', '0', '0', '19', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('179', '1', '1', '0', '0', '1', '0', '19', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('180', '1', '1', '0', '0', '0', '0', '19', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('181', '1', '1', '0', '0', '0', '0', '20', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('182', '1', '1', '0', '0', '1', '0', '20', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('183', '1', '1', '0', '0', '0', '0', '20', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('184', '1', '1', '0', '1', '0', '0', '20', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('185', '1', '1', '0', '0', '0', '0', '20', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('186', '1', '1', '0', '1', '0', '0', '20', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('187', '1', '1', '0', '0', '0', '0', '20', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('188', '1', '1', '0', '0', '1', '0', '20', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('189', '1', '1', '0', '0', '0', '0', '20', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('190', '1', '1', '0', '0', '0', '1', '21', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('191', '1', '1', '0', '0', '1', '1', '21', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('192', '1', '1', '0', '0', '0', '1', '21', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('193', '1', '1', '0', '1', '0', '1', '21', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('194', '1', '1', '0', '0', '0', '1', '21', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('195', '1', '1', '0', '1', '0', '1', '21', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('196', '1', '1', '0', '0', '0', '1', '21', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('197', '1', '1', '0', '0', '1', '1', '21', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('198', '1', '1', '0', '0', '0', '1', '21', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('199', '1', '1', '0', '0', '0', '1', '22', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('200', '1', '1', '0', '0', '1', '1', '22', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('201', '1', '1', '0', '0', '0', '1', '22', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('202', '1', '1', '0', '1', '0', '1', '22', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('203', '1', '1', '0', '0', '0', '1', '22', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('204', '1', '1', '0', '1', '0', '1', '22', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('205', '1', '1', '0', '0', '0', '1', '22', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('206', '1', '1', '0', '0', '1', '1', '22', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('207', '1', '1', '0', '0', '0', '1', '22', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('208', '1', '1', '0', '0', '0', '1', '23', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('209', '1', '1', '0', '0', '1', '1', '23', '1', '0000');
INSERT INTO `tab_a32n` VALUES ('210', '1', '1', '0', '0', '0', '1', '23', '2', '0000');
INSERT INTO `tab_a32n` VALUES ('211', '1', '1', '0', '1', '0', '1', '23', '3', '0000');
INSERT INTO `tab_a32n` VALUES ('212', '1', '1', '0', '0', '0', '1', '23', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('213', '1', '1', '0', '1', '0', '1', '23', '5', '0000');
INSERT INTO `tab_a32n` VALUES ('214', '1', '1', '0', '0', '0', '1', '23', '6', '0000');
INSERT INTO `tab_a32n` VALUES ('215', '1', '1', '0', '0', '1', '1', '23', '7', '0000');
INSERT INTO `tab_a32n` VALUES ('216', '1', '1', '0', '0', '0', '0', '23', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('217', '1', '1', '0', '0', '0', '0', '24', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('218', '1', '1', '0', '0', '1', '0', '24', '1', '0002');
INSERT INTO `tab_a32n` VALUES ('219', '1', '1', '0', '0', '0', '0', '24', '2', '0002');
INSERT INTO `tab_a32n` VALUES ('220', '1', '1', '0', '1', '0', '0', '24', '3', '0002');
INSERT INTO `tab_a32n` VALUES ('221', '1', '1', '0', '0', '0', '0', '24', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('222', '1', '1', '0', '1', '0', '0', '24', '5', '0002');
INSERT INTO `tab_a32n` VALUES ('223', '1', '1', '0', '0', '0', '0', '24', '6', '0002');
INSERT INTO `tab_a32n` VALUES ('224', '1', '1', '0', '0', '1', '0', '24', '7', '0002');
INSERT INTO `tab_a32n` VALUES ('225', '1', '1', '0', '0', '0', '0', '24', '8', '0002');
INSERT INTO `tab_a32n` VALUES ('226', '1', '1', '0', '0', '0', '0', '25', '0', '0002');
INSERT INTO `tab_a32n` VALUES ('227', '1', '1', '0', '0', '0', '0', '25', '1', '0002');
INSERT INTO `tab_a32n` VALUES ('228', '1', '1', '0', '0', '0', '0', '25', '2', '0002');
INSERT INTO `tab_a32n` VALUES ('229', '1', '1', '0', '0', '0', '0', '25', '3', '0002');
INSERT INTO `tab_a32n` VALUES ('230', '1', '1', '0', '0', '0', '0', '25', '4', '0002');
INSERT INTO `tab_a32n` VALUES ('231', '1', '1', '0', '0', '0', '0', '25', '5', '0002');
INSERT INTO `tab_a32n` VALUES ('232', '1', '1', '0', '0', '0', '0', '25', '6', '0002');
INSERT INTO `tab_a32n` VALUES ('233', '1', '1', '0', '0', '0', '0', '25', '7', '0002');
INSERT INTO `tab_a32n` VALUES ('234', '1', '1', '0', '0', '0', '0', '25', '8', '0002');

-- ----------------------------
-- Table structure for `tab_book`
-- ----------------------------
DROP TABLE IF EXISTS `tab_book`;
CREATE TABLE `tab_book` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `username` varchar(40) DEFAULT NULL COMMENT '用户名（手机号码）',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别 0女1男',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机编号',
  `fight_id` int(8) DEFAULT NULL COMMENT '航班编号',
  `class_id` int(8) DEFAULT NULL COMMENT '座位编号',
  `pastype` tinyint(4) DEFAULT NULL COMMENT '乘客类型 0婴儿1儿童 2残疾3成人',
  `isbefore` tinyint(4) DEFAULT '0' COMMENT '前排  0否1是',
  `iswindow` tinyint(4) DEFAULT '0' COMMENT '是否靠窗（0否1是）',
  `isasile` tinyint(4) DEFAULT '0' COMMENT '是否靠过道（0否1是）',
  `isgate` tinyint(4) DEFAULT '0' COMMENT '是否靠登机口（0否1是）',
  `booktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订票时间',
  `iscontent` tinyint(4) DEFAULT '0' COMMENT '0未满足需求 1满足需求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_book
-- ----------------------------
INSERT INTO `tab_book` VALUES ('440', '刘梦', '13196727113', '0', '1', '1', '4', '3', '1', '0', '1', '0', '2019-07-16 10:21:04', '1');
INSERT INTO `tab_book` VALUES ('441', '杨阳', '13196727113', '1', '1', '1', '6', '3', '1', '0', '1', '0', '2019-07-16 10:21:41', '1');
INSERT INTO `tab_book` VALUES ('442', '张莉莉', '13196727113', '0', '1', '1', '3', '3', '1', '0', '0', '0', '2019-07-16 10:23:02', '1');
INSERT INTO `tab_book` VALUES ('443', '乌尔', '13196727113', '1', '1', '1', '57', '3', '0', '0', '0', '0', '2019-07-16 10:23:02', '1');
INSERT INTO `tab_book` VALUES ('444', 'lisa', '13196727113', '0', '1', '1', '2', '3', '1', '1', '0', '0', '2019-07-16 10:23:02', '1');
INSERT INTO `tab_book` VALUES ('445', '王雨', '13196727113', '0', '1', '1', '56', '3', '0', '1', '0', '0', '2019-07-16 10:23:02', '1');
INSERT INTO `tab_book` VALUES ('446', '周代', '13196727113', '1', '1', '1', '7', '3', '1', '0', '0', '0', '2019-07-16 10:23:02', '1');
INSERT INTO `tab_book` VALUES ('448', '单飞', '13685947895', '1', '1', '1', '61', '3', '0', '0', '0', '0', '2019-07-16 11:30:02', '1');
INSERT INTO `tab_book` VALUES ('449', '胡玫', '13685947895', '0', '1', '1', '12', '3', '1', '0', '0', '0', '2019-07-16 11:30:02', '1');
INSERT INTO `tab_book` VALUES ('450', '王仪', '13685947895', '0', '1', '1', '58', '3', '0', '0', '1', '0', '2019-07-16 11:30:02', '1');
INSERT INTO `tab_book` VALUES ('451', 'ck', '13685947895', '1', '1', '1', '62', '3', '0', '1', '0', '0', '2019-07-16 11:30:02', '1');
INSERT INTO `tab_book` VALUES ('452', '周代', '13685947895', '0', '1', '1', '60', '3', '0', '0', '1', '0', '2019-07-16 11:30:02', '1');
INSERT INTO `tab_book` VALUES ('453', '马利', '13196757113', '1', '1', '1', '16', '3', '1', '0', '0', '0', '2019-07-16 12:30:23', '1');

-- ----------------------------
-- Table structure for `tab_flight`
-- ----------------------------
DROP TABLE IF EXISTS `tab_flight`;
CREATE TABLE `tab_flight` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `fight_num` varchar(50) DEFAULT NULL COMMENT '航班编号',
  `plane_id` int(8) DEFAULT NULL COMMENT '飞机型号',
  `start` varchar(20) DEFAULT NULL COMMENT '出发地',
  `end` varchar(20) DEFAULT NULL COMMENT '目的地',
  `startime` varchar(20) DEFAULT NULL COMMENT '出发时间',
  `endtime` varchar(20) DEFAULT NULL COMMENT '抵达时间',
  `price` int(8) DEFAULT NULL COMMENT '价格',
  `time` varchar(20) DEFAULT NULL COMMENT '航班所耗时程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_flight
-- ----------------------------
INSERT INTO `tab_flight` VALUES ('1', '南航A320', null, null, null, null, null, null, null);
INSERT INTO `tab_flight` VALUES ('2', '南航A32E', null, null, null, null, null, null, null);
INSERT INTO `tab_flight` VALUES ('3', '南航A32G', null, null, null, null, null, null, null);
INSERT INTO `tab_flight` VALUES ('4', '南航A32N', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tab_plane`
-- ----------------------------
DROP TABLE IF EXISTS `tab_plane`;
CREATE TABLE `tab_plane` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plane_id` varchar(50) DEFAULT NULL COMMENT '飞机型号',
  `setcount` int(11) DEFAULT NULL COMMENT '座位数',
  `eco_row` int(4) DEFAULT NULL COMMENT '经济舱行',
  `eco_culm` int(4) DEFAULT NULL COMMENT '经济舱列',
  `bus_row` int(4) DEFAULT NULL COMMENT '公务舱行',
  `bus_culm` int(4) DEFAULT NULL COMMENT '公务舱列',
  `fir_row` int(4) DEFAULT NULL COMMENT '头等舱行',
  `fir_culm` int(4) DEFAULT NULL COMMENT '头等舱列',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_plane
-- ----------------------------
INSERT INTO `tab_plane` VALUES ('1', 'A320', '166', '24', '7', '2', '5', '0', '0');
INSERT INTO `tab_plane` VALUES ('2', 'A32E', null, null, null, null, null, null, null);
INSERT INTO `tab_plane` VALUES ('3', 'A32G', null, null, null, null, null, null, null);
INSERT INTO `tab_plane` VALUES ('4', 'A32N', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tab_user`
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_user
-- ----------------------------
