/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : mountain

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 19/05/2020 11:38:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `a_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `a_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `a_starttime` datetime(0) NOT NULL COMMENT '开始时间',
  `a_estimateendtime` datetime(0) NOT NULL COMMENT '预计结束时间',
  `a_endtime` datetime(0) DEFAULT NULL COMMENT '完成时间',
  `a_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `a_status` tinyint(4) NOT NULL COMMENT '状态（0为未开始，1为进行中，2为取消，3为完成）',
  `a_m_id` int(11) NOT NULL COMMENT '山峰',
  `a_type` tinyint(4) NOT NULL COMMENT '类型（0为阿尔卑斯式，1为金字塔形兵站式，2为技术式登山，3为娱乐式登山）',
  `a_level` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '以YSD系数为标准',
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, '泰山行', '2019-08-04 00:00:00', '2019-09-10 19:27:57', '2019-12-31 00:00:00', '泰山行', 2, 1, 0, '5.b');
INSERT INTO `activity` VALUES (2, '衡山行', '2019-09-10 00:00:00', '2019-09-12 19:30:16', '2020-01-12 00:00:00', '衡山行', 2, 2, 1, '5.a');
INSERT INTO `activity` VALUES (3, '华山行', '2019-09-01 00:00:00', '2019-09-03 19:32:28', '2020-01-12 00:00:00', '华山行', 2, 3, 3, '3.0');
INSERT INTO `activity` VALUES (4, '恒山行', '2019-09-09 00:00:00', '2019-09-12 19:34:18', '2020-01-12 00:00:00', '恒山行', 2, 4, 2, '5.0');
INSERT INTO `activity` VALUES (5, '嵩山行', '2019-09-12 00:00:00', '2019-11-23 00:00:00', '2020-01-12 00:00:00', '嵩山行', 3, 5, 3, '1.0');
INSERT INTO `activity` VALUES (6, '釜山行', '2019-11-12 00:00:00', '2019-11-13 00:00:00', '2020-01-31 00:00:00', '丧尸观光三日游', 2, 6, 1, '1.a');
INSERT INTO `activity` VALUES (8, '黄岐山之旅', '2020-04-07 00:00:00', '2020-04-10 00:00:00', '2020-01-12 00:00:00', '有水库', 2, 8, 3, '0.1');
INSERT INTO `activity` VALUES (9, '桃与樱', '2020-04-08 00:00:00', '2020-04-18 00:00:00', '2020-05-03 00:00:00', '桃花妖，樱花妖', 3, 9, 0, '1.a');
INSERT INTO `activity` VALUES (10, '八角山之行', '2020-04-09 00:00:00', '2020-04-22 00:00:00', '2020-04-16 00:00:00', '八角山之谜', 3, 10, 1, '1.b');
INSERT INTO `activity` VALUES (11, '小白山', '2020-04-12 00:00:00', '2020-04-19 00:00:00', NULL, '大舅妈', 0, 11, 2, '1.5a');
INSERT INTO `activity` VALUES (12, '测试山之行', '2020-02-22 00:00:00', '2020-02-16 00:00:00', '2020-01-24 00:00:00', '测试用', 3, 12, 2, '1.a');
INSERT INTO `activity` VALUES (13, '测试名', '2020-02-13 00:00:00', '2020-02-21 00:00:00', '2020-01-16 00:00:00', '测试用', 2, 13, 0, '1.a');
INSERT INTO `activity` VALUES (14, '测试是', '2020-02-04 00:00:00', '2020-03-03 00:00:00', NULL, '多少', 2, 14, 1, '1.a');
INSERT INTO `activity` VALUES (15, '百度山之行', '2020-05-06 00:00:00', '2020-05-08 00:00:00', NULL, '三日游', 0, 15, 1, '1.5b');
INSERT INTO `activity` VALUES (16, '测试1', '2020-05-16 00:00:00', '2020-05-22 00:00:00', NULL, '第一个测试', 0, 16, 0, '1.2a');
INSERT INTO `activity` VALUES (17, '的方式', '2020-05-15 00:00:00', '2020-05-22 00:00:00', NULL, '速度', 0, 17, 0, '1.2a');
INSERT INTO `activity` VALUES (18, '白云山', '2020-05-30 00:00:00', '2020-06-05 00:00:00', NULL, '白云山', 0, 19, 0, '1.2a');
INSERT INTO `activity` VALUES (19, '黄山', '2020-04-25 00:00:00', '2020-05-02 00:00:00', '2020-04-24 00:00:00', '黄山', 3, 20, 0, '1.2a');
INSERT INTO `activity` VALUES (20, '秋名山', '2020-05-29 00:00:00', '2020-05-30 00:00:00', NULL, '九曲十八弯', 0, 21, 1, '1.2a');
INSERT INTO `activity` VALUES (21, '庐山行', '2020-06-19 00:00:00', '2020-06-23 00:00:00', NULL, '中国十大名山之一', 0, 22, 2, '2.a');
INSERT INTO `activity` VALUES (22, '球', '2020-05-05 00:00:00', '2020-05-07 00:00:00', NULL, '球', 0, 23, 1, '1.4');
INSERT INTO `activity` VALUES (23, '活佛那', '2020-05-22 00:00:00', '2020-05-29 00:00:00', NULL, '活动', 0, 24, 1, '1.2a');

-- ----------------------------
-- Table structure for activityparticipate
-- ----------------------------
DROP TABLE IF EXISTS `activityparticipate`;
CREATE TABLE `activityparticipate`  (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参与编号',
  `ap_a_id` int(11) NOT NULL COMMENT '活动编号',
  `ap_u_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参与编号',
  `ap_reservationtime` datetime(0) NOT NULL COMMENT '预订时间',
  `ap_canceledtime` datetime(0) DEFAULT NULL COMMENT '取消时间',
  `ap_status` tinyint(4) NOT NULL COMMENT '状态（0为已预订，1为取消，2为完成）',
  PRIMARY KEY (`ap_id`) USING BTREE,
  INDEX `活动编号`(`ap_a_id`) USING BTREE,
  CONSTRAINT `活动编号` FOREIGN KEY (`ap_a_id`) REFERENCES `activity` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activityparticipate
-- ----------------------------
INSERT INTO `activityparticipate` VALUES (1, 2, 'a3', '2019-09-09 19:39:45', NULL, 2);
INSERT INTO `activityparticipate` VALUES (2, 2, 'a2', '2019-09-09 19:40:26', NULL, 2);
INSERT INTO `activityparticipate` VALUES (3, 1, 'a3', '2019-09-09 19:41:24', '2019-09-10 19:41:29', 1);
INSERT INTO `activityparticipate` VALUES (4, 1, 'u5', '2019-09-02 19:41:50', NULL, 2);
INSERT INTO `activityparticipate` VALUES (5, 5, 'a1', '2019-09-10 19:42:21', NULL, 2);
INSERT INTO `activityparticipate` VALUES (6, 5, 'a9', '2019-09-11 15:28:01', '2020-01-31 00:00:00', 2);
INSERT INTO `activityparticipate` VALUES (7, 3, 'a9', '2019-09-04 18:35:51', NULL, 2);
INSERT INTO `activityparticipate` VALUES (9, 1, 'a8', '2019-11-08 00:00:00', '2020-04-13 13:55:39', 1);
INSERT INTO `activityparticipate` VALUES (10, 5, 'a9', '2019-11-08 00:00:00', NULL, 2);
INSERT INTO `activityparticipate` VALUES (11, 3, 'a8', '2020-01-14 14:59:08', '2020-04-13 00:00:00', 1);
INSERT INTO `activityparticipate` VALUES (12, 6, 'a8', '2020-01-16 00:00:00', '2020-01-31 00:00:00', 2);
INSERT INTO `activityparticipate` VALUES (13, 6, 'u7', '2020-01-16 00:00:00', '2020-01-31 00:00:00', 2);
INSERT INTO `activityparticipate` VALUES (16, 2, 'u7', '2019-11-14 20:32:00', '2020-01-12 00:00:00', 2);
INSERT INTO `activityparticipate` VALUES (17, 1, 'a7', '2019-08-09 20:32:38', '2020-09-10 20:32:50', 1);
INSERT INTO `activityparticipate` VALUES (18, 1, 'a8', '2019-09-03 20:33:39', '2019-09-10 20:33:48', 1);
INSERT INTO `activityparticipate` VALUES (21, 9, 'a7', '2020-01-17 00:00:00', NULL, 2);
INSERT INTO `activityparticipate` VALUES (22, 11, 'a8', '2020-01-17 00:00:00', NULL, 0);
INSERT INTO `activityparticipate` VALUES (23, 9, 'a8', '2020-01-17 00:00:00', '2020-04-13 00:00:00', 1);
INSERT INTO `activityparticipate` VALUES (24, 14, 'u7', '2020-01-17 00:00:00', NULL, 0);
INSERT INTO `activityparticipate` VALUES (32, 16, 'u7', '2020-05-04 00:00:00', NULL, 0);
INSERT INTO `activityparticipate` VALUES (33, 20, 'a9', '2020-05-04 00:00:00', NULL, 0);
INSERT INTO `activityparticipate` VALUES (34, 16, 'a10', '2020-05-04 00:00:00', NULL, 0);
INSERT INTO `activityparticipate` VALUES (35, 11, 'u7', '2020-05-04 00:00:00', '2020-05-04 00:00:00', 1);
INSERT INTO `activityparticipate` VALUES (36, 11, 'u7', '2020-05-05 00:00:00', '2020-05-05 00:00:00', 1);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `ad_realname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名\r\n',
  `ad_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `ad_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `ad_sex` tinyint(4) NOT NULL COMMENT '性别（0为男，1为女）',
  `ad_cardid` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `ad_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `ad_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `ad_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '住址',
  `ad_role` tinyint(4) NOT NULL COMMENT '角色（0为用户管理员，1为活动管理员，2为公告管理员）',
  `ad_regdate` date NOT NULL COMMENT '注册日期',
  `ad_logindate` datetime(0) DEFAULT NULL COMMENT '登录时间',
  PRIMARY KEY (`ad_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '陈一', '一一', '123456', 1, '440852423641538475', '13415847894', 'chenyi@qq.com', '广东省XXXXXXXX', 1, '2019-09-07', '2019-09-07 14:59:24');
INSERT INTO `admin` VALUES (2, '梁二', '二二', '456789', 0, '4135134646231896', '15896432147', 'liange@qq.com', '广东省XXXXXXXX', 2, '2019-09-11', '2019-09-11 18:47:53');
INSERT INTO `admin` VALUES (3, '张三', '三三', '789123', 1, '489456423741258963', '12345684215', 'zhangsan@qq.com', '四川省XXXXXXXXXX', 0, '2019-08-13', '2019-08-21 18:50:09');
INSERT INTO `admin` VALUES (8, 'Biller', 'BB', '123456', 0, '7894561237485961237', '12358749698', 'Biller@163.com', '福建厦门市', 1, '2019-09-05', '2019-09-07 18:59:40');
INSERT INTO `admin` VALUES (9, 'Derek', 'DD', '123456', 0, '456132378945612345', '65832149712', 'Derek@163.com', '深圳市', 2, '2019-09-02', '2019-09-09 19:01:37');
INSERT INTO `admin` VALUES (10, 'Ease', 'EE', '123456', 1, '987654789456712389', '65832149712', 'Ease@163.com', '杭州市', 0, '2019-08-01', '2019-09-01 19:03:27');

-- ----------------------------
-- Table structure for mountain
-- ----------------------------
DROP TABLE IF EXISTS `mountain`;
CREATE TABLE `mountain`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '山峰编号',
  `m_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `m_altitude` float DEFAULT NULL COMMENT '海拔高度',
  `m_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '具体地址',
  `m_climate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '气候描述',
  `m_roadmap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路线图',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mountain
-- ----------------------------
INSERT INTO `mountain` VALUES (1, '泰山', 1545, '山东', '晴天', 'statics/images/inbox.png');
INSERT INTO `mountain` VALUES (2, '衡山', 1300.2, '湖南', '多云', 'statics/images/inbox.png');
INSERT INTO `mountain` VALUES (3, '华山', 2154.9, '陕西', '有云', 'statics/images/inbox.png');
INSERT INTO `mountain` VALUES (4, '恒山', 2426, '山西', '多霜', 'statics/images/inbox.png');
INSERT INTO `mountain` VALUES (5, '嵩山', 1512, '河南', '小雨', 'statics/images/inbox.png');
INSERT INTO `mountain` VALUES (6, '釜山', 0, '韩国釜山', '阴', 'statics/images/abc.jpg');
INSERT INTO `mountain` VALUES (7, '登山', 1000, '韩国釜山', '阴天', 'statics/images/abc.jpg');
INSERT INTO `mountain` VALUES (8, '黄岐山', 500, '揭阳市', '晴天', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (9, '花山', 0, '北海', '微风', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (10, '八角山', 0, '北京', '阴', 'statics/images/abc.jpg');
INSERT INTO `mountain` VALUES (11, '小白', 0, '上海', '晴', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (12, '测试山', 0, '广州', '阴', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (13, '测试山峰', 0, '广州', '晴', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (14, ' 水电费', 1800, '广州', '晴', 'statics/images/abc.jpg');
INSERT INTO `mountain` VALUES (15, '百度山', 0, '广州', '阴雨连绵', 'statics/images/屏保.jpg');
INSERT INTO `mountain` VALUES (16, '测试山', 4522, '北里', '微风', 'statics/images/第一个山.jpg');
INSERT INTO `mountain` VALUES (17, '序', 2566, '广州', '晴', 'statics/images/第二个山.jpg');
INSERT INTO `mountain` VALUES (18, NULL, 0, NULL, NULL, 'statics/images/第一个山.jpg');
INSERT INTO `mountain` VALUES (19, '白云山', 1200, '广州', '晴', 'statics/images/第二个山.jpg');
INSERT INTO `mountain` VALUES (20, '黄山', 0, '广州', '请', 'statics/images/bca.jpg');
INSERT INTO `mountain` VALUES (21, '秋名山', 1500, '群马县   ', '晴', 'statics/images/第一个山.jpg');
INSERT INTO `mountain` VALUES (22, '庐山', 1474, '江西省九江市庐山市', '晴', 'statics/images/第二个山.jpg');
INSERT INTO `mountain` VALUES (23, '球', 1000, '广州', '晴', 'statics/images/第一个山.jpg');
INSERT INTO `mountain` VALUES (24, '活动', 1000, '广州', '晴', 'statics/images/第一个山.jpg');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `n_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `n_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `n_publishtime` datetime(0) DEFAULT NULL COMMENT '发布时间',
  `n_iscancel` tinyint(4) NOT NULL COMMENT '是否撤销（0为否，1为是）',
  `n_canceltime` datetime(0) DEFAULT NULL COMMENT '撤销时间',
  `n_isdel` tinyint(4) NOT NULL COMMENT '是否删除',
  `n_deletetime` datetime(0) DEFAULT NULL COMMENT '删除时间',
  `n_priority` int(11) NOT NULL COMMENT '优先级（5为最高级，0为最低级）',
  `n_a_id` int(10) UNSIGNED DEFAULT NULL COMMENT '活动编号',
  `n_u_id` int(11) DEFAULT NULL COMMENT '发布者编号',
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '活动更新', '9月8日第五人格将进行更新', '2020-04-25 04:42:30', 0, '2019-09-05 19:05:38', 1, '2020-04-25 04:42:27', 3, NULL, 9);
INSERT INTO `notice` VALUES (2, '新活动', '9月8日在山', '2020-04-25 04:42:49', 0, '2020-05-04 08:41:14', 1, '2020-05-04 07:25:33', 2, 2, 9);
INSERT INTO `notice` VALUES (4, '测试3', '公告', '2020-05-05 01:54:15', 0, '2020-05-05 01:54:01', 1, '2020-05-05 01:54:23', 3, NULL, 9);
INSERT INTO `notice` VALUES (7, '测试', '测试内容', '2019-11-08 08:59:40', 0, NULL, 1, '2020-05-04 08:52:35', 2, NULL, 9);
INSERT INTO `notice` VALUES (8, '测试吃烧烤了', '吃烧烤', '2020-04-13 07:12:06', 0, NULL, 1, '2020-05-04 12:33:49', 2, NULL, 9);
INSERT INTO `notice` VALUES (9, '测试', '测试', '2020-01-17 14:15:33', 1, '2020-05-04 08:49:36', 0, NULL, 2, NULL, 9);
INSERT INTO `notice` VALUES (10, '测试吃烧烤了', '', '2020-05-04 08:48:19', 0, '2020-05-04 08:14:31', 0, NULL, 2, NULL, 9);
INSERT INTO `notice` VALUES (11, '活动更新', '发布', '2020-04-24 13:13:16', 0, NULL, 0, NULL, 2, NULL, 9);
INSERT INTO `notice` VALUES (12, '第五人格活动更新', '更新', '2020-04-24 13:33:43', 0, NULL, 0, NULL, 2, NULL, 9);
INSERT INTO `notice` VALUES (13, '第五人格活动更新', '阿萨德', '2020-04-25 04:42:16', 0, NULL, 0, NULL, 2, NULL, 9);
INSERT INTO `notice` VALUES (14, '活动撤销', '因大雨活动撤销', '2020-04-30 08:53:56', 0, NULL, 0, NULL, 1, NULL, 9);
INSERT INTO `notice` VALUES (15, '活动集合地点', '山脚下', '2020-04-30 08:55:03', 0, NULL, 0, NULL, 5, NULL, 9);
INSERT INTO `notice` VALUES (16, '活动推迟', '小白山活动无限期推迟，望周知', '2020-05-04 07:24:58', 0, NULL, 0, NULL, 4, NULL, 9);
INSERT INTO `notice` VALUES (17, '活动推迟', '活动', '2020-05-04 12:33:20', 0, NULL, 0, NULL, 3, NULL, 9);
INSERT INTO `notice` VALUES (18, '活动更新', '活动', '2020-05-05 01:53:44', 0, NULL, 0, NULL, 2, NULL, 9);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `u_realname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `u_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `u_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `u_sex` tinyint(4) DEFAULT NULL COMMENT '性别（0为男，1为女）',
  `u_cardid` varchar(19) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证',
  `u_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号码',
  `u_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `u_address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '住址',
  `u_regdate` date DEFAULT NULL COMMENT '注册日期',
  `u_logindate` datetime(0) DEFAULT NULL COMMENT '登录时间',
  `u_status` tinyint(4) DEFAULT NULL COMMENT '状态(1为待审批，0为已存在，2为被驳回)',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (7, 'Alice', 'AA', '123456', 1, '440856200000000001', '13315669851', 'Alice@163.com', '东莞市虎门', '2019-08-29', '2020-05-05 00:00:00', 0);
INSERT INTO `user` VALUES (12, 'sd', 'sh', '123456', 0, '440856200000000000', '13565489754', '123456789@qq.com', '北极', '2020-01-17', NULL, 1);
INSERT INTO `user` VALUES (17, 'aa', '一一', '123456', 1, '440856200000000000', '13565489754', '123456789@qq.com', NULL, '2020-01-17', NULL, 2);
INSERT INTO `user` VALUES (18, '式神', '菲菲', '123456', 1, '440856200000000001', '13565489754', '123456789@qq.com', '广州', '2020-01-17', NULL, 1);
INSERT INTO `user` VALUES (19, '孙策', '策', '123456', 0, '440856200000000002', '13565489754', '123456789@qq.com', '东吴', '2020-05-04', NULL, 0);
INSERT INTO `user` VALUES (20, '测验', '测釜', '123456', 0, '44085620000000024', '13565489754', '123456789@qq.com', '', '2020-01-17', '1970-01-19 00:00:00', 1);
INSERT INTO `user` VALUES (22, '式神', 'LL', '45678', 0, '440856200000000000', '13565489754', '12345689@qq.com', '广州', '2020-04-13', NULL, 1);
INSERT INTO `user` VALUES (23, 'A', '测试1', 'a', 0, '440856200000000000', '13565489754', '123456789@qq.com', '广州白云区', '2020-04-25', NULL, 1);
INSERT INTO `user` VALUES (24, '不知火', '阿离', '123456', 1, '440856200000001234', '13565489845', '123456789@163.com', '北京', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (25, '小白猫', '猪猪', '456123', 1, '440856200000065431', '13565489986', '12345689@163.com', '广州', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (26, '斗牛犬', '白白', '123456', 1, '440856200000000333', '13565489886', '12345689@163.com', '广州白云区', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (27, '缘结神', '小缘', '123456', 1, '440856200000066533', '13565489857', '12345@qq.com', '四川', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (28, '大乔', '大乔', '123456', 1, '440856200000065432', '13565489763', '12@163.com', '东吴', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (29, '小乔', '小乔', '123456', 1, '440856200000009876', '13565489123', '123@qq.com', '东吴', '2020-05-04', NULL, 1);
INSERT INTO `user` VALUES (30, '周瑜', '周瑜', '123456', 0, '440856200000000321', '13565489321', '321@qq.com', '东吴', '2020-05-04', NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
