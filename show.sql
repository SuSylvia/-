/*
 Navicat Premium Data Transfer

 Source Server         : Su
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : show

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 15/04/2019 14:41:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carlist
-- ----------------------------
DROP TABLE IF EXISTS `carlist`;
CREATE TABLE `carlist`  (
  `orderNum` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(255) NULL DEFAULT NULL,
  `main` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` float(255, 2) NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`orderNum`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carlist
-- ----------------------------
INSERT INTO `carlist` VALUES (185, 'img/list17.png', '15521024673', 13, '小胖丁唇釉 #504 3.9ml', 310.00, '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', 6);
INSERT INTO `carlist` VALUES (182, 'img/list13.png', '18888888888', 9, '烈焰蓝金唇膏 3.5g口红 #688', 300.00, '可售尺码', '3.5g', '参加满减', 'Dior', 13);
INSERT INTO `carlist` VALUES (183, 'img/list3.png', '18888888888', 3, '粉漾魅惑润口红 004橘色 3.5g', 279.00, '可售尺码', '3.5g', '参加满减', 'Dior', 23);
INSERT INTO `carlist` VALUES (181, 'img/list4.png', '18888888888', 4, '全新烈焰蓝金丝绒唇膏#999 3.5g', 279.00, '可售尺码', '3.5g', '不参加', 'Dior', 9);
INSERT INTO `carlist` VALUES (177, 'img/list36.png', '18888888888', 32, '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, '可售尺码', '7g', '参加满减', 'Etude House', 33);

-- ----------------------------
-- Table structure for reg
-- ----------------------------
DROP TABLE IF EXISTS `reg`;
CREATE TABLE `reg`  (
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pad` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reg
-- ----------------------------
INSERT INTO `reg` VALUES ('18888888888', '111111');

-- ----------------------------
-- Table structure for showlist
-- ----------------------------
DROP TABLE IF EXISTS `showlist`;
CREATE TABLE `showlist`  (
  `uid1` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` float(255, 2) UNSIGNED NULL DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid1`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 135 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of showlist
-- ----------------------------
INSERT INTO `showlist` VALUES (1, 'img/list1.png', '可售尺码', '1.1g*12', '参加满减', 'Urban Decay', '2018新品12色眼影盘 樱桃盘 CHERRY', 468.00, 'img/list1.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (2, 'img/list2.png', '可售尺码', '12g', '参加满减', 'Estee Lauder', 'Dobule Wear 持妆无暇气垫粉霜 2C0 Cool', 365.00, 'img/list2.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (3, 'img/list3.png', '可售尺码', '3.5g', '参加满减', 'Dior', '粉漾魅惑润口红 004橘色 3.5g', 279.00, 'img/list3.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (4, 'img/list4.png', '可售尺码', '3.5g', '不参加', 'Dior', '全新烈焰蓝金丝绒唇膏#999 3.5g', 279.00, 'img/list4.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (5, 'img/list5.png', '可售尺码', '6ml', '参加满减', 'Dior', '魅惑丰唇蜜 #001浅粉色 6ml', 265.00, 'img/list5.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (6, 'img/list6.png', '可售尺码', '10g', '参加满减', 'Lancome', '天鹅颈睫毛膏10g', 219.00, 'img/list6.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (7, 'img/list7.png', '可售尺码', '25ml', '参加满减', 'Sofina', '水润瓷效控油保湿防晒妆前隔离乳25ml', 115.00, 'img/list7.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (8, 'img/list8.png', '可售尺码', '50g', '参加满减', 'Sivanna', '12色眼影 #3号色大地色系 50g', 68.00, 'img/list8.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (9, 'img/list13.png', '可售尺码', '3.5g', '参加满减', 'Dior', '烈焰蓝金唇膏 3.5g口红 #688', 300.00, 'img/list13.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (10, 'img/list14.png', '可售尺码', '15g*2', '参加满减', 'Aekyung', 'AEKYUNG/爱敬 BB霜气垫 15G*2 【2018年新款】', 198.00, 'img/list14.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (11, 'img/list15.png', '可售尺码', '22ml', '参加满减', 'Benefit', '反孔精英脸部底霜 22ml', 258.00, 'img/list15.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (12, 'img/list16.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '黑金黑管唇膏1号色 SPANISH PINK 3g', 390.00, 'img/list16.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (13, 'img/list17.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #504 3.9ml', 310.00, 'img/list17.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (14, 'img/list18.png', '可售尺码', '15g*2', '参加满减', 'Clio', '而戴墨镜不脱妆 KILL COVER凝脂无暇气垫', 178.00, 'img/list18.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (15, 'img/list19.png', '可售尺码', '37g', '参加满减', 'PDC', 'Lilou&Lena珠光唇膏啫喱闪亮金色', 139.00, 'img/list19.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (16, 'img/list20.png', '可售尺码', '2.3g', '参加满减', 'Bobbi Brown', '黑管唇膏 18号色SWEET APPRICOT 2.3g', 265.00, 'img/list20.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (17, 'img/list21.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉7.7ml16#蜜月奶橘', 99.00, 'img/list21.png', 'img/list29.png');
INSERT INTO `showlist` VALUES (18, 'img/list22.png', '可售尺码', '3g', '参加满减', 'M.A.C', '子弹头 CB96 3g', 179.00, 'img/list22.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (19, 'img/list23.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #505 3.9ml', 310.00, 'img/list23.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (20, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (21, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list33.png');
INSERT INTO `showlist` VALUES (22, 'img/list26.png', '可售尺码', '6.6g', '参加满减', 'MuJi', '遮瑕液 亮色 6.6g', 95.00, 'img/list26.png', 'img/list34.png');
INSERT INTO `showlist` VALUES (23, 'img/list27.png', '可售尺码', '30ml', '参加满减', 'Giorgio Armani', '极缎丝柔精华粉底液 #02 30ml', 1080.00, 'img/list27.png', 'img/list35.png');
INSERT INTO `showlist` VALUES (24, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list36.png');
INSERT INTO `showlist` VALUES (25, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (26, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (27, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (28, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (29, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (30, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (31, 'img/list35.png', '可售尺码', '5g', '参加满减', 'Innisfree', '控油矿物质散粉 5g', 59.00, 'img/list35.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (32, 'img/list36.png', '可售尺码', '7g', '参加满减', 'Etude House', '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, 'img/list36.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (33, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (34, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (35, 'img/list26.png', '可售尺码', '6.6g', '参加满减', 'MuJi', '遮瑕液 亮色 6.6g', 95.00, 'img/list26.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (36, 'img/list27.png', '可售尺码', '30ml', '参加满减', 'Giorgio Armani', '极缎丝柔精华粉底液 #02 30ml', 1080.00, 'img/list27.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (37, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (38, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (39, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (40, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (41, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (42, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (43, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list29.png');
INSERT INTO `showlist` VALUES (44, 'img/list35.png', '可售尺码', '5g', '参加满减', 'Innisfree', '控油矿物质散粉 5g', 59.00, 'img/list35.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (45, 'img/list36.png', '可售尺码', '7g', '参加满减', 'Etude House', '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, 'img/list36.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (46, 'img/list1.png', '可售尺码', '1.1g*12', '参加满减', 'Urban Decay', '2018新品12色眼影盘 樱桃盘 CHERRY', 468.00, 'img/list1.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (47, 'img/list2.png', '可售尺码', '12g', '参加满减', 'Estee Lauder', 'Dobule Wear 持妆无暇气垫粉霜 2C0 Cool', 365.00, 'img/list2.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (48, 'img/list3.png', '可售尺码', '3.5g', '参加满减', 'Dior', '粉漾魅惑润口红 004橘色 3.5g', 279.00, 'img/list3.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (49, 'img/list4.png', '可售尺码', '3.5g', '不参加', 'Dior', '全新烈焰蓝金丝绒唇膏#999 3.5g', 279.00, 'img/list4.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (50, 'img/list5.png', '可售尺码', '6ml', '参加满减', 'Dior', '魅惑丰唇蜜 #001浅粉色 6ml', 265.00, 'img/list5.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (51, 'img/list6.png', '可售尺码', '10g', '参加满减', 'Lancome', '天鹅颈睫毛膏10g', 219.00, 'img/list6.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (52, 'img/list7.png', '可售尺码', '25ml', '参加满减', 'Sofina', '水润瓷效控油保湿防晒妆前隔离乳25ml', 115.00, 'img/list7.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (53, 'img/list8.png', '可售尺码', '50g', '参加满减', 'Sivanna', '12色眼影 #3号色大地色系 50g', 68.00, 'img/list8.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (54, 'img/list13.png', '可售尺码', '3.5g', '参加满减', 'Dior', '烈焰蓝金唇膏 3.5g口红 #688', 300.00, 'img/list13.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (55, 'img/list14.png', '可售尺码', '15g*2', '参加满减', 'Aekyung', 'AEKYUNG/爱敬 BB霜气垫 15G*2 【2018年新款】', 198.00, 'img/list14.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (56, 'img/list15.png', '可售尺码', '22ml', '参加满减', 'Benefit', '反孔精英脸部底霜 22ml', 258.00, 'img/list15.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (57, 'img/list16.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '黑金黑管唇膏1号色 SPANISH PINK 3g', 390.00, 'img/list16.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (58, 'img/list17.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #504 3.9ml', 310.00, 'img/list17.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (59, 'img/list18.png', '可售尺码', '15g*2', '参加满减', 'Clio', '而戴墨镜不脱妆 KILL COVER凝脂无暇气垫', 178.00, 'img/list18.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (60, 'img/list19.png', '可售尺码', '37g', '参加满减', 'PDC', 'Lilou&Lena珠光唇膏啫喱闪亮金色', 139.00, 'img/list19.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (61, 'img/list20.png', '可售尺码', '2.3g', '参加满减', 'Bobbi Brown', '黑管唇膏 18号色SWEET APPRICOT 2.3g', 265.00, 'img/list20.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (62, 'img/list21.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉7.7ml16#蜜月奶橘', 99.00, 'img/list21.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (63, 'img/list22.png', '可售尺码', '3g', '参加满减', 'M.A.C', '子弹头 CB96 3g', 179.00, 'img/list22.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (64, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (65, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (66, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (67, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (68, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (69, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (70, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (71, 'img/list35.png', '可售尺码', '5g', '参加满减', 'Innisfree', '控油矿物质散粉 5g', 59.00, 'img/list35.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (72, 'img/list36.png', '可售尺码', '7g', '参加满减', 'Etude House', '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, 'img/list36.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (73, 'img/list1.png', '可售尺码', '1.1g*12', '参加满减', 'Urban Decay', '2018新品12色眼影盘 樱桃盘 CHERRY', 468.00, 'img/list1.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (74, 'img/list2.png', '可售尺码', '12g', '参加满减', 'Estee Lauder', 'Dobule Wear 持妆无暇气垫粉霜 2C0 Cool', 365.00, 'img/list2.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (75, 'img/list3.png', '可售尺码', '3.5g', '参加满减', 'Dior', '粉漾魅惑润口红 004橘色 3.5g', 279.00, 'img/list3.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (76, 'img/list4.png', '可售尺码', '3.5g', '不参加', 'Dior', '全新烈焰蓝金丝绒唇膏#999 3.5g', 279.00, 'img/list4.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (77, 'img/list18.png', '可售尺码', '15g*2', '参加满减', 'Clio', '而戴墨镜不脱妆 KILL COVER凝脂无暇气垫', 178.00, 'img/list18.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (78, 'img/list19.png', '可售尺码', '37g', '参加满减', 'PDC', 'Lilou&Lena珠光唇膏啫喱闪亮金色', 139.00, 'img/list19.png', 'img/list29.png');
INSERT INTO `showlist` VALUES (79, 'img/list20.png', '可售尺码', '2.3g', '参加满减', 'Bobbi Brown', '黑管唇膏 18号色SWEET APPRICOT 2.3g', 265.00, 'img/list20.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (80, 'img/list21.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉7.7ml16#蜜月奶橘', 99.00, 'img/list21.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (81, 'img/list22.png', '可售尺码', '3g', '参加满减', 'M.A.C', '子弹头 CB96 3g', 179.00, 'img/list22.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (82, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (83, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (84, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (85, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (86, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (87, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (88, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (89, 'img/list23.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #505 3.9ml', 310.00, 'img/list23.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (90, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (91, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (92, 'img/list26.png', '可售尺码', '6.6g', '参加满减', 'MuJi', '遮瑕液 亮色 6.6g', 95.00, 'img/list26.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (93, 'img/list27.png', '可售尺码', '30ml', '参加满减', 'Giorgio Armani', '极缎丝柔精华粉底液 #02 30ml', 1080.00, 'img/list27.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (94, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (95, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (96, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (97, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list29.png');
INSERT INTO `showlist` VALUES (98, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (99, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (100, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (101, 'img/list35.png', '可售尺码', '5g', '参加满减', 'Innisfree', '控油矿物质散粉 5g', 59.00, 'img/list35.png', 'img/list33.png');
INSERT INTO `showlist` VALUES (102, 'img/list36.png', '可售尺码', '7g', '参加满减', 'Etude House', '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, 'img/list36.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (103, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (104, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (105, 'img/list26.png', '可售尺码', '6.6g', '参加满减', 'MuJi', '遮瑕液 亮色 6.6g', 95.00, 'img/list26.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (106, 'img/list27.png', '可售尺码', '30ml', '参加满减', 'Giorgio Armani', '极缎丝柔精华粉底液 #02 30ml', 1080.00, 'img/list27.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (107, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (108, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (109, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (110, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list16.png');
INSERT INTO `showlist` VALUES (111, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list17.png');
INSERT INTO `showlist` VALUES (112, 'img/list16.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '黑金黑管唇膏1号色 SPANISH PINK 3g', 390.00, 'img/list16.png', 'img/list18.png');
INSERT INTO `showlist` VALUES (113, 'img/list17.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #504 3.9ml', 310.00, 'img/list17.png', 'img/list19.png');
INSERT INTO `showlist` VALUES (114, 'img/list18.png', '可售尺码', '15g*2', '参加满减', 'Clio', '而戴墨镜不脱妆 KILL COVER凝脂无暇气垫', 178.00, 'img/list18.png', 'img/list20.png');
INSERT INTO `showlist` VALUES (115, 'img/list19.png', '可售尺码', '37g', '参加满减', 'PDC', 'Lilou&Lena珠光唇膏啫喱闪亮金色', 139.00, 'img/list19.png', 'img/list21.png');
INSERT INTO `showlist` VALUES (116, 'img/list20.png', '可售尺码', '2.3g', '参加满减', 'Bobbi Brown', '黑管唇膏 18号色SWEET APPRICOT 2.3g', 265.00, 'img/list20.png', 'img/list22.png');
INSERT INTO `showlist` VALUES (117, 'img/list21.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉7.7ml16#蜜月奶橘', 99.00, 'img/list21.png', 'img/list23.png');
INSERT INTO `showlist` VALUES (118, 'img/list22.png', '可售尺码', '3g', '参加满减', 'M.A.C', '子弹头 CB96 3g', 179.00, 'img/list22.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (119, 'img/list23.png', '可售尺码', '3.9g', '参加满减', 'Giorgio Armani', '小胖丁唇釉 #505 3.9ml', 310.00, 'img/list23.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (120, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list26.png');
INSERT INTO `showlist` VALUES (121, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list27.png');
INSERT INTO `showlist` VALUES (122, 'img/list26.png', '可售尺码', '6.6g', '参加满减', 'MuJi', '遮瑕液 亮色 6.6g', 95.00, 'img/list26.png', 'img/list28.png');
INSERT INTO `showlist` VALUES (123, 'img/list27.png', '可售尺码', '30ml', '参加满减', 'Giorgio Armani', '极缎丝柔精华粉底液 #02 30ml', 1080.00, 'img/list27.png', 'img/list29.png');
INSERT INTO `showlist` VALUES (124, 'img/list28.png', '可售尺码', '7g', '参加满减', 'Kate', '自然眉色染眉膏LB-2 7g', 69.00, 'img/list28.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (125, 'img/list29.png', '可售尺码', '2.8g', '参加满减', 'Guerlain', '小黑裙唇膏 067 2.8g', 235.00, 'img/list29.png', 'img/list31.png');
INSERT INTO `showlist` VALUES (126, 'img/list30.png', '可售尺码', '3g', '参加满减', 'Tom Ford', '白管唇膏 07paradiso 3g', 399.00, 'img/list30.png', 'img/list32.png');
INSERT INTO `showlist` VALUES (127, 'img/list31.png', '可售尺码', '36g', '参加满减', 'Kate', '骨干重塑立体三色眼影 + 鼻影盒BR-1(珠光棕）36g', 150.00, 'img/list31.png', 'img/list33.png');
INSERT INTO `showlist` VALUES (128, 'img/list32.png', '可售尺码', '27g', '参加满减', 'K-Palette', '1DAY TATTOO 24h持久眼线液笔 WP 深棕 27g?', 95.00, 'img/list32.png', 'img/list34.png');
INSERT INTO `showlist` VALUES (129, 'img/list33.png', '可售尺码', '均码', '不参加', 'Dior', '烈焰蓝金口红唇膏 999', 376.00, 'img/list33.png', 'img/list35.png');
INSERT INTO `showlist` VALUES (130, 'img/list34.png', '可售尺码', '1.8g', '参加满减', 'KOJI', 'C-TIVE 腮红颜色二号（恋爱） 1.8g', 82.00, 'img/list34.png', 'img/list36.png');
INSERT INTO `showlist` VALUES (131, 'img/list35.png', '可售尺码', '5g', '参加满减', 'Innisfree', '控油矿物质散粉 5g', 59.00, 'img/list35.png', 'img/list24.png');
INSERT INTO `showlist` VALUES (132, 'img/list36.png', '可售尺码', '7g', '参加满减', 'Etude House', '爱丽小屋 两用旋转自动眉笔 5# 灰色 7g', 59.00, 'img/list36.png', 'img/list25.png');
INSERT INTO `showlist` VALUES (133, 'img/list24.png', '可售尺码', '28g', '参加满减', 'Giorgio Armani', '黑管唇釉 506 28g', 310.00, 'img/list24.png', 'img/list30.png');
INSERT INTO `showlist` VALUES (134, 'img/list25.png', '可售尺码', '7.7g', '参加满减', 'Bourjois', '天鹅绒哑光唇釉 #04蜜桃橘色 7.7ml', 99.00, 'img/list25.png', 'img/list31.png');

-- ----------------------------
-- Table structure for xiu
-- ----------------------------
DROP TABLE IF EXISTS `xiu`;
CREATE TABLE `xiu`  (
  `gid` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` float(255, 0) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiu
-- ----------------------------
INSERT INTO `xiu` VALUES (1, 'img/sq1.png', 'Versace', '男士美杜莎印花短袖T恤', 669);
INSERT INTO `xiu` VALUES (2, 'img/sq2.png', 'Champion', '时尚T恤', 280);
INSERT INTO `xiu` VALUES (3, 'img/sq3.png', 'Champion', '时尚T恤', 199);
INSERT INTO `xiu` VALUES (4, 'img/sq4.png', 'Burberry', '男士经典长袖衬衫', 1299);
INSERT INTO `xiu` VALUES (5, 'img/sq5.png', 'Burberry', '男士经典长袖衬衫', 1299);
INSERT INTO `xiu` VALUES (6, 'img/sq6.png', 'The Kooples', '向日葵丝绸印花连衣裙', 4050);
INSERT INTO `xiu` VALUES (7, 'img/sq7.png', 'Y-3', '男士网面运动鞋', 2380);
INSERT INTO `xiu` VALUES (8, 'img/sq8.png', 'Y-3', '男士织物运动鞋', 2880);
INSERT INTO `xiu` VALUES (9, 'img/sq9.png', 'Y-3', '男士低帮运动鞋', 3280);
INSERT INTO `xiu` VALUES (10, 'img/sq10.png', 'MAJORICA', '蝴蝶结珍珠项链金色', 792);
INSERT INTO `xiu` VALUES (11, 'img/sq11.png', 'Asve', '日本食品级304不锈钢双层保温便当盒', 288);
INSERT INTO `xiu` VALUES (12, 'img/sq12.png', 'Saint Laurent', '1YSL明彩无暇羽毛气垫粉底 14g', 510);
INSERT INTO `xiu` VALUES (13, 'img/sq13.png', 'F.N.Bird', '男女同款登机箱', 298);
INSERT INTO `xiu` VALUES (14, 'img/sq14.png', 'Girogio Armani', '红管口红 100#', 310);
INSERT INTO `xiu` VALUES (15, 'img/sq15.png', 'Aape', '潮流男士时尚圆领短袖T恤', 249);
INSERT INTO `xiu` VALUES (16, 'img/sq16.png', 'Maje', '鞋眼装饰短款绉纱裙', 2040);

SET FOREIGN_KEY_CHECKS = 1;
