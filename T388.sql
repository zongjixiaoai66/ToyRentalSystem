/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t388`;
CREATE DATABASE IF NOT EXISTS `t388` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t388`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(38, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-20 06:16:39'),
	(39, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-20 06:16:39'),
	(40, 'wanju_types', '玩具类型', 1, '玩具类型1', NULL, NULL, '2023-03-20 06:16:39'),
	(41, 'wanju_types', '玩具类型', 2, '玩具类型2', NULL, NULL, '2023-03-20 06:16:39'),
	(42, 'wanju_types', '玩具类型', 3, '玩具类型3', NULL, NULL, '2023-03-20 06:16:39'),
	(43, 'wanju_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-20 06:16:39'),
	(44, 'wanju_order_types', '订单类型', 101, '已租赁', NULL, NULL, '2023-03-20 06:16:39'),
	(45, 'wanju_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-03-20 06:16:39'),
	(46, 'wanju_order_types', '订单类型', 103, '已退还', NULL, NULL, '2023-03-20 06:16:39'),
	(47, 'wanju_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-03-20 06:16:39'),
	(48, 'wanju_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-03-20 06:16:39'),
	(49, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-20 06:16:39'),
	(50, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-20 06:16:39'),
	(51, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-20 06:16:39'),
	(52, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-20 06:16:39'),
	(53, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-20 06:16:39'),
	(54, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-20 06:16:39');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', 133, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(2, '帖子标题2', 1, NULL, '发布内容2', 248, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(3, '帖子标题3', 3, NULL, '发布内容3', 43, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(4, '帖子标题4', 3, NULL, '发布内容4', 170, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(5, '帖子标题5', 3, NULL, '发布内容5', 259, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(6, '帖子标题6', 1, NULL, '发布内容6', 213, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(7, '帖子标题7', 3, NULL, '发布内容7', 94, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(8, '帖子标题8', 2, NULL, '发布内容8', 269, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(9, '帖子标题9', 1, NULL, '发布内容9', 122, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(10, '帖子标题10', 1, NULL, '发布内容10', 376, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(11, '帖子标题11', 3, NULL, '发布内容11', 447, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(12, '帖子标题12', 1, NULL, '发布内容12', 74, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(13, '帖子标题13', 1, NULL, '发布内容13', 7, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(14, '帖子标题14', 3, NULL, '发布内容14', 157, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(15, NULL, 1, NULL, '321', 14, 2, '2023-03-20 07:26:56', NULL, '2023-03-20 07:26:56'),
	(16, NULL, NULL, 1, '123123', 14, 2, '2023-03-20 07:27:31', NULL, '2023-03-20 07:27:31'),
	(17, NULL, 1, NULL, '666', 14, 2, '2024-08-13 06:45:59', NULL, '2024-08-13 06:45:59');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-03-20 06:17:08', '回复信息1', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(2, 3, '留言标题2', '留言内容2', '2023-03-20 06:17:08', '回复信息2', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(3, 3, '留言标题3', '留言内容3', '2023-03-20 06:17:08', '回复信息3', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(4, 3, '留言标题4', '留言内容4', '2023-03-20 06:17:08', '回复信息4', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(5, 2, '留言标题5', '留言内容5', '2023-03-20 06:17:08', '回复信息5', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(6, 2, '留言标题6', '留言内容6', '2023-03-20 06:17:08', '回复信息6', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(7, 3, '留言标题7', '留言内容7', '2023-03-20 06:17:08', '回复信息7', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(8, 1, '留言标题8', '留言内容8', '2023-03-20 06:17:08', '回复信息8', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(9, 1, '留言标题9', '留言内容9', '2023-03-20 06:17:08', '回复信息9', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(10, 1, '留言标题10', '留言内容10', '2023-03-20 06:17:08', '回复信息10', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(11, 2, '留言标题11', '留言内容11', '2023-03-20 06:17:08', '回复信息11', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(12, 3, '留言标题12', '留言内容12', '2023-03-20 06:17:08', '回复信息12', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(13, 3, '留言标题13', '留言内容13', '2023-03-20 06:17:08', '回复信息13', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(14, 2, '留言标题14', '留言内容14', '2023-03-20 06:17:08', '回复信息14', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(15, 1, '12', '3123', '2023-03-20 07:27:02', '123123', '2023-03-20 07:27:37', '2023-03-20 07:27:02'),
	(16, 1, '666', '666666', '2024-08-13 06:46:04', NULL, NULL, '2024-08-13 06:46:04');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'upload/news1.jpg', '2023-03-20 06:17:08', '公告详情1', '2023-03-20 06:17:08'),
	(2, '公告标题2', 2, 'upload/news2.jpg', '2023-03-20 06:17:08', '公告详情2', '2023-03-20 06:17:08'),
	(3, '公告标题3', 1, 'upload/news3.jpg', '2023-03-20 06:17:08', '公告详情3', '2023-03-20 06:17:08'),
	(4, '公告标题4', 2, 'upload/news4.jpg', '2023-03-20 06:17:08', '公告详情4', '2023-03-20 06:17:08'),
	(5, '公告标题5', 1, 'upload/news5.jpg', '2023-03-20 06:17:08', '公告详情5', '2023-03-20 06:17:08'),
	(6, '公告标题6', 1, 'upload/news6.jpg', '2023-03-20 06:17:08', '公告详情6', '2023-03-20 06:17:08'),
	(7, '公告标题7', 1, 'upload/news7.jpg', '2023-03-20 06:17:08', '公告详情7', '2023-03-20 06:17:08'),
	(8, '公告标题8', 1, 'upload/news8.jpg', '2023-03-20 06:17:08', '公告详情8', '2023-03-20 06:17:08'),
	(9, '公告标题9', 1, 'upload/news9.jpg', '2023-03-20 06:17:08', '公告详情9', '2023-03-20 06:17:08'),
	(10, '公告标题10', 1, 'upload/news10.jpg', '2023-03-20 06:17:08', '公告详情10', '2023-03-20 06:17:08'),
	(11, '公告标题11', 1, 'upload/news11.jpg', '2023-03-20 06:17:08', '公告详情11', '2023-03-20 06:17:08'),
	(12, '公告标题12', 1, 'upload/news12.jpg', '2023-03-20 06:17:08', '公告详情12', '2023-03-20 06:17:08'),
	(13, '公告标题13', 1, 'upload/news13.jpg', '2023-03-20 06:17:08', '公告详情13', '2023-03-20 06:17:08'),
	(14, '公告标题14', 2, 'upload/news14.jpg', '2023-03-20 06:17:08', '公告详情14', '2023-03-20 06:17:08');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'il9dgumq9go3ibv3ctuwod6pyekk3uz7', '2023-03-20 06:44:21', '2024-08-13 07:44:34'),
	(2, 1, 'a1', 'yonghu', '用户', 'b2zgj0dkcla4ondcqwiejtm4r4wju6pe', '2023-03-20 06:45:27', '2024-08-13 07:45:39');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-20 06:16:39');

DROP TABLE IF EXISTS `wanju`;
CREATE TABLE IF NOT EXISTS `wanju` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wanju_uuid_number` varchar(200) DEFAULT NULL COMMENT '玩具编号',
  `wanju_name` varchar(200) DEFAULT NULL COMMENT '玩具名称  Search111 ',
  `wanju_photo` varchar(200) DEFAULT NULL COMMENT '玩具照片',
  `wanju_types` int DEFAULT NULL COMMENT '玩具类型 Search111',
  `wanju_kucun_number` int DEFAULT NULL COMMENT '玩具库存',
  `wanju_new_money` decimal(10,2) DEFAULT NULL COMMENT '租赁价格/h',
  `wanju_clicknum` int DEFAULT NULL COMMENT '玩具热度',
  `wanju_content` longtext COMMENT '玩具介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `wanju_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='玩具';

DELETE FROM `wanju`;
INSERT INTO `wanju` (`id`, `wanju_uuid_number`, `wanju_name`, `wanju_photo`, `wanju_types`, `wanju_kucun_number`, `wanju_new_money`, `wanju_clicknum`, `wanju_content`, `shangxia_types`, `wanju_delete`, `insert_time`, `create_time`) VALUES
	(1, '1679293028950', '玩具名称1', 'upload/wanju1.jpg', 2, 101, 272.55, 141, '玩具介绍1', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(2, '1679293028940', '玩具名称2', 'upload/wanju2.jpg', 3, 102, 411.19, 170, '玩具介绍2', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(3, '1679293028929', '玩具名称3', 'upload/wanju3.jpg', 3, 103, 250.38, 395, '玩具介绍3', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(4, '1679293028881', '玩具名称4', 'upload/wanju4.jpg', 1, 104, 12.35, 77, '玩具介绍4', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(5, '1679293028946', '玩具名称5', 'upload/wanju5.jpg', 2, 105, 241.01, 375, '玩具介绍5', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(6, '1679293028876', '玩具名称6', 'upload/wanju6.jpg', 2, 106, 165.87, 354, '玩具介绍6', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(7, '1679293028872', '玩具名称7', 'upload/wanju7.jpg', 3, 107, 429.25, 132, '玩具介绍7', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(8, '1679293028885', '玩具名称8', 'upload/wanju1.jpg', 2, 105, 262.63, 480, '玩具介绍8', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(9, '1679293028875', '玩具名称9', 'upload/wanju2.jpg', 3, 109, 31.06, 109, '玩具介绍9', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(10, '1679293028912', '玩具名称10', 'upload/wanju3.jpg', 2, 1009, 478.51, 433, '玩具介绍10', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(11, '1679293028931', '玩具名称11', 'upload/wanju4.jpg', 1, 1011, 407.89, 7, '玩具介绍11', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(12, '1679293028960', '玩具名称12', 'upload/wanju5.jpg', 1, 1012, 207.92, 438, '玩具介绍12', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(13, '1679293028921', '玩具名称13', 'upload/wanju6.jpg', 1, 1013, 390.73, 205, '玩具介绍13', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(14, '1679293028894', '玩具名称14', 'upload/wanju7.jpg', 2, 1014, 61.32, 72, '玩具介绍14', 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08');

DROP TABLE IF EXISTS `wanju_collection`;
CREATE TABLE IF NOT EXISTS `wanju_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wanju_id` int DEFAULT NULL COMMENT '玩具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wanju_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='玩具收藏';

DELETE FROM `wanju_collection`;
INSERT INTO `wanju_collection` (`id`, `wanju_id`, `yonghu_id`, `wanju_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(2, 2, 2, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(3, 3, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(4, 4, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(6, 6, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(7, 7, 2, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(8, 8, 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(9, 9, 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(10, 10, 2, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(11, 11, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(12, 12, 3, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(13, 13, 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(14, 14, 1, 1, '2023-03-20 06:17:08', '2023-03-20 06:17:08');

DROP TABLE IF EXISTS `wanju_commentback`;
CREATE TABLE IF NOT EXISTS `wanju_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wanju_id` int DEFAULT NULL COMMENT '玩具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `wanju_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='玩具评价';

DELETE FROM `wanju_commentback`;
INSERT INTO `wanju_commentback` (`id`, `wanju_id`, `yonghu_id`, `wanju_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '评价内容1', '2023-03-20 06:17:08', '回复信息1', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(2, 2, 3, '评价内容2', '2023-03-20 06:17:08', '回复信息2', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(3, 3, 2, '评价内容3', '2023-03-20 06:17:08', '回复信息3', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(4, 4, 2, '评价内容4', '2023-03-20 06:17:08', '回复信息4', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(5, 5, 2, '评价内容5', '2023-03-20 06:17:08', '回复信息5', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(6, 6, 1, '评价内容6', '2023-03-20 06:17:08', '回复信息6', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(7, 7, 2, '评价内容7', '2023-03-20 06:17:08', '回复信息7', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(8, 8, 2, '评价内容8', '2023-03-20 06:17:08', '回复信息8', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(9, 9, 3, '评价内容9', '2023-03-20 06:17:08', '回复信息9', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(10, 10, 1, '评价内容10', '2023-03-20 06:17:08', '回复信息10', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(11, 11, 1, '评价内容11', '2023-03-20 06:17:08', '回复信息11', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(12, 12, 3, '评价内容12', '2023-03-20 06:17:08', '回复信息12', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(13, 13, 1, '评价内容13', '2023-03-20 06:17:08', '回复信息13', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(14, 14, 2, '评价内容14', '2023-03-20 06:17:08', '回复信息14', '2023-03-20 06:17:08', '2023-03-20 06:17:08'),
	(15, 8, 1, '123123', '2023-03-20 07:27:59', NULL, NULL, '2023-03-20 07:27:59');

DROP TABLE IF EXISTS `wanju_order`;
CREATE TABLE IF NOT EXISTS `wanju_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wanju_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `wanju_id` int DEFAULT NULL COMMENT '玩具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `wanju_order_number` int DEFAULT NULL COMMENT '租赁时间/h',
  `wanju_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `wanju_order_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始租赁时间',
  `wanju_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `wanju_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='玩具订单';

DELETE FROM `wanju_order`;
INSERT INTO `wanju_order` (`id`, `wanju_order_uuid_number`, `wanju_id`, `yonghu_id`, `buy_number`, `wanju_order_number`, `wanju_order_true_price`, `wanju_order_time`, `wanju_order_types`, `wanju_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1679297185510', 8, 1, 2, 1, 525.26, '2023-04-21 14:01:31', 105, 1, '2023-03-20 07:26:26', '2023-03-20 07:26:26'),
	(2, '1681711561818', 10, 1, 1, 1, 478.51, '2023-04-17 14:06:00', 101, 1, '2023-04-17 06:06:02', '2023-04-17 06:06:02'),
	(3, '1723531552775', 8, 1, 1, 1, 262.63, '2024-08-13 14:45:50', 101, 1, '2024-08-13 06:45:53', '2024-08-13 06:45:53');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 99286.09, '2023-03-20 06:17:08'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 136.71, '2023-03-20 06:17:08'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 827.32, '2023-03-20 06:17:08');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
