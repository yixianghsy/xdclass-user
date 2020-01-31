/*
 Navicat MySQL Data Transfer

 Source Server         : 120.24.80.45
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : 120.24.80.45:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 31/01/2020 10:54:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
BEGIN;
INSERT INTO `hibernate_sequence` VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES (1, '123456', '管理员');
INSERT INTO `t_admin` VALUES (2, '123456', 'xdclass');
COMMIT;

-- ----------------------------
-- Table structure for t_announcement
-- ----------------------------
DROP TABLE IF EXISTS `t_announcement`;
CREATE TABLE `t_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createAdmin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKslwp3gcgudths92bk0kbak06t` (`createAdmin_id`),
  CONSTRAINT `FKslwp3gcgudths92bk0kbak06t` FOREIGN KEY (`createAdmin_id`) REFERENCES `t_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_announcement
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_coupon
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon`;
CREATE TABLE `t_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券码',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券图',
  `reduce_amount` int(11) NOT NULL DEFAULT '0' COMMENT '所减金额',
  `achieve_amount` int(11) NOT NULL DEFAULT '0' COMMENT '达到满减资格金额',
  `stock` bigint(20) NOT NULL DEFAULT '0' COMMENT '库存，当库存为0不可领取',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `create_time` datetime DEFAULT NULL,
  `status` int(1) unsigned NOT NULL COMMENT '状态为0表示可用，1为不可用',
  `start_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '生效开始时间',
  `end_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '生效结束时间',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inx_code` (`code`),
  KEY `inx_start_time` (`start_time`)
) ENGINE=InnoDB AUTO_INCREMENT=200022 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_coupon
-- ----------------------------
BEGIN;
INSERT INTO `t_coupon` VALUES (1, '10086', '/images/l_cou01.png', 50, 500, 1000, '满500减50代金券', '2019-06-07 12:25:05', 0, '2019-01-07 12:25:05', '2019-10-07 12:25:05', NULL);
INSERT INTO `t_coupon` VALUES (2, '9527', '/images/l_cou02.png', 300, 4000, 1000, '满4000减300代金券', '2019-06-07 12:25:05', 0, '2019-07-21 01:25:40', '2019-10-07 12:25:05', NULL);
INSERT INTO `t_coupon` VALUES (4, '9528', '/images/l_cou02.png', 300, 4000, 1000, '满4000减300代金券', '2019-06-07 12:25:05', 0, '2019-07-21 01:25:39', '2019-10-07 12:25:05', NULL);
INSERT INTO `t_coupon` VALUES (9, '1222c75c-1f8c-4c83-94e5-aba934ef59e3', '/images/l_cou02.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2019-07-26 00:11:35', '2019-07-26 00:11:35', NULL);
INSERT INTO `t_coupon` VALUES (200010, '1222c75c-1f8c-4c83-94e-aba934ef59e3', '/images/l_cou03.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 00:44:19', '2018-07-22 04:30:59', NULL);
INSERT INTO `t_coupon` VALUES (200011, '1222c75c-1f8c-4c83-4e-aba934ef59e3', '/images/l_cou04.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 16:08:35', '2018-07-22 19:55:15', NULL);
INSERT INTO `t_coupon` VALUES (200012, '1222c75c-f8c-4c83-4e-aba934ef59e3', '/images/l_cou05.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 17:57:44', '2018-07-22 21:44:24', NULL);
INSERT INTO `t_coupon` VALUES (200013, '222c75c-f8c-4c83-4e-aba934ef59e3', '/images/l_cou06.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-20 19:52:59', '2018-07-21 23:39:39', NULL);
INSERT INTO `t_coupon` VALUES (200014, '222c75c-f8c-4c83-4e-aba934ef59e', '/images/l_cou07.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 00:46:18', '2018-07-22 04:32:58', NULL);
INSERT INTO `t_coupon` VALUES (200015, '222c75c-f8c-4c83-4e-aba934ef5', '/images/l_cou08.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-20 23:47:53', '2018-07-22 03:34:33', NULL);
INSERT INTO `t_coupon` VALUES (200017, '222c75c-f8c-4c83-4e-aba93ef5', '/images/l_cou09.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 21:32:46', '2018-07-23 01:19:26', NULL);
INSERT INTO `t_coupon` VALUES (200018, '22c75c-f8c-4c83-4e-aba93ef5', '/images/l_cou09.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 13:47:34', '2018-07-22 17:34:14', NULL);
INSERT INTO `t_coupon` VALUES (200019, '22c75-f8c-4c83-4e-aba93ef5', '/images/l_cou09.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-20 20:25:45', '2018-07-22 00:12:25', NULL);
INSERT INTO `t_coupon` VALUES (200020, '75-f8c-4c83-4e-aba93ef5', '/images/l_cou09.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-21 06:38:32', '2018-07-22 10:25:12', NULL);
INSERT INTO `t_coupon` VALUES (200021, '75-f8c-4c83-4e-aba9ef5', '/images/l_cou09.png', 20, 500, 100, '测试coupon', '2019-07-08 21:18:00', 0, '2018-07-20 22:34:33', '2018-07-22 02:21:13', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_coupon1
-- ----------------------------
DROP TABLE IF EXISTS `t_coupon1`;
CREATE TABLE `t_coupon1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '优惠券码',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券图',
  `achieve_amount` int(11) NOT NULL DEFAULT '0' COMMENT '达到满减资格金额',
  `reduce_amount` int(11) NOT NULL DEFAULT '0' COMMENT '所减金额',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存，当库存为0不可领取',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态为0表示可用，1为不可用',
  `create_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL COMMENT '生效开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '生效结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='优惠券定义表';

-- ----------------------------
-- Records of t_coupon1
-- ----------------------------
BEGIN;
INSERT INTO `t_coupon1` VALUES (1, '10086', '/images/l_cou01.png', 500, 50, 1000, '?500?50???', 0, '2019-06-07 12:25:05', '2019-01-07 12:25:05', '2029-06-07 12:25:05');
INSERT INTO `t_coupon1` VALUES (2, '9527', '/images/l_cou02.png', 4000, 300, 1000, '?4000?300???', 0, '2019-06-07 12:25:05', '2019-02-07 12:25:05', '2029-06-07 12:25:05');
INSERT INTO `t_coupon1` VALUES (4, '9528', '/images/l_cou02.png', 4000, 300, 1000, '?4000?300???', 0, '2019-06-07 12:25:05', '2029-06-07 12:25:05', '2030-06-07 12:25:05');
COMMIT;

-- ----------------------------
-- Table structure for t_news
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `inputUser_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKspe5cxeewkudeg10usq127fji` (`inputUser_id`),
  CONSTRAINT `FKspe5cxeewkudeg10usq127fji` FOREIGN KEY (`inputUser_id`) REFERENCES `t_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_address` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `confirmTime` datetime DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `finalPrice` double DEFAULT NULL,
  `orderNumber` varchar(255) DEFAULT NULL,
  `payTime` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shipTime` datetime DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_75ffb6s55q5aibdhqs2unu49q` (`user_id`),
  KEY `FK_9a6eb7iu2gbn1628cud5w836w` (`user_address`),
  CONSTRAINT `FK_75ffb6s55q5aibdhqs2unu49q` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_9a6eb7iu2gbn1628cud5w836w` FOREIGN KEY (`user_address`) REFERENCES `t_useraddress` (`id`),
  CONSTRAINT `FKho2r4qgj3txpy8964fnla95ub` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `t_orderitem`;
CREATE TABLE `t_orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_n7j2urgoicw0qa2b5s2pidind` (`order_id`),
  KEY `FK_cxxgytqnjjrpm4x7k2grbm6iu` (`product`),
  KEY `FK2yx4lqm9mh15mysa9kppvf77r` (`product_id`),
  CONSTRAINT `FK2yx4lqm9mh15mysa9kppvf77r` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`id`),
  CONSTRAINT `FK_cxxgytqnjjrpm4x7k2grbm6iu` FOREIGN KEY (`product`) REFERENCES `t_product` (`id`),
  CONSTRAINT `FK_n7j2urgoicw0qa2b5s2pidind` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`id`),
  CONSTRAINT `FKj435mnwwxw5wci0t6xi15ddxk` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderitem
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_payment
-- ----------------------------
DROP TABLE IF EXISTS `t_payment`;
CREATE TABLE `t_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_payment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `id` int(11) NOT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `updateAdmin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf820vwoskrv05yxj80mlbj226` (`updateAdmin_id`),
  CONSTRAINT `FKf820vwoskrv05yxj80mlbj226` FOREIGN KEY (`updateAdmin_id`) REFERENCES `t_admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_picture
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `stock` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `masterPic_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKknr9ckik7tms7787w9nkpis8g` (`masterPic_id`),
  CONSTRAINT `FKknr9ckik7tms7787w9nkpis8g` FOREIGN KEY (`masterPic_id`) REFERENCES `t_picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
BEGIN;
INSERT INTO `t_product` VALUES (1, '2343434', '2019-07-10 15:01:26', '2a-dd-1s', '阿斯顿发楼思考点附近啦静安寺离开对方进来看撒经费等楼库萨克警方流口水京东方连空间撒离开的解放路口近代史路口附近', '/images/l_pro01.png', 123, 3, '美的不锈钢酸奶机', NULL, NULL);
INSERT INTO `t_product` VALUES (2, 'sdfsdf', '2019-07-30 15:03:29', 'df', '士大夫', '/images/l_pro02.png', 3333, 123, '高级餐具', NULL, NULL);
INSERT INTO `t_product` VALUES (3, 'sdfdsf', '2019-08-14 15:03:57', 'fddf', '进梵蒂冈', '/images/l_pro03.png', 1000, 222, '红木茶具套装', NULL, NULL);
INSERT INTO `t_product` VALUES (4, 'BMC-SLR01-54', NULL, '54', NULL, NULL, 19999, 200, 'MBC SLR01 ????????', '2020-01-11 11:10:52', NULL);
INSERT INTO `t_product` VALUES (5, 'KDF-SD1-200', NULL, '400CM', NULL, NULL, 200, 200, '3T Pro ???', '2020-01-11 11:10:52', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_product_t_picture
-- ----------------------------
DROP TABLE IF EXISTS `t_product_t_picture`;
CREATE TABLE `t_product_t_picture` (
  `Product_id` int(11) NOT NULL,
  `slavePic_id` int(11) NOT NULL,
  KEY `FKln4qvwbfxoiypk9mgwyedmtl1` (`slavePic_id`),
  KEY `FKmixcjvbg3qcrp0reaqha7ujk` (`Product_id`),
  CONSTRAINT `FKln4qvwbfxoiypk9mgwyedmtl1` FOREIGN KEY (`slavePic_id`) REFERENCES `t_picture` (`id`),
  CONSTRAINT `FKmixcjvbg3qcrp0reaqha7ujk` FOREIGN KEY (`Product_id`) REFERENCES `t_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_product_t_picture
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_producttype
-- ----------------------------
DROP TABLE IF EXISTS `t_producttype`;
CREATE TABLE `t_producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_producttype
-- ----------------------------
BEGIN;
INSERT INTO `t_producttype` VALUES (1, '电子电器');
INSERT INTO `t_producttype` VALUES (2, '床上用品');
INSERT INTO `t_producttype` VALUES (3, '厨房用具');
INSERT INTO `t_producttype` VALUES (4, '运动健身');
INSERT INTO `t_producttype` VALUES (5, '儿童用品');
INSERT INTO `t_producttype` VALUES (6, '食品保健');
COMMIT;

-- ----------------------------
-- Table structure for t_remember
-- ----------------------------
DROP TABLE IF EXISTS `t_remember`;
CREATE TABLE `t_remember` (
  `id` varchar(255) NOT NULL,
  `addTime` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6uc4b3e4xdabyyiamthsb2bqa` (`user_id`),
  CONSTRAINT `FK6uc4b3e4xdabyyiamthsb2bqa` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `t_remember_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_remember
-- ----------------------------
BEGIN;
INSERT INTO `t_remember` VALUES ('6f18fd80-1d92-4021-8a5c-6a28e21ba66a', '2019-06-28 21:44:08', 2);
INSERT INTO `t_remember` VALUES ('7d49a0c9-50c1-496c-9cd9-1cab40306cba', '2019-07-20 11:11:51', 1);
INSERT INTO `t_remember` VALUES ('9702147a-b3d4-4a9e-be06-63868e4171f8', '2019-06-08 12:41:14', 2);
INSERT INTO `t_remember` VALUES ('98e2f67d-c322-40dc-96aa-662624d13a7e', '2019-06-11 08:58:51', 2);
INSERT INTO `t_remember` VALUES ('9be1447c-1e28-44b0-9b96-3df07b2bb8a0', '2019-07-26 00:11:49', 1);
INSERT INTO `t_remember` VALUES ('b329619d-1b2c-4c25-a4fe-8f5079eddb1a', '2019-07-05 08:50:45', 2);
INSERT INTO `t_remember` VALUES ('b333547d-3aae-4c9b-b920-087f52f27b20', '2019-06-07 10:37:05', 2);
INSERT INTO `t_remember` VALUES ('b62e3361-1df2-4366-9436-d70e54d290d5', '2019-08-04 20:23:30', 1);
INSERT INTO `t_remember` VALUES ('d06ddf6b-132b-457d-97f4-f069ea4a1fb5', '2019-06-29 23:42:56', 2);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `password` varchar(14) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `spc` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(11) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `balance` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'lkewj123kf', '重庆市南岸区万达4栋29-18', '123456', '13888888888', 1239090, NULL, NULL, '02366666666', '周文滔', '400056', NULL);
INSERT INTO `t_user` VALUES (2, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, '????', NULL, NULL);
INSERT INTO `t_user` VALUES (3, NULL, NULL, '123456', NULL, NULL, NULL, NULL, NULL, '????', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_user1
-- ----------------------------
DROP TABLE IF EXISTS `t_user1`;
CREATE TABLE `t_user1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `password` varchar(14) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `tel_phone` varchar(11) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `zip_code` varchar(6) DEFAULT NULL,
  `balance` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user1
-- ----------------------------
BEGIN;
INSERT INTO `t_user1` VALUES (2, 'daniel', 'daniel', 'daniel', '1', 1, '1', '1', 'daniel', '1', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `t_user_coupon`;
CREATE TABLE `t_user_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_coupon_code` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(1) unsigned DEFAULT '0' COMMENT '?????0??????1????????0',
  `order_id` int(11) DEFAULT NULL COMMENT '??id',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_coupon
-- ----------------------------
BEGIN;
INSERT INTO `t_user_coupon` VALUES (1, '214522434', '/images/l_cou01.png', '2019-06-07 12:25:05', 1, 1, 1, 25, NULL);
INSERT INTO `t_user_coupon` VALUES (4, '722632ddb06147fb800cea742ee3c8ea', '/images/l_cou01.png', '2019-06-11 08:44:42', 1, 1, 1, 23, NULL);
INSERT INTO `t_user_coupon` VALUES (5, 'b247c3a2aaaa4d6fb23e076a7ab424c2', '/images/l_cou01.png', '2019-06-11 09:01:12', 1, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (6, 'd0c9fc4fa2c4442c84c0b3726fd32e0e', '/images/l_cou01.png', '2019-06-11 09:03:42', 1, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (22, '20052fab342043eba6035449b0dd958e', '/images/l_cou02.png', '2019-06-28 21:47:27', 2, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (23, '20052fab342043eba6035449b0dd958e', '/images/l_cou02.png', '2019-06-28 21:47:27', 2, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (24, '20052fab342043eba6035449b0dd958e', '/images/l_cou02.png', '2019-06-28 21:47:27', 2, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (26, 'facc47aaba6c41bfbc1f15a55b757ce9', '/images/l_cou02.png', '2019-06-29 15:16:18', 2, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (27, 'a19f93640dfb45dd9fad54d25d733e54', '/images/l_cou02.png', '2019-06-29 15:17:19', 2, 1, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (28, 'b8b307f1fc204365b0b700f642883206', '/images/l_cou01.png', '2019-06-29 15:22:47', 1, 2, 1, 19, NULL);
INSERT INTO `t_user_coupon` VALUES (29, 'c982c3a2fa2e495697f32246efeeb1af', '/images/l_cou01.png', '2019-06-29 15:24:15', 1, 2, 1, 16, NULL);
INSERT INTO `t_user_coupon` VALUES (30, '8e74d5c9639b4f8ab922a934ac6c5b21', '/images/l_cou01.png', '2019-06-29 15:44:31', 1, 2, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (31, 'cfc842d324064a8ab592f599e1798f7e', '/images/l_cou02.png', '2019-06-29 16:13:27', 2, 2, 0, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (32, 'fe3cee8858664575a503bf8a5cea5298', '/images/l_cou01.png', '2019-06-29 17:08:28', 1, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (33, '99a7d9814d9844ccb8e14689cd3c72fc', '/images/l_cou02.png', '2019-06-29 17:08:30', 2, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (34, '58ab96fa50d24b3bbd2dc9f8030d8c4b', '/images/l_cou01.png', '2019-06-29 23:43:55', 1, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (35, '191cbdefcb2846129d29f1a4208e32c6', '/images/l_cou02.png', '2019-06-29 23:43:57', 2, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (36, 'c50663afb7754227be18f372ddaba7b2', '/images/l_cou01.png', '2019-06-29 23:47:32', 1, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (37, 'b43e7c8d65a144fdb6c8db8de2e723b6', '/images/l_cou01.png', '2019-06-29 23:58:13', 1, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (38, 'f6058984600f4dcc95a44e4504db222f', '/images/l_cou02.png', '2019-06-29 23:58:16', 2, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (39, '0a58bc8d748842e5abb2e5ae0d36fe0e', '/images/l_cou02.png', '2019-07-05 08:51:42', 2, 2, NULL, NULL, NULL);
INSERT INTO `t_user_coupon` VALUES (40, '46dc605eca394836ac8457671e12b47e', '/images/l_cou01.png', NULL, 1, 2, NULL, NULL, '2019-07-13 10:35:01');
INSERT INTO `t_user_coupon` VALUES (41, 'f6ad5789e30e48dbb6d7383f0accafb7', '/images/l_cou01.png', NULL, 1, 1, NULL, NULL, '2019-07-26 00:11:53');
INSERT INTO `t_user_coupon` VALUES (42, 'be072e162e7d412bad4173b308a9c233', '/images/l_cou01.png', NULL, 1, 1, NULL, NULL, '2019-07-26 08:51:49');
INSERT INTO `t_user_coupon` VALUES (43, '9c6704e09c8d4a62906b16b9cdbc6395', '/images/l_cou01.png', NULL, 1, 1, NULL, NULL, '2019-07-26 22:28:54');
INSERT INTO `t_user_coupon` VALUES (44, 'ce0293b35e0a46d6937bd5d5b53cdf06', '/images/l_cou02.png', NULL, 2, 1, NULL, NULL, '2019-07-26 22:28:56');
INSERT INTO `t_user_coupon` VALUES (45, '607260439864147968', '/images/l_cou01.png', NULL, 1, 1234, 0, 10086, '2019-08-03 17:16:11');
INSERT INTO `t_user_coupon` VALUES (46, '607333165165445120', '/images/l_cou01.png', NULL, 1, 1, 0, NULL, '2019-08-03 22:05:10');
INSERT INTO `t_user_coupon` VALUES (47, '607352774849462272', '/images/l_cou01.png', NULL, 1, 1, 0, NULL, '2019-08-03 23:23:06');
INSERT INTO `t_user_coupon` VALUES (48, '607353215242993664', '/images/l_cou02.png', NULL, 2, 1, 0, NULL, '2019-08-03 23:24:51');
INSERT INTO `t_user_coupon` VALUES (49, '664346196839497728', '/images/l_cou01.png', NULL, 1, 1234, 0, 10086, '2020-01-08 05:54:36');
INSERT INTO `t_user_coupon` VALUES (50, '664346339655548928', '/images/l_cou01.png', NULL, 1, 1234, 0, 10086, '2020-01-08 05:55:10');
COMMIT;

-- ----------------------------
-- Table structure for t_user_coupon1
-- ----------------------------
DROP TABLE IF EXISTS `t_user_coupon1`;
CREATE TABLE `t_user_coupon1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_coupon_code` varchar(128) NOT NULL DEFAULT '' COMMENT '??????',
  `pic_url` varchar(255) NOT NULL DEFAULT '' COMMENT '????',
  `coupon_id` int(11) NOT NULL DEFAULT '0' COMMENT 't_coupon???ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '?????id',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '???0??????1????',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '??t_order???',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='?????';

-- ----------------------------
-- Records of t_user_coupon1
-- ----------------------------
BEGIN;
INSERT INTO `t_user_coupon1` VALUES (1, '', '', 0, 0, 0, 0, NULL);
INSERT INTO `t_user_coupon1` VALUES (2, '', '', 0, 0, 0, 0, NULL);
INSERT INTO `t_user_coupon1` VALUES (3, '', '', 0, 0, 0, 0, NULL);
INSERT INTO `t_user_coupon1` VALUES (4, '', '', 0, 0, 0, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_useraddress
-- ----------------------------
DROP TABLE IF EXISTS `t_useraddress`;
CREATE TABLE `t_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_c0hoxg699yrbg42lrq6738j0n` (`user_id`),
  CONSTRAINT `FK_c0hoxg699yrbg42lrq6738j0n` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKivjwmwb9xngrc6ic856ryrb57` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_useraddress
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
