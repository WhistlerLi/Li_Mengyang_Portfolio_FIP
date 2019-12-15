-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-12-13 21:16:41
-- 服务器版本： 5.7.19
-- PHP 版本： 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `msg_database`
--

-- --------------------------------------------------------

--
-- 表的结构 `msg_table`
--

CREATE TABLE `msg_table` (
  `id` int(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'tom' COMMENT '姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮件',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `comment` text COMMENT '注释'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `msg_table`
--

INSERT INTO `msg_table` (`id`, `name`, `email`, `title`, `comment`) VALUES
(NULL, '1', '', '2', '3'),
(NULL, '1', '', '2', '3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
