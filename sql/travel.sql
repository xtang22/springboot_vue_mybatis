/*
 Navicat MySQL Data Transfer

 Source Server         : m2
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 03/08/2020 18:32:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_place
-- ----------------------------
DROP TABLE IF EXISTS `t_place`;
CREATE TABLE `t_place`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `picpath` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hottime` timestamp(0) NULL DEFAULT NULL,
  `hotticket` double(7, 2) NULL DEFAULT NULL,
  `dimticket` double(7, 2) NULL DEFAULT NULL,
  `placedes` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provinceid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_place
-- ----------------------------

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `placecounts` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES (1, '四川', '火锅、滚滚', 22);
INSERT INTO `t_province` VALUES (2, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (3, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (4, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (8, '重庆', '火锅、洪崖洞', 22);
INSERT INTO `t_province` VALUES (9, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (10, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (11, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (12, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (13, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (14, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (15, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (16, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (17, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (18, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (19, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (20, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (21, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (22, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (23, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (24, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (25, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (26, '北京市', '首都、天安门', 21);
INSERT INTO `t_province` VALUES (32, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (33, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (34, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (35, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (36, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (37, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (38, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (39, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (40, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (41, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (42, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (43, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (44, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (45, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (46, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (47, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);
INSERT INTO `t_province` VALUES (48, ' 广西壮族自治区 ', ' 桂林山水、少数名族聚居地 ', 20);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'timmy', '123', '123');
INSERT INTO `t_user` VALUES (2, 'johnny', '123', '456');
INSERT INTO `t_user` VALUES (3, '123', '1', '1');
INSERT INTO `t_user` VALUES (4, 'j', 'j', 'j');
INSERT INTO `t_user` VALUES (5, '2', '1', '1');

SET FOREIGN_KEY_CHECKS = 1;
