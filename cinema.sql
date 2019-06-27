/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : cinema

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-05-10 13:52:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_info
-- ----------------------------
DROP TABLE IF EXISTS `account_info`;
CREATE TABLE `account_info` (
  `account_id` bigint(20) NOT NULL,
  `account` double DEFAULT '0',
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for cinema_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `cinema_basic_info`;
CREATE TABLE `cinema_basic_info` (
  `cinema_id` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `cinema_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`cinema_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for cinema_movie_info
-- ----------------------------
DROP TABLE IF EXISTS `cinema_movie_info`;
CREATE TABLE `cinema_movie_info` (
  `cinema_movie_id` bigint(20) NOT NULL,
  `begin_time` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hall` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `cinema_basic_info_cinema_id` bigint(20) NOT NULL,
  `movie_basic_info_movie_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cinema_movie_id`),
  KEY `FKn8nuoeuqr4ahr8lcjhjkdvjw` (`cinema_basic_info_cinema_id`),
  KEY `FKo15hk4m3mwyxgi0oxqrrdojtt` (`movie_basic_info_movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for movie_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `movie_basic_info`;
CREATE TABLE `movie_basic_info` (
  `movie_id` bigint(20) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `movie_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `movie_time` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `movie_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `release_time` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `order_id` bigint(20) NOT NULL,
  `line` int(11) DEFAULT NULL,
  `lover_seat` bit(1) DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `cinema_movie_info_cinema_movie_id` bigint(20) NOT NULL,
  `user_basic_info_user_id` bigint(20) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKhch08yenvdayqfc9v9eemodon` (`cinema_movie_info_cinema_movie_id`),
  KEY `FKa6tlw661uknea724o18323sp3` (`user_basic_info_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Table structure for user_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `user_basic_info`;
CREATE TABLE `user_basic_info` (
  `user_id` bigint(20) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `manager` bit(1) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
