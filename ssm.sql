/*
Navicat MySQL Data Transfer

Source Server         : SSM
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-03-22 21:13:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `content_name` varchar(50) DEFAULT NULL COMMENT '发送者',
  `content` varchar(1000) DEFAULT NULL COMMENT '聊天内容',
  `create_date` varchar(100) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('2', null, '<p>9090<br/></p>', '2016-08-28 21:03:28');
INSERT INTO `content` VALUES ('74', null, '<p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p>', '2016-08-31 22:46:31');
INSERT INTO `content` VALUES ('75', null, '<p>12132</p>', '2016-09-01 00:59:01');
INSERT INTO `content` VALUES ('76', null, '<p>12132</p>', '2016-09-01 00:59:01');
INSERT INTO `content` VALUES ('77', null, '<p>你好啊<br/></p>', '2016-09-01 01:00:01');
INSERT INTO `content` VALUES ('78', null, '<p>你好啊<br/></p>', '2016-09-01 01:00:01');
INSERT INTO `content` VALUES ('79', null, '<p>哈哈在的</p>', '2016-09-01 01:00:01');
INSERT INTO `content` VALUES ('80', null, '<p>哈哈在的</p>', '2016-09-01 01:00:01');
INSERT INTO `content` VALUES ('81', null, '<p><img src=\"http://192.168.0.102:8080/ssm/ueditor/jsp/upload/image/20160901/1472662865947059062.jpg\" title=\"1472662865947059062.jpg\" alt=\"8a98f00a883a01ffd596ed5c71e988e17a3.jpg\"/></p>', '2016-09-01 01:01:01');
INSERT INTO `content` VALUES ('82', null, '<p><img src=\"http://192.168.0.102:8080/ssm/ueditor/jsp/upload/image/20160901/1472662865947059062.jpg\" title=\"1472662865947059062.jpg\" alt=\"8a98f00a883a01ffd596ed5c71e988e17a3.jpg\"/></p>', '2016-09-01 01:01:01');
INSERT INTO `content` VALUES ('83', null, '<p><img src=\"http://img.baidu.com/hi/jx2/j_0010.gif\"/></p>', '2016-09-01 01:01:01');
INSERT INTO `content` VALUES ('84', null, '<p><img src=\"http://img.baidu.com/hi/jx2/j_0010.gif\"/></p>', '2016-09-01 01:01:01');

-- ----------------------------
-- Table structure for dubbo_user
-- ----------------------------
DROP TABLE IF EXISTS `dubbo_user`;
CREATE TABLE `dubbo_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dubbo_user
-- ----------------------------
INSERT INTO `dubbo_user` VALUES ('1', 'sss', 'aaaaaaaaa', '0');
INSERT INTO `dubbo_user` VALUES ('2', 'admin', 'd3c59d25033dbf980d29554025c23a75', '0');

-- ----------------------------
-- Table structure for rediscontent
-- ----------------------------
DROP TABLE IF EXISTS `rediscontent`;
CREATE TABLE `rediscontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rediscontent
-- ----------------------------
INSERT INTO `rediscontent` VALUES ('1', '你说什么哈哈1');
INSERT INTO `rediscontent` VALUES ('2', '你好啊0');
INSERT INTO `rediscontent` VALUES ('3', '你好啊1');
INSERT INTO `rediscontent` VALUES ('4', '你好啊2');
INSERT INTO `rediscontent` VALUES ('5', '你好啊3');
INSERT INTO `rediscontent` VALUES ('6', '你好啊4');
INSERT INTO `rediscontent` VALUES ('7', '你好啊5');
INSERT INTO `rediscontent` VALUES ('8', '你好啊6');
INSERT INTO `rediscontent` VALUES ('9', '你好啊7');
INSERT INTO `rediscontent` VALUES ('10', '你好啊8');
INSERT INTO `rediscontent` VALUES ('11', '你好啊9');
INSERT INTO `rediscontent` VALUES ('12', '你好啊10');
INSERT INTO `rediscontent` VALUES ('13', '你好啊11');
INSERT INTO `rediscontent` VALUES ('14', '你好啊12');
INSERT INTO `rediscontent` VALUES ('15', '你好啊13');
INSERT INTO `rediscontent` VALUES ('16', '你好啊14');
INSERT INTO `rediscontent` VALUES ('17', '你好啊15');
INSERT INTO `rediscontent` VALUES ('18', '你好啊16');
INSERT INTO `rediscontent` VALUES ('19', '你好啊17');
INSERT INTO `rediscontent` VALUES ('20', '你好啊18');
INSERT INTO `rediscontent` VALUES ('21', '你好啊19');
INSERT INTO `rediscontent` VALUES ('22', '你好啊20');
INSERT INTO `rediscontent` VALUES ('23', '你好啊21');
INSERT INTO `rediscontent` VALUES ('24', '你好啊22');
INSERT INTO `rediscontent` VALUES ('25', '你好啊23');
INSERT INTO `rediscontent` VALUES ('26', '你好啊24');
INSERT INTO `rediscontent` VALUES ('27', '你好啊25');
INSERT INTO `rediscontent` VALUES ('28', '你好啊26');
INSERT INTO `rediscontent` VALUES ('29', '你好啊27');
INSERT INTO `rediscontent` VALUES ('30', '你好啊28');
INSERT INTO `rediscontent` VALUES ('31', '你好啊29');
INSERT INTO `rediscontent` VALUES ('32', '你好啊30');
INSERT INTO `rediscontent` VALUES ('33', '你好啊31');
INSERT INTO `rediscontent` VALUES ('34', '你好啊32');
INSERT INTO `rediscontent` VALUES ('35', '你好啊33');
INSERT INTO `rediscontent` VALUES ('36', '你好啊34');
INSERT INTO `rediscontent` VALUES ('37', '你好啊35');
INSERT INTO `rediscontent` VALUES ('38', '你好啊36');
INSERT INTO `rediscontent` VALUES ('39', '你好啊37');
INSERT INTO `rediscontent` VALUES ('40', '你好啊38');
INSERT INTO `rediscontent` VALUES ('41', '你好啊39');
INSERT INTO `rediscontent` VALUES ('42', '你好啊40');
INSERT INTO `rediscontent` VALUES ('43', '你好啊41');
INSERT INTO `rediscontent` VALUES ('44', '你好啊42');
INSERT INTO `rediscontent` VALUES ('45', '你好啊43');
INSERT INTO `rediscontent` VALUES ('46', '你好啊44');
INSERT INTO `rediscontent` VALUES ('47', '你好啊45');
INSERT INTO `rediscontent` VALUES ('48', '你好啊46');
INSERT INTO `rediscontent` VALUES ('49', '你好啊47');
INSERT INTO `rediscontent` VALUES ('50', '你好啊48');
INSERT INTO `rediscontent` VALUES ('51', '你好啊49');
INSERT INTO `rediscontent` VALUES ('52', '你好啊50');
INSERT INTO `rediscontent` VALUES ('53', '你好啊51');
INSERT INTO `rediscontent` VALUES ('54', '你好啊52');
INSERT INTO `rediscontent` VALUES ('55', '你好啊53');
INSERT INTO `rediscontent` VALUES ('56', '你好啊54');
INSERT INTO `rediscontent` VALUES ('57', '你好啊55');
INSERT INTO `rediscontent` VALUES ('58', '你好啊56');
INSERT INTO `rediscontent` VALUES ('59', '你好啊57');
INSERT INTO `rediscontent` VALUES ('60', '你好啊58');
INSERT INTO `rediscontent` VALUES ('61', '你好啊59');
INSERT INTO `rediscontent` VALUES ('62', '你好啊60');
INSERT INTO `rediscontent` VALUES ('63', '你好啊61');
INSERT INTO `rediscontent` VALUES ('64', '你好啊62');
INSERT INTO `rediscontent` VALUES ('65', '你好啊63');
INSERT INTO `rediscontent` VALUES ('66', '你好啊64');
INSERT INTO `rediscontent` VALUES ('67', '你好啊65');
INSERT INTO `rediscontent` VALUES ('68', '你好啊66');
INSERT INTO `rediscontent` VALUES ('69', '你好啊67');
INSERT INTO `rediscontent` VALUES ('70', '你好啊68');
INSERT INTO `rediscontent` VALUES ('71', '你好啊69');
INSERT INTO `rediscontent` VALUES ('72', '你好啊70');
INSERT INTO `rediscontent` VALUES ('73', '你好啊71');
INSERT INTO `rediscontent` VALUES ('74', '你好啊72');
INSERT INTO `rediscontent` VALUES ('75', '你好啊73');
INSERT INTO `rediscontent` VALUES ('76', '你好啊74');
INSERT INTO `rediscontent` VALUES ('77', '你好啊75');
INSERT INTO `rediscontent` VALUES ('78', '你好啊76');
INSERT INTO `rediscontent` VALUES ('79', '你好啊77');
INSERT INTO `rediscontent` VALUES ('80', '你好啊78');
INSERT INTO `rediscontent` VALUES ('81', '你好啊79');
INSERT INTO `rediscontent` VALUES ('82', '你好啊80');
INSERT INTO `rediscontent` VALUES ('83', '你好啊81');
INSERT INTO `rediscontent` VALUES ('84', '你好啊82');
INSERT INTO `rediscontent` VALUES ('85', '你好啊83');
INSERT INTO `rediscontent` VALUES ('86', '你好啊84');
INSERT INTO `rediscontent` VALUES ('87', '你好啊85');
INSERT INTO `rediscontent` VALUES ('88', '你好啊86');
INSERT INTO `rediscontent` VALUES ('89', '你好啊87');
INSERT INTO `rediscontent` VALUES ('90', '你好啊88');
INSERT INTO `rediscontent` VALUES ('91', '你好啊89');
INSERT INTO `rediscontent` VALUES ('92', '你好啊90');
INSERT INTO `rediscontent` VALUES ('93', '你好啊91');
INSERT INTO `rediscontent` VALUES ('94', '你好啊92');
INSERT INTO `rediscontent` VALUES ('95', '你好啊93');
INSERT INTO `rediscontent` VALUES ('96', '你好啊94');
INSERT INTO `rediscontent` VALUES ('97', '你好啊95');
INSERT INTO `rediscontent` VALUES ('98', '你好啊96');
INSERT INTO `rediscontent` VALUES ('99', '你好啊97');
INSERT INTO `rediscontent` VALUES ('100', '你好啊98');
INSERT INTO `rediscontent` VALUES ('101', '你好啊99');
INSERT INTO `rediscontent` VALUES ('102', '你好啊0');
INSERT INTO `rediscontent` VALUES ('103', '你好啊1');
INSERT INTO `rediscontent` VALUES ('104', '你好啊2');
INSERT INTO `rediscontent` VALUES ('105', '你好啊3');
INSERT INTO `rediscontent` VALUES ('106', '你好啊4');
INSERT INTO `rediscontent` VALUES ('107', '你好啊5');
INSERT INTO `rediscontent` VALUES ('108', '你好啊6');
INSERT INTO `rediscontent` VALUES ('109', '你好啊7');
INSERT INTO `rediscontent` VALUES ('110', '你好啊8');
INSERT INTO `rediscontent` VALUES ('111', '你好啊9');
INSERT INTO `rediscontent` VALUES ('112', '你好啊10');
INSERT INTO `rediscontent` VALUES ('113', '你好啊11');
INSERT INTO `rediscontent` VALUES ('114', '你好啊12');
INSERT INTO `rediscontent` VALUES ('115', '你好啊13');
INSERT INTO `rediscontent` VALUES ('116', '你好啊14');
INSERT INTO `rediscontent` VALUES ('117', '你好啊15');
INSERT INTO `rediscontent` VALUES ('118', '你好啊16');
INSERT INTO `rediscontent` VALUES ('119', '你好啊17');
INSERT INTO `rediscontent` VALUES ('120', '你好啊18');
INSERT INTO `rediscontent` VALUES ('121', '你好啊19');
INSERT INTO `rediscontent` VALUES ('122', '你好啊20');
INSERT INTO `rediscontent` VALUES ('123', '你好啊21');
INSERT INTO `rediscontent` VALUES ('124', '你好啊22');
INSERT INTO `rediscontent` VALUES ('125', '你好啊23');
INSERT INTO `rediscontent` VALUES ('126', '你好啊24');
INSERT INTO `rediscontent` VALUES ('127', '你好啊25');
INSERT INTO `rediscontent` VALUES ('128', '你好啊26');
INSERT INTO `rediscontent` VALUES ('129', '你好啊27');
INSERT INTO `rediscontent` VALUES ('130', '你好啊28');
INSERT INTO `rediscontent` VALUES ('131', '你好啊29');
INSERT INTO `rediscontent` VALUES ('132', '你好啊30');
INSERT INTO `rediscontent` VALUES ('133', '你好啊31');
INSERT INTO `rediscontent` VALUES ('134', '你好啊32');
INSERT INTO `rediscontent` VALUES ('135', '你好啊33');
INSERT INTO `rediscontent` VALUES ('136', '你好啊34');
INSERT INTO `rediscontent` VALUES ('137', '你好啊35');
INSERT INTO `rediscontent` VALUES ('138', '你好啊36');
INSERT INTO `rediscontent` VALUES ('139', '你好啊37');
INSERT INTO `rediscontent` VALUES ('140', '你好啊38');
INSERT INTO `rediscontent` VALUES ('141', '你好啊39');
INSERT INTO `rediscontent` VALUES ('142', '你好啊40');
INSERT INTO `rediscontent` VALUES ('143', '你好啊41');
INSERT INTO `rediscontent` VALUES ('144', '你好啊42');
INSERT INTO `rediscontent` VALUES ('145', '你好啊43');
INSERT INTO `rediscontent` VALUES ('146', '你好啊44');
INSERT INTO `rediscontent` VALUES ('147', '你好啊45');
INSERT INTO `rediscontent` VALUES ('148', '你好啊46');
INSERT INTO `rediscontent` VALUES ('149', '你好啊47');
INSERT INTO `rediscontent` VALUES ('150', '你好啊48');
INSERT INTO `rediscontent` VALUES ('151', '你好啊49');
INSERT INTO `rediscontent` VALUES ('152', '你好啊50');
INSERT INTO `rediscontent` VALUES ('153', '你好啊51');
INSERT INTO `rediscontent` VALUES ('154', '你好啊52');
INSERT INTO `rediscontent` VALUES ('155', '你好啊53');
INSERT INTO `rediscontent` VALUES ('156', '你好啊54');
INSERT INTO `rediscontent` VALUES ('157', '你好啊55');
INSERT INTO `rediscontent` VALUES ('158', '你好啊56');
INSERT INTO `rediscontent` VALUES ('159', '你好啊57');
INSERT INTO `rediscontent` VALUES ('160', '你好啊58');
INSERT INTO `rediscontent` VALUES ('161', '你好啊59');
INSERT INTO `rediscontent` VALUES ('162', '你好啊60');
INSERT INTO `rediscontent` VALUES ('163', '你好啊61');
INSERT INTO `rediscontent` VALUES ('164', '你好啊62');
INSERT INTO `rediscontent` VALUES ('165', '你好啊63');
INSERT INTO `rediscontent` VALUES ('166', '你好啊64');
INSERT INTO `rediscontent` VALUES ('167', '你好啊65');
INSERT INTO `rediscontent` VALUES ('168', '你好啊66');
INSERT INTO `rediscontent` VALUES ('169', '你好啊67');
INSERT INTO `rediscontent` VALUES ('170', '你好啊68');
INSERT INTO `rediscontent` VALUES ('171', '你好啊69');
INSERT INTO `rediscontent` VALUES ('172', '你好啊70');
INSERT INTO `rediscontent` VALUES ('173', '你好啊71');
INSERT INTO `rediscontent` VALUES ('174', '你好啊72');
INSERT INTO `rediscontent` VALUES ('175', '你好啊73');
INSERT INTO `rediscontent` VALUES ('176', '你好啊74');
INSERT INTO `rediscontent` VALUES ('177', '你好啊75');
INSERT INTO `rediscontent` VALUES ('178', '你好啊76');
INSERT INTO `rediscontent` VALUES ('179', '你好啊77');
INSERT INTO `rediscontent` VALUES ('180', '你好啊78');
INSERT INTO `rediscontent` VALUES ('181', '你好啊79');
INSERT INTO `rediscontent` VALUES ('182', '你好啊80');
INSERT INTO `rediscontent` VALUES ('183', '你好啊81');
INSERT INTO `rediscontent` VALUES ('184', '你好啊82');
INSERT INTO `rediscontent` VALUES ('185', '你好啊83');
INSERT INTO `rediscontent` VALUES ('186', '你好啊84');
INSERT INTO `rediscontent` VALUES ('187', '你好啊85');
INSERT INTO `rediscontent` VALUES ('188', '你好啊86');
INSERT INTO `rediscontent` VALUES ('189', '你好啊87');
INSERT INTO `rediscontent` VALUES ('190', '你好啊88');
INSERT INTO `rediscontent` VALUES ('191', '你好啊89');
INSERT INTO `rediscontent` VALUES ('192', '你好啊90');
INSERT INTO `rediscontent` VALUES ('193', '你好啊91');
INSERT INTO `rediscontent` VALUES ('194', '你好啊92');
INSERT INTO `rediscontent` VALUES ('195', '你好啊93');
INSERT INTO `rediscontent` VALUES ('196', '你好啊94');
INSERT INTO `rediscontent` VALUES ('197', '你好啊95');
INSERT INTO `rediscontent` VALUES ('198', '你好啊96');
INSERT INTO `rediscontent` VALUES ('199', '你好啊97');
INSERT INTO `rediscontent` VALUES ('200', '你好啊98');
INSERT INTO `rediscontent` VALUES ('201', '你好啊99');
INSERT INTO `rediscontent` VALUES ('202', '你好啊0');
INSERT INTO `rediscontent` VALUES ('203', '你好啊1');
INSERT INTO `rediscontent` VALUES ('204', '你好啊2');
INSERT INTO `rediscontent` VALUES ('205', '你好啊3');
INSERT INTO `rediscontent` VALUES ('206', '你好啊4');
INSERT INTO `rediscontent` VALUES ('207', '你好啊5');
INSERT INTO `rediscontent` VALUES ('208', '你好啊6');
INSERT INTO `rediscontent` VALUES ('209', '你好啊7');
INSERT INTO `rediscontent` VALUES ('210', '你好啊8');
INSERT INTO `rediscontent` VALUES ('211', '你好啊9');
INSERT INTO `rediscontent` VALUES ('212', '你好啊10');
INSERT INTO `rediscontent` VALUES ('213', '你好啊11');
INSERT INTO `rediscontent` VALUES ('214', '你好啊12');
INSERT INTO `rediscontent` VALUES ('215', '你好啊13');
INSERT INTO `rediscontent` VALUES ('216', '你好啊14');
INSERT INTO `rediscontent` VALUES ('217', '你好啊15');
INSERT INTO `rediscontent` VALUES ('218', '你好啊16');
INSERT INTO `rediscontent` VALUES ('219', '你好啊17');
INSERT INTO `rediscontent` VALUES ('220', '你好啊18');
INSERT INTO `rediscontent` VALUES ('221', '你好啊19');
INSERT INTO `rediscontent` VALUES ('222', '你好啊20');
INSERT INTO `rediscontent` VALUES ('223', '你好啊21');
INSERT INTO `rediscontent` VALUES ('224', '你好啊22');
INSERT INTO `rediscontent` VALUES ('225', '你好啊23');
INSERT INTO `rediscontent` VALUES ('226', '你好啊24');
INSERT INTO `rediscontent` VALUES ('227', '你好啊25');
INSERT INTO `rediscontent` VALUES ('228', '你好啊26');
INSERT INTO `rediscontent` VALUES ('229', '你好啊27');
INSERT INTO `rediscontent` VALUES ('230', '你好啊28');
INSERT INTO `rediscontent` VALUES ('231', '你好啊29');
INSERT INTO `rediscontent` VALUES ('232', '你好啊30');
INSERT INTO `rediscontent` VALUES ('233', '你好啊31');
INSERT INTO `rediscontent` VALUES ('234', '你好啊32');
INSERT INTO `rediscontent` VALUES ('235', '你好啊33');
INSERT INTO `rediscontent` VALUES ('236', '你好啊34');
INSERT INTO `rediscontent` VALUES ('237', '你好啊35');
INSERT INTO `rediscontent` VALUES ('238', '你好啊36');
INSERT INTO `rediscontent` VALUES ('239', '你好啊37');
INSERT INTO `rediscontent` VALUES ('240', '你好啊38');
INSERT INTO `rediscontent` VALUES ('241', '你好啊39');
INSERT INTO `rediscontent` VALUES ('242', '你好啊40');
INSERT INTO `rediscontent` VALUES ('243', '你好啊41');
INSERT INTO `rediscontent` VALUES ('244', '你好啊42');
INSERT INTO `rediscontent` VALUES ('245', '你好啊43');
INSERT INTO `rediscontent` VALUES ('246', '你好啊44');
INSERT INTO `rediscontent` VALUES ('247', '你好啊45');
INSERT INTO `rediscontent` VALUES ('248', '你好啊46');
INSERT INTO `rediscontent` VALUES ('249', '你好啊47');
INSERT INTO `rediscontent` VALUES ('250', '你好啊48');
INSERT INTO `rediscontent` VALUES ('251', '你好啊49');
INSERT INTO `rediscontent` VALUES ('252', '你好啊50');
INSERT INTO `rediscontent` VALUES ('253', '你好啊51');
INSERT INTO `rediscontent` VALUES ('254', '你好啊52');
INSERT INTO `rediscontent` VALUES ('255', '你好啊53');
INSERT INTO `rediscontent` VALUES ('256', '你好啊54');
INSERT INTO `rediscontent` VALUES ('257', '你好啊55');
INSERT INTO `rediscontent` VALUES ('258', '你好啊56');
INSERT INTO `rediscontent` VALUES ('259', '你好啊57');
INSERT INTO `rediscontent` VALUES ('260', '你好啊58');
INSERT INTO `rediscontent` VALUES ('261', '你好啊59');
INSERT INTO `rediscontent` VALUES ('262', '你好啊60');
INSERT INTO `rediscontent` VALUES ('263', '你好啊61');
INSERT INTO `rediscontent` VALUES ('264', '你好啊62');
INSERT INTO `rediscontent` VALUES ('265', '你好啊63');
INSERT INTO `rediscontent` VALUES ('266', '你好啊64');
INSERT INTO `rediscontent` VALUES ('267', '你好啊65');
INSERT INTO `rediscontent` VALUES ('268', '你好啊66');
INSERT INTO `rediscontent` VALUES ('269', '你好啊67');
INSERT INTO `rediscontent` VALUES ('270', '你好啊68');
INSERT INTO `rediscontent` VALUES ('271', '你好啊69');
INSERT INTO `rediscontent` VALUES ('272', '你好啊70');
INSERT INTO `rediscontent` VALUES ('273', '你好啊71');
INSERT INTO `rediscontent` VALUES ('274', '你好啊72');
INSERT INTO `rediscontent` VALUES ('275', '你好啊73');
INSERT INTO `rediscontent` VALUES ('276', '你好啊74');
INSERT INTO `rediscontent` VALUES ('277', '你好啊75');
INSERT INTO `rediscontent` VALUES ('278', '你好啊76');
INSERT INTO `rediscontent` VALUES ('279', '你好啊77');
INSERT INTO `rediscontent` VALUES ('280', '你好啊78');
INSERT INTO `rediscontent` VALUES ('281', '你好啊79');
INSERT INTO `rediscontent` VALUES ('282', '你好啊80');
INSERT INTO `rediscontent` VALUES ('283', '你好啊81');
INSERT INTO `rediscontent` VALUES ('284', '你好啊82');
INSERT INTO `rediscontent` VALUES ('285', '你好啊83');
INSERT INTO `rediscontent` VALUES ('286', '你好啊84');
INSERT INTO `rediscontent` VALUES ('287', '你好啊85');
INSERT INTO `rediscontent` VALUES ('288', '你好啊86');
INSERT INTO `rediscontent` VALUES ('289', '你好啊87');
INSERT INTO `rediscontent` VALUES ('290', '你好啊88');
INSERT INTO `rediscontent` VALUES ('291', '你好啊89');
INSERT INTO `rediscontent` VALUES ('292', '你好啊90');
INSERT INTO `rediscontent` VALUES ('293', '你好啊91');
INSERT INTO `rediscontent` VALUES ('294', '你好啊92');
INSERT INTO `rediscontent` VALUES ('295', '你好啊93');
INSERT INTO `rediscontent` VALUES ('296', '你好啊94');
INSERT INTO `rediscontent` VALUES ('297', '你好啊95');
INSERT INTO `rediscontent` VALUES ('298', '你好啊96');
INSERT INTO `rediscontent` VALUES ('299', '你好啊97');
INSERT INTO `rediscontent` VALUES ('300', '你好啊98');
INSERT INTO `rediscontent` VALUES ('301', '你好啊99');
INSERT INTO `rediscontent` VALUES ('302', '你好啊0');
INSERT INTO `rediscontent` VALUES ('303', '你好啊1');
INSERT INTO `rediscontent` VALUES ('304', '你好啊2');
INSERT INTO `rediscontent` VALUES ('305', '你好啊3');
INSERT INTO `rediscontent` VALUES ('306', '你好啊4');
INSERT INTO `rediscontent` VALUES ('307', '你好啊5');
INSERT INTO `rediscontent` VALUES ('308', '你好啊6');
INSERT INTO `rediscontent` VALUES ('309', '你好啊7');
INSERT INTO `rediscontent` VALUES ('310', '你好啊8');
INSERT INTO `rediscontent` VALUES ('311', '你好啊9');
INSERT INTO `rediscontent` VALUES ('312', '你好啊10');
INSERT INTO `rediscontent` VALUES ('313', '你好啊11');
INSERT INTO `rediscontent` VALUES ('314', '你好啊12');
INSERT INTO `rediscontent` VALUES ('315', '你好啊13');
INSERT INTO `rediscontent` VALUES ('316', '你好啊14');
INSERT INTO `rediscontent` VALUES ('317', '你好啊15');
INSERT INTO `rediscontent` VALUES ('318', '你好啊16');
INSERT INTO `rediscontent` VALUES ('319', '你好啊17');
INSERT INTO `rediscontent` VALUES ('320', '你好啊18');
INSERT INTO `rediscontent` VALUES ('321', '你好啊19');
INSERT INTO `rediscontent` VALUES ('322', '你好啊20');
INSERT INTO `rediscontent` VALUES ('323', '你好啊21');
INSERT INTO `rediscontent` VALUES ('324', '你好啊22');
INSERT INTO `rediscontent` VALUES ('325', '你好啊23');
INSERT INTO `rediscontent` VALUES ('326', '你好啊24');
INSERT INTO `rediscontent` VALUES ('327', '你好啊25');
INSERT INTO `rediscontent` VALUES ('328', '你好啊26');
INSERT INTO `rediscontent` VALUES ('329', '你好啊27');
INSERT INTO `rediscontent` VALUES ('330', '你好啊28');
INSERT INTO `rediscontent` VALUES ('331', '你好啊29');
INSERT INTO `rediscontent` VALUES ('332', '你好啊30');
INSERT INTO `rediscontent` VALUES ('333', '你好啊31');
INSERT INTO `rediscontent` VALUES ('334', '你好啊32');
INSERT INTO `rediscontent` VALUES ('335', '你好啊33');
INSERT INTO `rediscontent` VALUES ('336', '你好啊34');
INSERT INTO `rediscontent` VALUES ('337', '你好啊35');
INSERT INTO `rediscontent` VALUES ('338', '你好啊36');
INSERT INTO `rediscontent` VALUES ('339', '你好啊37');
INSERT INTO `rediscontent` VALUES ('340', '你好啊38');
INSERT INTO `rediscontent` VALUES ('341', '你好啊39');
INSERT INTO `rediscontent` VALUES ('342', '你好啊40');
INSERT INTO `rediscontent` VALUES ('343', '你好啊41');
INSERT INTO `rediscontent` VALUES ('344', '你好啊42');
INSERT INTO `rediscontent` VALUES ('345', '你好啊43');
INSERT INTO `rediscontent` VALUES ('346', '你好啊44');
INSERT INTO `rediscontent` VALUES ('347', '你好啊45');
INSERT INTO `rediscontent` VALUES ('348', '你好啊46');
INSERT INTO `rediscontent` VALUES ('349', '你好啊47');
INSERT INTO `rediscontent` VALUES ('350', '你好啊48');
INSERT INTO `rediscontent` VALUES ('351', '你好啊49');
INSERT INTO `rediscontent` VALUES ('352', '你好啊50');
INSERT INTO `rediscontent` VALUES ('353', '你好啊51');
INSERT INTO `rediscontent` VALUES ('354', '你好啊52');
INSERT INTO `rediscontent` VALUES ('355', '你好啊53');
INSERT INTO `rediscontent` VALUES ('356', '你好啊54');
INSERT INTO `rediscontent` VALUES ('357', '你好啊55');
INSERT INTO `rediscontent` VALUES ('358', '你好啊56');
INSERT INTO `rediscontent` VALUES ('359', '你好啊57');
INSERT INTO `rediscontent` VALUES ('360', '你好啊58');
INSERT INTO `rediscontent` VALUES ('361', '你好啊59');
INSERT INTO `rediscontent` VALUES ('362', '你好啊60');
INSERT INTO `rediscontent` VALUES ('363', '你好啊61');
INSERT INTO `rediscontent` VALUES ('364', '你好啊62');
INSERT INTO `rediscontent` VALUES ('365', '你好啊63');
INSERT INTO `rediscontent` VALUES ('366', '你好啊64');
INSERT INTO `rediscontent` VALUES ('367', '你好啊65');
INSERT INTO `rediscontent` VALUES ('368', '你好啊66');
INSERT INTO `rediscontent` VALUES ('369', '你好啊67');
INSERT INTO `rediscontent` VALUES ('370', '你好啊68');
INSERT INTO `rediscontent` VALUES ('371', '你好啊69');
INSERT INTO `rediscontent` VALUES ('372', '你好啊70');
INSERT INTO `rediscontent` VALUES ('373', '你好啊71');
INSERT INTO `rediscontent` VALUES ('374', '你好啊72');
INSERT INTO `rediscontent` VALUES ('375', '你好啊73');
INSERT INTO `rediscontent` VALUES ('376', '你好啊74');
INSERT INTO `rediscontent` VALUES ('377', '你好啊75');
INSERT INTO `rediscontent` VALUES ('378', '你好啊76');
INSERT INTO `rediscontent` VALUES ('379', '你好啊77');
INSERT INTO `rediscontent` VALUES ('380', '你好啊78');
INSERT INTO `rediscontent` VALUES ('381', '你好啊79');
INSERT INTO `rediscontent` VALUES ('382', '你好啊80');
INSERT INTO `rediscontent` VALUES ('383', '你好啊81');
INSERT INTO `rediscontent` VALUES ('384', '你好啊82');
INSERT INTO `rediscontent` VALUES ('385', '你好啊83');
INSERT INTO `rediscontent` VALUES ('386', '你好啊84');
INSERT INTO `rediscontent` VALUES ('387', '你好啊85');
INSERT INTO `rediscontent` VALUES ('388', '你好啊86');
INSERT INTO `rediscontent` VALUES ('389', '你好啊87');
INSERT INTO `rediscontent` VALUES ('390', '你好啊88');
INSERT INTO `rediscontent` VALUES ('391', '你好啊89');
INSERT INTO `rediscontent` VALUES ('392', '你好啊90');
INSERT INTO `rediscontent` VALUES ('393', '你好啊91');
INSERT INTO `rediscontent` VALUES ('394', '你好啊92');
INSERT INTO `rediscontent` VALUES ('395', '你好啊93');
INSERT INTO `rediscontent` VALUES ('396', '你好啊94');
INSERT INTO `rediscontent` VALUES ('397', '你好啊95');
INSERT INTO `rediscontent` VALUES ('398', '你好啊96');
INSERT INTO `rediscontent` VALUES ('399', '你好啊97');
INSERT INTO `rediscontent` VALUES ('400', '你好啊98');
INSERT INTO `rediscontent` VALUES ('401', '你好啊99');
INSERT INTO `rediscontent` VALUES ('402', '你好啊0');
INSERT INTO `rediscontent` VALUES ('403', '你好啊1');
INSERT INTO `rediscontent` VALUES ('404', '你好啊2');
INSERT INTO `rediscontent` VALUES ('405', '你好啊3');
INSERT INTO `rediscontent` VALUES ('406', '你好啊4');
INSERT INTO `rediscontent` VALUES ('407', '你好啊5');
INSERT INTO `rediscontent` VALUES ('408', '你好啊6');
INSERT INTO `rediscontent` VALUES ('409', '你好啊7');
INSERT INTO `rediscontent` VALUES ('410', '你好啊8');
INSERT INTO `rediscontent` VALUES ('411', '你好啊9');
INSERT INTO `rediscontent` VALUES ('412', '你好啊10');
INSERT INTO `rediscontent` VALUES ('413', '你好啊11');
INSERT INTO `rediscontent` VALUES ('414', '你好啊12');
INSERT INTO `rediscontent` VALUES ('415', '你好啊13');
INSERT INTO `rediscontent` VALUES ('416', '你好啊14');
INSERT INTO `rediscontent` VALUES ('417', '你好啊15');
INSERT INTO `rediscontent` VALUES ('418', '你好啊16');
INSERT INTO `rediscontent` VALUES ('419', '你好啊17');
INSERT INTO `rediscontent` VALUES ('420', '你好啊18');
INSERT INTO `rediscontent` VALUES ('421', '你好啊19');
INSERT INTO `rediscontent` VALUES ('422', '你好啊20');
INSERT INTO `rediscontent` VALUES ('423', '你好啊21');
INSERT INTO `rediscontent` VALUES ('424', '你好啊22');
INSERT INTO `rediscontent` VALUES ('425', '你好啊23');
INSERT INTO `rediscontent` VALUES ('426', '你好啊24');
INSERT INTO `rediscontent` VALUES ('427', '你好啊25');
INSERT INTO `rediscontent` VALUES ('428', '你好啊26');
INSERT INTO `rediscontent` VALUES ('429', '你好啊27');
INSERT INTO `rediscontent` VALUES ('430', '你好啊28');
INSERT INTO `rediscontent` VALUES ('431', '你好啊29');
INSERT INTO `rediscontent` VALUES ('432', '你好啊30');
INSERT INTO `rediscontent` VALUES ('433', '你好啊31');
INSERT INTO `rediscontent` VALUES ('434', '你好啊32');
INSERT INTO `rediscontent` VALUES ('435', '你好啊33');
INSERT INTO `rediscontent` VALUES ('436', '你好啊34');
INSERT INTO `rediscontent` VALUES ('437', '你好啊35');
INSERT INTO `rediscontent` VALUES ('438', '你好啊36');
INSERT INTO `rediscontent` VALUES ('439', '你好啊37');
INSERT INTO `rediscontent` VALUES ('440', '你好啊38');
INSERT INTO `rediscontent` VALUES ('441', '你好啊39');
INSERT INTO `rediscontent` VALUES ('442', '你好啊40');
INSERT INTO `rediscontent` VALUES ('443', '你好啊41');
INSERT INTO `rediscontent` VALUES ('444', '你好啊42');
INSERT INTO `rediscontent` VALUES ('445', '你好啊43');
INSERT INTO `rediscontent` VALUES ('446', '你好啊44');
INSERT INTO `rediscontent` VALUES ('447', '你好啊45');
INSERT INTO `rediscontent` VALUES ('448', '你好啊46');
INSERT INTO `rediscontent` VALUES ('449', '你好啊47');
INSERT INTO `rediscontent` VALUES ('450', '你好啊48');
INSERT INTO `rediscontent` VALUES ('451', '你好啊49');
INSERT INTO `rediscontent` VALUES ('452', '你好啊50');
INSERT INTO `rediscontent` VALUES ('453', '你好啊51');
INSERT INTO `rediscontent` VALUES ('454', '你好啊52');
INSERT INTO `rediscontent` VALUES ('455', '你好啊53');
INSERT INTO `rediscontent` VALUES ('456', '你好啊54');
INSERT INTO `rediscontent` VALUES ('457', '你好啊55');
INSERT INTO `rediscontent` VALUES ('458', '你好啊56');
INSERT INTO `rediscontent` VALUES ('459', '你好啊57');
INSERT INTO `rediscontent` VALUES ('460', '你好啊58');
INSERT INTO `rediscontent` VALUES ('461', '你好啊59');
INSERT INTO `rediscontent` VALUES ('462', '你好啊60');
INSERT INTO `rediscontent` VALUES ('463', '你好啊61');
INSERT INTO `rediscontent` VALUES ('464', '你好啊62');
INSERT INTO `rediscontent` VALUES ('465', '你好啊63');
INSERT INTO `rediscontent` VALUES ('466', '你好啊64');
INSERT INTO `rediscontent` VALUES ('467', '你好啊65');
INSERT INTO `rediscontent` VALUES ('468', '你好啊66');
INSERT INTO `rediscontent` VALUES ('469', '你好啊67');
INSERT INTO `rediscontent` VALUES ('470', '你好啊68');
INSERT INTO `rediscontent` VALUES ('471', '你好啊69');
INSERT INTO `rediscontent` VALUES ('472', '你好啊70');
INSERT INTO `rediscontent` VALUES ('473', '你好啊71');
INSERT INTO `rediscontent` VALUES ('474', '你好啊72');
INSERT INTO `rediscontent` VALUES ('475', '你好啊73');
INSERT INTO `rediscontent` VALUES ('476', '你好啊74');
INSERT INTO `rediscontent` VALUES ('477', '你好啊75');
INSERT INTO `rediscontent` VALUES ('478', '你好啊76');
INSERT INTO `rediscontent` VALUES ('479', '你好啊77');
INSERT INTO `rediscontent` VALUES ('480', '你好啊78');
INSERT INTO `rediscontent` VALUES ('481', '你好啊79');
INSERT INTO `rediscontent` VALUES ('482', '你好啊80');
INSERT INTO `rediscontent` VALUES ('483', '你好啊81');
INSERT INTO `rediscontent` VALUES ('484', '你好啊82');
INSERT INTO `rediscontent` VALUES ('485', '你好啊83');
INSERT INTO `rediscontent` VALUES ('486', '你好啊84');
INSERT INTO `rediscontent` VALUES ('487', '你好啊85');
INSERT INTO `rediscontent` VALUES ('488', '你好啊86');
INSERT INTO `rediscontent` VALUES ('489', '你好啊87');
INSERT INTO `rediscontent` VALUES ('490', '你好啊88');
INSERT INTO `rediscontent` VALUES ('491', '你好啊89');
INSERT INTO `rediscontent` VALUES ('492', '你好啊90');
INSERT INTO `rediscontent` VALUES ('493', '你好啊91');
INSERT INTO `rediscontent` VALUES ('494', '你好啊92');
INSERT INTO `rediscontent` VALUES ('495', '你好啊93');
INSERT INTO `rediscontent` VALUES ('496', '你好啊94');
INSERT INTO `rediscontent` VALUES ('497', '你好啊95');
INSERT INTO `rediscontent` VALUES ('498', '你好啊96');
INSERT INTO `rediscontent` VALUES ('499', '你好啊97');
INSERT INTO `rediscontent` VALUES ('500', '你好啊98');
INSERT INTO `rediscontent` VALUES ('501', '你好啊99');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`role_id`) USING BTREE,
  CONSTRAINT `t_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', 'user:*', '1');
INSERT INTO `t_permission` VALUES ('2', 'student:*', '2');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'admin');
INSERT INTO `t_role` VALUES ('2', 'teacher');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`role_id`) USING BTREE,
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin1', '123456', '1');
INSERT INTO `t_user` VALUES ('2', 'aaa', '123456', '2');
INSERT INTO `t_user` VALUES ('3', 'bbb', '123456', null);
INSERT INTO `t_user` VALUES ('4', 'ccc', '123456', null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('2', 'admin', '管理员', 'd3c59d25033dbf980d29554025c23a75', '8d78869f470951332959580424d4bf4f', '0');
