-- ----------------------------
-- 资源建设管理平台数据表结构
-- Database structure for kscrcdn
-- ----------------------------

-- mysql -h120.92.215.37 -ukscrcdn -P13306 -p
-- password by mingguangzhen
--

-- kscrcdn!@#1243

-- DROP DATABASE IF EXISTS `kscrcdn`;
-- CREATE DATABASE `kscrcdn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `omy`;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL COMMENT '姓名',
    `sex` varchar(128) NOT NULL COMMENT '性别',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for switch_papers
-- ----------------------------
DROP TABLE IF EXISTS `switch_papers`;
CREATE TABLE `switch_papers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL COMMENT '配置文件名',
    `paper` text DEFAULT NULL COMMENT '配置文件',
    `type` varchar(12) NOT NULL COMMENT '交换机型号',
    `switch_acl_id` int(11) NOT NULL COMMENT 'switch acl id',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交换机配置文件表';

INSERT INTO `switch_papers` (name, type, switch_acl_id) VALUES
('锐捷千兆交换机配置模版', 'ruijie', 1),
('思科千兆交换机N3048初始化配置模板','ciso', 1),
('锐捷S6220万兆交换机配置模板', 'ruijie', 1),
('锐捷S6220万兆交换机配置模板-in', 'ruijie-in', 1),
('H3C5120千兆配置模版', 'h3c-5120-gig', 2),
('H3C5130千兆交换机配置', 'h3c-5130-gig', 2),
('H3C万兆交换机配置模版', 'h3c', 2),
('H3C万兆交换机配置模版-in', 'h3c-in', 2),
('H3C-6805万兆交换机配置模版', 'h3c-6805', 2),
('H3C-6805万兆交换机配置模版-in', 'h3c-6805-in', 2),
('华为CE6810万兆交换机配置模版', 'hw', 3),
('华为CE6810万兆交换机配置模版-in', 'hw-in', 3),
('V2以上版本华为CE6810万兆交换机配置模版', 'hw-v2', 3);

-- ----------------------------
-- Table structure for switch_acl
-- ----------------------------
DROP TABLE IF EXISTS `switch_acl`;
CREATE TABLE `switch_acl` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL COMMENT 'isp name',
    `acl` text DEFAULT NULL COMMENT 'isp文件',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='isp表';

INSERT INTO `switch_acl` (name) VALUES
('ruijie-acl'),
('h3c-acl'),
('hw-acl');

-- ----------------------------
-- Table structure for switch_stack
-- ----------------------------
DROP TABLE IF EXISTS `switch_stack`;
CREATE TABLE `switch_stack` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(64) NOT NULL COMMENT '文件名',
    `model` varchar(24) NOT NULL COMMENT '堆叠类型',
    `stack` text DEFAULT NULL COMMENT '堆叠文件',
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='堆叠表';

INSERT INTO `switch_stack` (name, model) VALUES
('锐捷千兆堆叠配置', 'ruijie-gig'),
('锐捷万兆堆叠 -100G', 'ruijie'),
('锐捷万兆堆叠', 'ruijie'),
('H3C千兆堆叠', 'h3c-gig'),
('H3C万兆堆叠', 'h3c'),
('H3C-6805万兆堆叠', 'h3c'),
('华为千兆S5700堆叠模板', 'hw-gig'),
('华为万兆堆叠', 'hw');


