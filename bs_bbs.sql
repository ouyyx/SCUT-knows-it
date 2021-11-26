/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : bs_bbs

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-11-22 21:16:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `passport` varchar(50) DEFAULT NULL COMMENT '帐号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `login_times` int(11) DEFAULT NULL COMMENT '登录次数',
  `last_login` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin', '1', '2015-03-31 00:00:00');

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `conts` text COMMENT '内容',
  `post_time` datetime DEFAULT NULL COMMENT '发送时间',
  `reply` text COMMENT '管理回复',
  `reply_time` datetime DEFAULT NULL COMMENT '回复时间',
  `user_id` int(11) DEFAULT NULL COMMENT '会员id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312 COMMENT='留言本';

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', '阿达盛大啊大三大四大', '2015-03-06 00:00:00', '阿达盛大撒阿斯达岁的', '2015-03-20 00:00:00', '1');
INSERT INTO `books` VALUES ('2', '啊打扫打扫打扫', '2015-03-19 00:00:00', '阿斯达岁的2222', '2015-03-11 00:16:14', '2');
INSERT INTO `books` VALUES ('3', 'adasd', '2015-03-12 22:13:05', '知道了\r\n', '2015-03-13 00:40:35', '1');
INSERT INTO `books` VALUES ('4', '测试留言', '2015-03-12 22:13:16', '知道了', '2015-03-13 00:40:32', '1');
INSERT INTO `books` VALUES ('5', '哈哈速度阿萨', '2015-03-12 22:17:28', '知道了', '2015-03-13 00:40:30', '1');
INSERT INTO `books` VALUES ('6', 'adas', '2015-03-12 22:21:18', '知道了', '2015-03-13 00:40:28', '3');
INSERT INTO `books` VALUES ('7', 'adladjlakjdlkadaj ', '2015-03-12 22:24:35', '知道了', '2015-03-13 00:40:27', '3');

-- ----------------------------
-- Table structure for cat
-- ----------------------------
DROP TABLE IF EXISTS `cat`;
CREATE TABLE `cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gb2312 COMMENT='栏目';

-- ----------------------------
-- Records of cat
-- ----------------------------
INSERT INTO `cat` VALUES ('5', '课程交流', '课程方面的互相交流');
INSERT INTO `cat` VALUES ('6', '学习讨论', '关于学习课程的讨论');
INSERT INTO `cat` VALUES ('7', '资源共享', '学习资料，课件的分享与谈论');
INSERT INTO `cat` VALUES ('8', '校内趣闻', '校园内发生的好玩的事情');

-- ----------------------------
-- Table structure for comm
-- ----------------------------
DROP TABLE IF EXISTS `comm`;
CREATE TABLE `comm` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `post_id` int(11) DEFAULT NULL COMMENT '帖子',
  `user_id` int(11) DEFAULT NULL COMMENT '会员',
  `conts` text COMMENT '内容',
  `post_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gb2312 COMMENT='帖子回复';

-- ----------------------------
-- Records of comm
-- ----------------------------
INSERT INTO `comm` VALUES ('13', '9', '3', '<span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span><span>测试回复</span>', '2015-03-13 01:20:40');
INSERT INTO `comm` VALUES ('14', '9', '3', '哈哈哈上的阿斯大速度阿斯&nbsp;', '2015-03-13 01:20:45');
INSERT INTO `comm` VALUES ('15', '9', '1', '我也来了', '2015-03-13 01:21:04');
INSERT INTO `comm` VALUES ('16', '10', '1', '带大的卡就是的卡圣诞节阿克苏大速度', '2015-03-13 01:21:38');
INSERT INTO `comm` VALUES ('17', '10', '1', '来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题', '2015-03-13 01:21:42');
INSERT INTO `comm` VALUES ('18', '10', '1', '来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题', '2015-03-13 01:21:45');
INSERT INTO `comm` VALUES ('19', '11', '5', '123123', '2021-11-15 22:47:45');

-- ----------------------------
-- Table structure for flower
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `f_user` int(11) DEFAULT NULL COMMENT '发起人',
  `t_user` int(11) DEFAULT NULL COMMENT '目标人',
  `add_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312 COMMENT='送花';

-- ----------------------------
-- Records of flower
-- ----------------------------
INSERT INTO `flower` VALUES ('1', '1', '3', '2015-03-13 00:17:07');
INSERT INTO `flower` VALUES ('2', '1', '3', '2015-03-13 00:26:31');
INSERT INTO `flower` VALUES ('3', '1', '3', '2015-03-13 00:26:34');
INSERT INTO `flower` VALUES ('4', '1', '3', '2015-03-13 01:21:08');

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `f_user` int(11) DEFAULT NULL COMMENT '发起人',
  `t_user` int(11) DEFAULT NULL COMMENT '目标人',
  `conf` int(11) DEFAULT NULL COMMENT '是否确认',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312 COMMENT='好友';

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES ('2', '3', '1', '0');

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `f_user` int(11) DEFAULT NULL COMMENT '发起人',
  `t_user` int(11) DEFAULT NULL COMMENT '目标人',
  `conts` text COMMENT '内容',
  `post_time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312 COMMENT='短消息';

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES ('1', '3', '1', '湿答答', '2015-03-13 01:12:30');
INSERT INTO `msg` VALUES ('2', '3', '1', '阿萨德据了解了喀什多空拉锯式的绿卡即使考虑到据阿莱克斯加大科技手段卡就是大家喀什的空间啊哈苏德空间啊红色经典 ', '2015-03-13 01:18:14');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `conts` text COMMENT '内容',
  `post_time` datetime DEFAULT NULL COMMENT '时间',
  `user_id` int(11) DEFAULT NULL COMMENT '会员',
  `cat_id` int(11) DEFAULT NULL COMMENT '栏目',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312 COMMENT='帖子';

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('9', '测试附件测试附件测试附件测试附件', '<h2>\r\n	<strong><a class=\"ke-insertfile\" href=\"/002/upfile/editor/file/20150313/20150313011943_19269.zip\" target=\"_blank\">测试附件</a>点击下载</strong>\r\n</h2>', '2015-03-13 01:20:08', '3', '5', '1');
INSERT INTO `posts` VALUES ('8', '测试图片', '<img src=\"/002/upfile/editor/image/20150313/20150313011852_99335.jpg\" alt=\"\" />', '2015-03-13 01:18:54', '3', '5', null);
INSERT INTO `posts` VALUES ('7', 'asda;lsjdlajsd垃圾啊私聊肯德基阿克斯当就', '阿达盛大撒asda;lsjdlajsd垃圾啊私聊肯德基阿克斯当就asda;lsjdlajsd垃圾啊私聊肯德基阿克斯当就asda;lsjdlajsd垃圾啊私聊肯德基阿克斯当就', '2015-03-13 00:33:54', '1', '5', null);
INSERT INTO `posts` VALUES ('10', '来一个新主题', '来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题来一个新主题', '2015-03-13 01:21:30', '1', '5', '1');
INSERT INTO `posts` VALUES ('11', '123123', '12312312', '2021-11-15 22:43:15', '5', '5', null);
INSERT INTO `posts` VALUES ('12', '最新的测试', '最新的测试最新的测试最新的测试', '2021-11-22 21:15:47', '5', '5', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `passport` varchar(50) DEFAULT NULL COMMENT '帐号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `reg_time` datetime DEFAULT NULL COMMENT '注册时间',
  `avatar` varchar(200) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312 COMMENT='会员';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'u1', '123456a', '男', '1984-10-10', '123456', '北京北京', '2015-03-04 00:00:00', '');
INSERT INTO `users` VALUES ('3', 'u2', '123456aa', '男', '1992-10-10', '132456', '北京', '2015-03-12 20:59:12', 'upfile/images/20150312222126.jpg');
INSERT INTO `users` VALUES ('4', 'u221', '123456a', '女', '1992-10-10', '566687422', '北京', '2015-03-12 21:45:58', 'upfile/images/20150312215940.jpg');
INSERT INTO `users` VALUES ('5', '123', '123', '男', '1992-01-01', '904915452', '123123', '2021-11-15 22:43:01', 'upfile/images/20211115224247.jpg');
