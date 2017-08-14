-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-03-13 16:32:00
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yuanku_job`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `add_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `user_name`, `user_pwd`, `status`, `add_time`) VALUES
(2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, '1482389688'),
(3, 'smith', 'e10adc3949ba59abbe56e057f20f883e', 1, '1482389758'),
(4, 'smith1', 'e10adc3949ba59abbe56e057f20f883e', 1, '1482390125');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) NOT NULL,
  `article_content` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `article_picture` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `article_title`, `article_content`, `cate_id`, `article_picture`, `add_time`) VALUES
(6, '快圣诞节了', '有事件了吗！', 0, '', '1482222933'),
(7, '快圣诞节了', '有事件了吗！', 0, '', '1482222998'),
(16, '冬至', '汤圆有了！', 0, '', '1482304513'),
(17, '在不在？！', '在呀！s', 0, '', '1482308062'),
(20, '快圣诞节了', '圣诞老人来了s', 0, '', '1482397690');

-- --------------------------------------------------------

--
-- 表的结构 `categor`
--

CREATE TABLE IF NOT EXISTS `categor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  `sort` smallint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `scale` varchar(50) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- 转存表中的数据 `company`
--

INSERT INTO `company` (`id`, `company_name`, `phone`, `province`, `city`, `area`, `address`, `scale`, `introduction`, `photo`, `add_time`) VALUES
(45, 'cctv', '', '', '', '', 'sssssssssss', '1000-9999人', 'wo shi yi wu da nc', '', ''),
(46, '呱唧呱唧啾啾啾', '', '', '', '', '代表太阳拥抱你', '100-499人', '我们就是太阳神的后裔，代表太阳拥抱你', '', ''),
(44, '放飞科技', '', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '100-499人', '轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧轻轻巧巧凄凄去亲爱222222222222222222222222222', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `enterprise`
--

CREATE TABLE IF NOT EXISTS `enterprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `enterprise`
--

INSERT INTO `enterprise` (`id`, `user_name`, `user_pwd`, `add_time`) VALUES
(18, 'admin', 'e10adc3949ba59abbe56e057f20f883e', ''),
(19, '123456', 'e10adc3949ba59abbe56e057f20f883e', '1484120765'),
(20, 'who123', 'e10adc3949ba59abbe56e057f20f883e', '1484401559'),
(21, '111111', 'a2550eeab0724a691192ca13982e6ebd', '1484474842'),
(22, 'qqqqq', 'a2550eeab0724a691192ca13982e6ebd', '1484475148'),
(23, 'qqqqqq', '76419c58730d9f35de7ac538c2fd6737', '1486736398'),
(24, 'sss123', '76419c58730d9f35de7ac538c2fd6737', '1487077474');

-- --------------------------------------------------------

--
-- 表的结构 `enterprise_info`
--

CREATE TABLE IF NOT EXISTS `enterprise_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `auditing` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `enterprise_info`
--

INSERT INTO `enterprise_info` (`id`, `company_id`, `name`, `job`, `email`, `phone`, `photo`, `auditing`) VALUES
(22, 44, '芭芭拉', '三司使', '687123@qq.com', '1122222', '', 2),
(23, 45, 'cc', 'vv', 'b', 'q', '/aoshi-master./Public/upload/enterprise_23.png', 2),
(24, 46, '呱唧和啾啾', 'CEO', '111345@qq.com', '11305302518', '', 2);

-- --------------------------------------------------------

--
-- 表的结构 `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) NOT NULL,
  `enterprise_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `salary_low` varchar(5) NOT NULL,
  `salary_hig` varchar(5) NOT NULL,
  `work_time` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `job_require` text NOT NULL,
  `job_describe` text NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- 转存表中的数据 `job`
--

INSERT INTO `job` (`id`, `job_name`, `enterprise_id`, `company_name`, `province`, `city`, `area`, `address`, `salary_low`, `salary_hig`, `work_time`, `education`, `email`, `job_require`, `job_describe`, `add_time`, `status`) VALUES
(228, 'php工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(229, 'php工程师', 23, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(230, 'java', 23, 'cctv', '山东省', '莱芜市', '钢城区', 'sssssssssss', '17k', '18k', '3-5年', '本科', 'b', 'ccvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvv', '2017-02-12', 0),
(231, '前端+php', 23, 'cctv', '山东省', '莱芜市', '钢城区', 'sssssssssss', '17k', '18k', '3-5年', '本科', 'b', 'ccvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvv', '2017-02-12', 0),
(232, '前端工程师', 23, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(233, 'java工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(234, 'ui设计师', 23, 'cctv', '山东省', '莱芜市', '钢城区', 'sssssssssss', '17k', '18k', '3-5年', '本科', 'b', 'ccvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvv', '2017-02-12', 0),
(235, '网络工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(236, 'app工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(237, '全栈', 23, 'cctv', '山东省', '莱芜市', '钢城区', 'sssssssssss', '17k', '18k', '3-5年', '本科', 'b', 'ccvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvv', '2017-02-12', 0),
(238, '设计+php工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(239, '设计+php+前端+java工程师', 22, '放飞科技', '广东省', '茂名市', '电白县', '在萨的力度的司法局司法所符文', '10k', '16k', '5-10年', '大专', '687123@qq.com', '钱钱钱钱三妻四妾岁', '少时诵诗书', '2017-01-15', 0),
(240, '巴拉拉左护', 24, '呱唧呱唧啾啾啾', '青海省', '果洛州', '玛多县', '代表太阳拥抱你', '18k', '48k', '应届生', '博士', '111345@qq.com', '会取暖', '天天浇太阳✿，保护太阳的后裔--可宜', '2017-02-24', 0),
(241, '污塔玛莎右护法', 24, '呱唧呱唧啾啾啾', '青海省', '海西州', '格尔木市', '代表太阳拥抱你', '13k', '48k', '应届生', '博士', '111345@qq.com', '会暖床', '天天施肥，保护太阳的后裔--布可', '2017-02-24', 0);

-- --------------------------------------------------------

--
-- 表的结构 `jobseeker`
--

CREATE TABLE IF NOT EXISTS `jobseeker` (
  `uid` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jobseeker`
--

INSERT INTO `jobseeker` (`uid`, `username`, `password`, `photo`, `create_time`) VALUES
('5', 'gg', 'c4ca4238a0b923820dcc509a6f75849b', '/resume(1)/aoshi-master./Public/upload/resume_5.png', '2017-01-07 10:01:30');

-- --------------------------------------------------------

--
-- 表的结构 `jobseekers`
--

CREATE TABLE IF NOT EXISTS `jobseekers` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 用户ID（序号）',
  `username` varchar(8) NOT NULL COMMENT '用户帐号',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  `create_time` datetime NOT NULL COMMENT ' 注册时间',
  `photo` varchar(200) DEFAULT NULL COMMENT ' 用户头像',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `username_2` (`username`),
  UNIQUE KEY `username_3` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- 转存表中的数据 `jobseekers`
--

INSERT INTO `jobseekers` (`uid`, `username`, `password`, `create_time`, `photo`) VALUES
(1, 'ggg', 'e10adc3949ba59abbe56e057f20f883e', '2017-01-12 02:01:03', '/aoshi-master./Public/upload/resume_1.png?1487079994'),
(103, '111111', '96e79218965eb72c92a549dd5a330112', '2017-01-15 12:01:38', NULL),
(104, 'vvvvv', 'e10adc3949ba59abbe56e057f20f883e', '2017-02-21 10:25:08', NULL),
(105, 'vvvvvv', 'e10adc3949ba59abbe56e057f20f883e', '2017-02-21 11:36:58', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jobseekers_describe`
--

CREATE TABLE IF NOT EXISTS `jobseekers_describe` (
  `describe_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `describe` varchar(500) NOT NULL COMMENT '自我描述',
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`describe_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `jobseekers_describe`
--

INSERT INTO `jobseekers_describe` (`describe_id`, `describe`, `uid`) VALUES
(4, 'd', 1);

-- --------------------------------------------------------

--
-- 表的结构 `myresume`
--

CREATE TABLE IF NOT EXISTS `myresume` (
  `resume_id` int(11) NOT NULL COMMENT '序号',
  `id` int(11) NOT NULL COMMENT '简历所有者',
  `resume_name` varchar(21) NOT NULL COMMENT '简历名称',
  `hobby` varchar(30) NOT NULL COMMENT '兴趣/爱好',
  `label` varchar(20) NOT NULL COMMENT '标签',
  `re_company_name` varchar(60) NOT NULL COMMENT '公司名称',
  `categories` varchar(21) NOT NULL COMMENT '行业类别',
  `job_title` varchar(12) NOT NULL COMMENT '职位名称',
  `working_time` date NOT NULL COMMENT '工作时间',
  `job_description` varchar(1000) NOT NULL COMMENT '工作描述',
  `degree` varchar(10) NOT NULL COMMENT '学历/学位',
  `graduated` date NOT NULL COMMENT '毕业时间',
  `school_name` varchar(20) NOT NULL COMMENT '学校名称',
  `major` varchar(10) NOT NULL COMMENT '专业名称',
  `job_type` varchar(10) NOT NULL COMMENT '期望工作性质',
  `expected_location` varchar(10) NOT NULL COMMENT ' 期望工作地点(市)',
  `expected_category` varchar(10) NOT NULL COMMENT '期望从事行业',
  `expected_position` varchar(12) NOT NULL COMMENT '期望从事职业',
  `expected_monthly_income` varchar(10) NOT NULL COMMENT '期望月薪（税前）',
  `current_status` varchar(10) NOT NULL COMMENT '工作状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `myresume`
--

INSERT INTO `myresume` (`resume_id`, `id`, `resume_name`, `hobby`, `label`, `re_company_name`, `categories`, `job_title`, `working_time`, `job_description`, `degree`, `graduated`, `school_name`, `major`, `job_type`, `expected_location`, `expected_category`, `expected_position`, `expected_monthly_income`, `current_status`) VALUES
(1, 1, 'gg', '听音乐,打排球', '勤奋,好学', '物理大有向公司', '贸易', '全栈工程师', '2016-12-15', 'good', '博士后', '2015-02-18', '五邑大学', '软件专业', 'full_time', '广州', 'java全栈工程', '全栈工程师', '1111111', '在职'),
(2, 1, 'dd', '跳水', '谦虚', '阿斯股份有限公司', '商业型', 'ui设计师', '2016-12-06', '工作内容1', '博士后', '2016-10-10', '五邑大学', '建筑设计工程学', 'full_day', '广州', '商业型2', 'ui设计师', '11111', '在职'),
(3, 2, 'dd', 'no', 'no', 'x', 'x', 'x', '2016-12-12', 'x', 'x', '2016-12-20', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x');

-- --------------------------------------------------------

--
-- 表的结构 `resumes_basic`
--

CREATE TABLE IF NOT EXISTS `resumes_basic` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `intro` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `birth` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `degree` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `working` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `residence` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `des` varchar(320) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `resumes_basic`
--

INSERT INTO `resumes_basic` (`rid`, `name`, `intro`, `sex`, `birth`, `degree`, `working`, `residence`, `mobile`, `email`, `des`, `status`, `uid`) VALUES
(1, 'g', '丘啥呢', '男', '90后', '博士', '1-3年', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `resumes_career`
--

CREATE TABLE IF NOT EXISTS `resumes_career` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `position` varchar(32) COLLATE utf8_bin NOT NULL,
  `type` varchar(32) COLLATE utf8_bin NOT NULL,
  `city` varchar(32) COLLATE utf8_bin NOT NULL,
  `wages` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `resumes_career`
--

INSERT INTO `resumes_career` (`cid`, `uid`, `position`, `type`, `city`, `wages`) VALUES
(5, 1, 'Web前端', '全职', '广州', '10k-15k'),
(7, 5, 'php全栈工程师', '全职', '杭州', '15k-20k');

-- --------------------------------------------------------

--
-- 表的结构 `resumes_eduexp`
--

CREATE TABLE IF NOT EXISTS `resumes_eduexp` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `school` varchar(32) COLLATE utf8_bin NOT NULL,
  `degree` varchar(32) COLLATE utf8_bin NOT NULL,
  `major` varchar(32) COLLATE utf8_bin NOT NULL,
  `grad` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `resumes_eduexp`
--

INSERT INTO `resumes_eduexp` (`eid`, `uid`, `school`, `degree`, `major`, `grad`) VALUES
(11, 1, 'qqQQ', '大专', 'qq55', '2017'),
(12, 1, '啊啊', '大专', 'qq', '2017'),
(13, 5, '五一一工程大学', '博士', '软件技术', '2003'),
(14, 5, '五一一希望高中', '其他', '理科', '2000');

-- --------------------------------------------------------

--
-- 表的结构 `resumes_jobexp`
--

CREATE TABLE IF NOT EXISTS `resumes_jobexp` (
  `jid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `company` varchar(32) COLLATE utf8_bin NOT NULL,
  `position` varchar(32) COLLATE utf8_bin NOT NULL,
  `working` varchar(32) COLLATE utf8_bin NOT NULL,
  `content` varchar(320) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `resumes_jobexp`
--

INSERT INTO `resumes_jobexp` (`jid`, `uid`, `company`, `position`, `working`, `content`) VALUES
(1, 1, '1', '1s', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `resume_basic`
--

CREATE TABLE IF NOT EXISTS `resume_basic` (
  `basic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 序号',
  `uid` int(11) NOT NULL COMMENT '简历所有者',
  `nickname` varchar(40) DEFAULT '你的名字' COMMENT '用户姓名',
  `sex` varchar(2) DEFAULT '男' COMMENT '用户性别',
  `peculiarity` varchar(30) DEFAULT NULL COMMENT '自我推荐的一句话',
  `birth` varchar(6) DEFAULT '90后' COMMENT '出生年月',
  `top_edu` varchar(4) DEFAULT '大专' COMMENT '最高学历',
  `work_years` varchar(10) DEFAULT '1-3年' COMMENT '工作年限',
  `current_city` varchar(10) DEFAULT '广州' COMMENT '所在城市',
  `address` varchar(100) DEFAULT NULL COMMENT '详细住址',
  `phone` varchar(22) DEFAULT NULL COMMENT '联系号码',
  `e_mail` varchar(30) DEFAULT NULL COMMENT '用户邮箱',
  `current_status` varchar(20) DEFAULT NULL COMMENT '工作状态',
  PRIMARY KEY (`basic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `resume_basic`
--

INSERT INTO `resume_basic` (`basic_id`, `uid`, `nickname`, `sex`, `peculiarity`, `birth`, `top_edu`, `work_years`, `current_city`, `address`, `phone`, `e_mail`, `current_status`) VALUES
(24, 105, 'ss', '男', '请用一句话介绍自己', '90后', '大专', '1-3年', '广州', NULL, '13333333333', '111@11.com', '我暂时不想找工作'),
(25, 1, 'ddf', '男', '请用一句话介绍自己', '90后', '大专', '1-3年', '广州', NULL, '13333333333', '2334@qq.com', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `resume_delivery`
--

CREATE TABLE IF NOT EXISTS `resume_delivery` (
  `jobseeker_id` int(11) NOT NULL COMMENT '求职者ID',
  `job_id` int(11) NOT NULL COMMENT '职位序号',
  `delivery_time` varchar(21) NOT NULL COMMENT '投递时间',
  `delivery_status` tinytext COMMENT '投递状态',
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='投递中转站' AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `resume_delivery`
--

INSERT INTO `resume_delivery` (`jobseeker_id`, `job_id`, `delivery_time`, `delivery_status`, `id`) VALUES
(1, 228, '2017-02-07 23:49:31', '2', 2),
(1, 228, '2017-01-16  23:49:31', '1', 3),
(1, 228, '2016-01-16  23:49:31', '4', 4),
(1, 229, '2016-01-16  23:49:31', '4', 5),
(18, 230, '2017-02-19  16:18:50', '0', 7),
(18, 229, '2017-02-19  16:18:59', '1', 8),
(18, 234, '2017-02-15  16:18:50', '3', 16),
(18, 235, '2017-02-19  16:18:50', '4', 19),
(18, 237, '2017-02-14  16:18:50', '2', 20),
(18, 231, '2017-02-19  16:18:50', '2', 23),
(18, 232, '2017-02-19  16:18:50', '2', 24),
(18, 233, '2017-02-19  16:18:50', '4', 25),
(18, 236, '2017-02-19  16:18:59', '3', 26),
(105, 240, '2017-02-20  16:18:59', '3', 27),
(18, 241, '2017-02-24  16:52:03', '0', 30);

-- --------------------------------------------------------

--
-- 表的结构 `resume_education`
--

CREATE TABLE IF NOT EXISTS `resume_education` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL COMMENT '简历所有者',
  `degree` varchar(10) DEFAULT '大专' COMMENT '学历/学位',
  `graduated` varchar(7) DEFAULT '2017-09' COMMENT '毕业时间',
  `school_name` varchar(20) DEFAULT NULL COMMENT '学校名称',
  `major` varchar(10) DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='简历_教育经历' AUTO_INCREMENT=52 ;

--
-- 转存表中的数据 `resume_education`
--

INSERT INTO `resume_education` (`education_id`, `uid`, `degree`, `graduated`, `school_name`, `major`) VALUES
(51, 1, '大专', '2017-09', 's', '');

-- --------------------------------------------------------

--
-- 表的结构 `resume_experience`
--

CREATE TABLE IF NOT EXISTS `resume_experience` (
  `experience_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL COMMENT '所属者',
  `re_company_name` varchar(60) NOT NULL COMMENT '公司名称',
  `job_description` varchar(320) DEFAULT NULL COMMENT '行业类别',
  `job_title` varchar(12) DEFAULT NULL COMMENT '职位名称',
  `working_time` varchar(21) DEFAULT NULL COMMENT '工作时间',
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='简历_最近工作/实习经历' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `resume_experience`
--

INSERT INTO `resume_experience` (`experience_id`, `uid`, `re_company_name`, `job_description`, `job_title`, `working_time`) VALUES
(1, 1, 'ss上市公司', '的', '前端', '2011-2-2');

-- --------------------------------------------------------

--
-- 表的结构 `resume_prefered`
--

CREATE TABLE IF NOT EXISTS `resume_prefered` (
  `prefered_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `uid` int(11) NOT NULL COMMENT '简历所有者',
  `job_type` varchar(10) DEFAULT '全职' COMMENT '期望工作性质',
  `expected_location` varchar(10) DEFAULT '无限' COMMENT '期望工作地点(市)',
  `expected_position` varchar(20) DEFAULT NULL COMMENT '期望从事职业',
  `expected_monthly_income` varchar(10) DEFAULT '无限' COMMENT '期望月薪（税前）',
  PRIMARY KEY (`prefered_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='简历_求职意向' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `resume_prefered`
--

INSERT INTO `resume_prefered` (`prefered_id`, `uid`, `job_type`, `expected_location`, `expected_position`, `expected_monthly_income`) VALUES
(4, 1, '全职', '无限', 'd', '无限');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
