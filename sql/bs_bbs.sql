-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Server version: 5.7.26
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bs_bbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--CREATE TABLE `admin` (
  `id` int(11) NOT NULL COMMENT '编号',
  `passport` varchar(50) DEFAULT NULL COMMENT '帐号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `login_times` int(11) DEFAULT NULL COMMENT '登录次数',
  `last_login` datetime DEFAULT NULL COMMENT '最后登录时间'
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='管理员';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `passport`, `password`, `login_times`, `last_login`) VALUES
(1, 'admin', 'admin', 1, '2015-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--CREATE TABLE `books` (
  `id` int(11) NOT NULL COMMENT '编号',
  `conts` text COMMENT '内容',
  `post_time` varchar(200) DEFAULT NULL COMMENT '发送时间',
  `reply` text COMMENT '管理回复',
  `reply_time` varchar(200) DEFAULT NULL COMMENT '回复时间',
  `user_id` int(11) DEFAULT NULL COMMENT '会员id'
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='留言本';

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `conts`, `post_time`, `reply`, `reply_time`, `user_id`) VALUES
(11, '测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2021-11-30 13:54:23', '留言回复留言回复留言回复留言回复留言回复留言回复留言回复', '2021-11-30 13:57:03', 10),
(10, '测试测试测试测试测试测试测试测试', '2021-11-30 13:54:19', '', '', 10);


-- --------------------------------------------------------

--
-- Table structure for table `cat`
--CREATE TABLE `cat` (
  `id` int(11) NOT NULL COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='栏目';

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `desc`) VALUES
(5, '选课交流', '关于通选课、体育课，你有什么想说的？'),
(6, '学习讨论', '无论是人人发愁的微积分还是线性代数你都能在这里找到高手与你解答！'),
(7, '资源共享', '作业参考答案、网课练习题、课本电子书……你想要的资料，我们应有尽有！'),
(8, '华园表白墙', '“爱”要大声说出来呀！');
-- --------------------------------------------------------

--
-- Table structure for table `comm`
--CREATE TABLE `comm` (
  `id` int(11) NOT NULL COMMENT '编号',
  `post_id` int(11) DEFAULT NULL COMMENT '帖子',
  `user_id` int(11) DEFAULT NULL COMMENT '会员',
  `conts` text COMMENT '内容',
  `post_time` datetime DEFAULT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='帖子回复';

--
-- Dumping data for table `comm`
--

INSERT INTO `comm` (`id`, `post_id`, `user_id`, `conts`, `post_time`) VALUES
(21, 17, 11, '下载测试<span>下载测试</span><span>下载测试</span><span>下载测试</span><span>下载测试</span><span>下载测试</span><span>下载测试</span>', '2021-11-30 13:56:49'),
(20, 15, 11, '<span>回复测试</span><span>回复测试</span><span>回复测试</span><span>回复测试</span><span>回复测试</span><span>回复测试</span>', '2021-11-30 13:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `flower`
--CREATE TABLE `flower` (
  `id` int(11) NOT NULL COMMENT '编号',
  `f_user` int(11) DEFAULT NULL COMMENT '发起人',
  `t_user` int(11) DEFAULT NULL COMMENT '目标人',
  `add_time` datetime DEFAULT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='送花';

--
-- Dumping data for table `flower`
--

INSERT INTO `flower` (`id`, `f_user`, `t_user`, `add_time`) VALUES
(5, 11, 10, '2021-11-30 13:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--
-- --------------------------------------------------------

--
-- Table structure for table `msg`
--
-- --------------------------------------------------------

--
-- Table structure for table `posts`
--
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comm`
--
ALTER TABLE `comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flower`
--
ALTER TABLE `flower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comm`
--
ALTER TABLE `comm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `flower`
--
ALTER TABLE `flower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号', AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
