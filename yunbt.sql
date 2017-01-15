-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-01-15 09:23:51
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yunbt`
--

-- --------------------------------------------------------

--
-- 表的结构 `tr_admin`
--

CREATE TABLE IF NOT EXISTS `tr_admin` (
  `admin` int(11) NOT NULL AUTO_INCREMENT,
  `pass` varchar(128) NOT NULL,
  `salt` int(11) NOT NULL,
  `login_info` longtext NOT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tr_admin`
--

INSERT INTO `tr_admin` (`admin`, `pass`, `salt`, `login_info`) VALUES
(1, 'cb23070251b9697c6a5b700754cd9bf6', 932471, '');

-- --------------------------------------------------------

--
-- 表的结构 `tr_aria2`
--

CREATE TABLE IF NOT EXISTS `tr_aria2` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(64) NOT NULL,
  `status` varchar(32) NOT NULL,
  `stime` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_code`
--

CREATE TABLE IF NOT EXISTS `tr_code` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `use_time` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_ondo`
--

CREATE TABLE IF NOT EXISTS `tr_ondo` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(64) NOT NULL,
  `uid` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `uri` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `status` varchar(16) NOT NULL,
  `dir` varchar(200) NOT NULL,
  `complete` bigint(11) NOT NULL,
  `total` bigint(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `uid_json` longtext NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_question`
--

CREATE TABLE IF NOT EXISTS `tr_question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `text` longtext CHARACTER SET utf8 NOT NULL,
  `replay` int(11) NOT NULL,
  `replay_time` int(11) NOT NULL,
  `talkcount` int(11) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_share`
--

CREATE TABLE IF NOT EXISTS `tr_share` (
  `shid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `scode` varchar(128) NOT NULL COMMENT '用于分享的代码 MD5 or sha1',
  PRIMARY KEY (`shid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_site`
--

CREATE TABLE IF NOT EXISTS `tr_site` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `gg` text CHARACTER SET utf8 NOT NULL COMMENT '公告',
  `fw` text CHARACTER SET utf8 NOT NULL COMMENT '服务条款',
  `gg_history` longtext CHARACTER SET utf8 NOT NULL COMMENT '公告历史',
  `fw_history` longtext CHARACTER SET utf8 NOT NULL COMMENT '服务条款历史',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tr_site`
--

INSERT INTO `tr_site` (`sid`, `gg`, `fw`, `gg_history`, `fw_history`) VALUES
(1, '<p><img src="http://inory.net/images/2017/01/10/20150305121508_hRj3K.gif" alt="20150305121508_hRj3K.gif" border="0"></p>	\r\n<p>测试版</p>\r\n<p><b>1</b>.离线下载支持BT种子，Magnet链接以特征码等下载</p>\r\n<p><b>2</b>.可以支持的在线查看的文件:<br> 视频：mp4，webm，ogg；<br> 音频：mp3；<br> 图片：jpg，png，gif；<br> 文件：pdf text html；</p>	\r\n<p><b>3</b>.本站已经开启邀请码，如果需要注册请发送邮件给站长，邮箱 按F12可查看。</p>\r\n<br>\r\n<p>\r\n任务刷新时间是1分钟，下载提交后，大概1分钟后刷新状态，请不要焦急。每个任务持续时间为6小时持续时间！\r\n</p>\r\n<p>\r\n目前可以直接与站长在站内沟通，交流问题，请点击右下角的<span class="glyphicon glyphicon-pencil"></span>\r\n</p>', '<p>1.必须遵守中华人民共和国相关法律法规的规定。</p>\r\n      	<p>2.不得用于任何非法盈利为目的事物。</p>\r\n      	<p>3.未经版权人同意禁止下载该版权人下的文件信息。</p>\r\n      	<p>4.不得违反美利坚合众国的相关法律法规。</p>\r\n      	<p>5.若有违反以上4条，将会对帐号封禁</p>\r\n      	<p>6.最终解释权归本站。</p>\r\n	<p>7.233</p>\r\n<p>8.测试中可能发生任何问题</p>', '[{"info":"ddddddddddddddd","time":1483937071},{"info":"eeeeeeeeeee","time":1483937083},{"info":"dddddddddddddddddddddddddddddddddddddd","time":1483937623},{"info":"\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002","time":1483938349},{"info":"\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002\\r\\n\\u91c7\\u7528\\u4eba\\u5de5\\u6838\\u5b9e,\\u9010\\u6b65\\u5bf9\\u865a\\u5047\\u90ae\\u7bb1\\u7528\\u6237\\u5220\\u9664\\u3002","time":1483966953},{"info":"<p>\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p>\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6\\u6709\\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b\\u97f3\\u9891\\uff1amp3\\uff1b\\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b\\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p>\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>","time":1484025573},{"info":"<p>\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p>\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6<br>\\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br>\\u97f3\\u9891\\uff1amp3\\uff1b<br>\\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br>\\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p>\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>","time":1484025634},{"info":"<p>1.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p>2.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br>\\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br>\\u97f3\\u9891\\uff1amp3\\uff1b<br>\\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br>\\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p>3.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>","time":1484025669},{"info":"<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br>\\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br>\\u97f3\\u9891\\uff1amp3\\uff1b<br>\\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br>\\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>","time":1484025735},{"info":"<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>","time":1484025771},{"info":"<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\r\\n<\\/p>","time":1484030622},{"info":"<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>","time":1484031438},{"info":"<p><\\/p>\\r\\n<p>\\u6d4b\\u8bd5\\u4e2d\\u53ef\\u80fd\\u53d1\\u751f\\u4efb\\u4f55\\u95ee\\u9898\\uff01<\\/p>\\t\\r\\n<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>","time":1484044059},{"info":"<p><a href=\\"http:\\/\\/inory.net\\/image\\/50ue\\"><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20150305121508_hRj3K.th.gif\\" alt=\\"20150305121508_hRj3K.th.gif\\" border=\\"0\\"><\\/a> <a href=\\"http:\\/\\/inory.net\\/image\\/5JV1\\"><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20130111200606_LxCTi.th.gif\\" alt=\\"20130111200606_LxCTi.th.gif\\" border=\\"0\\"><\\/a> <a href=\\"http:\\/\\/inory.net\\/image\\/5Bcb\\"><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/Coz47dUUsAAs55B.th.gif\\" alt=\\"Coz47dUUsAAs55B.th.gif\\" border=\\"0\\"><\\/a> <a href=\\"http:\\/\\/inory.net\\/image\\/5G1z\\"><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/Coz5LeEUsAA9uT8.th.gif\\" alt=\\"Coz5LeEUsAA9uT8.th.gif\\" border=\\"0\\"><\\/a><\\/p>\\r\\n<p>\\u6d4b\\u8bd5\\u4e2d\\u53ef\\u80fd\\u53d1\\u751f\\u4efb\\u4f55\\u95ee\\u9898\\uff01<\\/p>\\t\\r\\n<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>","time":1484044187},{"info":"<p><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20150305121508_hRj3K.gif\\" alt=\\"20150305121508_hRj3K.gif\\" border=\\"0\\">\\r\\n<img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20130111200606_LxCTi.gif\\" alt=\\"20130111200606_LxCTi.gif\\" border=\\"0\\">\\r\\n<img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/Coz47dUUsAAs55B.gif\\" alt=\\"Coz47dUUsAAs55B.gif\\" border=\\"0\\">\\r\\n<img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/Coz5LeEUsAA9uT8.gif\\" alt=\\"Coz5LeEUsAA9uT8.gif\\" border=\\"0\\"><\\/p>\\t\\r\\n<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>","time":1484044223},{"info":"<p><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20150305121508_hRj3K.gif\\" alt=\\"20150305121508_hRj3K.gif\\" border=\\"0\\"><\\/p>\\t\\r\\n<p>\\u6d4b\\u8bd5\\u7248<\\/p>\\r\\n<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>","time":1484044283},{"info":"<p><img src=\\"http:\\/\\/inory.net\\/images\\/2017\\/01\\/10\\/20150305121508_hRj3K.gif\\" alt=\\"20150305121508_hRj3K.gif\\" border=\\"0\\"><\\/p>\\t\\r\\n<p>\\u6d4b\\u8bd5\\u7248<\\/p>\\r\\n<p><b>1<\\/b>.\\u79bb\\u7ebf\\u4e0b\\u8f7d\\u652f\\u6301BT\\u79cd\\u5b50\\uff0cMagnet\\u94fe\\u63a5\\u4ee5\\u7279\\u5f81\\u7801\\u7b49\\u4e0b\\u8f7d<\\/p>\\r\\n<p><b>2<\\/b>.\\u53ef\\u4ee5\\u652f\\u6301\\u7684\\u5728\\u7ebf\\u67e5\\u770b\\u7684\\u6587\\u4ef6:<br> \\u89c6\\u9891\\uff1amp4\\uff0cwebm\\uff0cogg\\uff1b<br> \\u97f3\\u9891\\uff1amp3\\uff1b<br> \\u56fe\\u7247\\uff1ajpg\\uff0cpng\\uff0cgif\\uff1b<br> \\u6587\\u4ef6\\uff1apdf text html\\uff1b<\\/p>\\t\\r\\n<p><b>3<\\/b>.\\u672c\\u7ad9\\u5df2\\u7ecf\\u5f00\\u542f\\u9080\\u8bf7\\u7801\\uff0c\\u5982\\u679c\\u9700\\u8981\\u6ce8\\u518c\\u8bf7\\u53d1\\u9001\\u90ae\\u4ef6\\u7ed9\\u7ad9\\u957f\\uff0c\\u90ae\\u7bb1 \\u6309F12\\u53ef\\u67e5\\u770b\\u3002<\\/p>\\r\\n<br>\\r\\n<p>\\r\\n\\u4efb\\u52a1\\u5237\\u65b0\\u65f6\\u95f4\\u662f1\\u5206\\u949f\\uff0c\\u4e0b\\u8f7d\\u63d0\\u4ea4\\u540e\\uff0c\\u5927\\u69821\\u5206\\u949f\\u540e\\u5237\\u65b0\\u72b6\\u6001\\uff0c\\u8bf7\\u4e0d\\u8981\\u7126\\u6025\\u3002\\u6bcf\\u4e2a\\u4efb\\u52a1\\u6301\\u7eed\\u65f6\\u95f4\\u4e3a6\\u5c0f\\u65f6\\u6301\\u7eed\\u65f6\\u95f4\\uff01\\r\\n<\\/p>\\r\\n<p>\\r\\n\\u76ee\\u524d\\u53ef\\u4ee5\\u76f4\\u63a5\\u4e0e\\u7ad9\\u957f\\u5728\\u7ad9\\u5185\\u6c9f\\u901a\\uff0c\\u4ea4\\u6d41\\u95ee\\u9898\\uff0c\\u8bf7\\u70b9\\u51fb\\u53f3\\u4e0b\\u89d2\\u7684<span class=\\"glyphicon glyphicon-pencil\\"><\\/span>\\r\\n<\\/p>","time":1484066873}]', '[{"info":"ccccccccccccccccc","time":1483937077},{"info":"fffffffffffff","time":1483937088},{"info":"wwwwwwwwwwwwwwwwwwwww","time":1483937632},{"info":"<p>1.\\u5fc5\\u987b\\u9075\\u5b88\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u7684\\u89c4\\u5b9a\\u3002<\\/p>\\r\\n      \\t<p>2.\\u4e0d\\u5f97\\u7528\\u4e8e\\u4efb\\u4f55\\u975e\\u6cd5\\u76c8\\u5229\\u4e3a\\u76ee\\u7684\\u4e8b\\u7269\\u3002<\\/p>\\r\\n      \\t<p>3.\\u672a\\u7ecf\\u7248\\u6743\\u4eba\\u540c\\u610f\\u7981\\u6b62\\u4e0b\\u8f7d\\u8be5\\u7248\\u6743\\u4eba\\u4e0b\\u7684\\u6587\\u4ef6\\u4fe1\\u606f\\u3002<\\/p>\\r\\n      \\t<p>4.\\u4e0d\\u5f97\\u8fdd\\u53cd\\u7f8e\\u5229\\u575a\\u5408\\u4f17\\u56fd\\u7684\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u3002<\\/p>\\r\\n      \\t<p>5.\\u82e5\\u6709\\u8fdd\\u53cd\\u4ee5\\u4e0a4\\u6761\\uff0c\\u5c06\\u4f1a\\u5bf9\\u5e10\\u53f7\\u5c01\\u7981<\\/p>\\r\\n      \\t<p>6.\\u6700\\u7ec8\\u89e3\\u91ca\\u6743\\u5f52\\u672c\\u7ad9\\u3002<\\/p>\\r\\n      \\t<p>7.233<\\/p>","time":1483938492},{"info":"<p>1.\\u5fc5\\u987b\\u9075\\u5b88\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u7684\\u89c4\\u5b9a\\u3002<\\/p>\\r\\n      \\t<p>2.\\u4e0d\\u5f97\\u7528\\u4e8e\\u4efb\\u4f55\\u975e\\u6cd5\\u76c8\\u5229\\u4e3a\\u76ee\\u7684\\u4e8b\\u7269\\u3002<\\/p>\\r\\n      \\t<p>3.\\u672a\\u7ecf\\u7248\\u6743\\u4eba\\u540c\\u610f\\u7981\\u6b62\\u4e0b\\u8f7d\\u8be5\\u7248\\u6743\\u4eba\\u4e0b\\u7684\\u6587\\u4ef6\\u4fe1\\u606f\\u3002<\\/p>\\r\\n      \\t<p>4.\\u4e0d\\u5f97\\u8fdd\\u53cd\\u7f8e\\u5229\\u575a\\u5408\\u4f17\\u56fd\\u7684\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u3002<\\/p>\\r\\n      \\t<p>5.\\u82e5\\u6709\\u8fdd\\u53cd\\u4ee5\\u4e0a4\\u6761\\uff0c\\u5c06\\u4f1a\\u5bf9\\u5e10\\u53f7\\u5c01\\u7981<\\/p>\\r\\n      \\t<p>6.\\u6700\\u7ec8\\u89e3\\u91ca\\u6743\\u5f52\\u672c\\u7ad9\\u3002<\\/p>\\r\\n\\t<p>7.233<\\/p>\\r\\n<p>8.\\u4eba\\u5de5\\u5ba1\\u6838\\u8d26\\u6237\\u90ae\\u7bb1\\uff0c\\u82e5\\u975e\\u771f\\u5b9e\\u90ae\\u7bb1[\\u5305\\u62ec\\u4e34\\u65f6\\u90ae\\u7bb1]\\u4e00\\u5f8b\\u5220\\u9664<\\/p>","time":1484037997},{"info":"<p>1.\\u5fc5\\u987b\\u9075\\u5b88\\u4e2d\\u534e\\u4eba\\u6c11\\u5171\\u548c\\u56fd\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u7684\\u89c4\\u5b9a\\u3002<\\/p>\\r\\n      \\t<p>2.\\u4e0d\\u5f97\\u7528\\u4e8e\\u4efb\\u4f55\\u975e\\u6cd5\\u76c8\\u5229\\u4e3a\\u76ee\\u7684\\u4e8b\\u7269\\u3002<\\/p>\\r\\n      \\t<p>3.\\u672a\\u7ecf\\u7248\\u6743\\u4eba\\u540c\\u610f\\u7981\\u6b62\\u4e0b\\u8f7d\\u8be5\\u7248\\u6743\\u4eba\\u4e0b\\u7684\\u6587\\u4ef6\\u4fe1\\u606f\\u3002<\\/p>\\r\\n      \\t<p>4.\\u4e0d\\u5f97\\u8fdd\\u53cd\\u7f8e\\u5229\\u575a\\u5408\\u4f17\\u56fd\\u7684\\u76f8\\u5173\\u6cd5\\u5f8b\\u6cd5\\u89c4\\u3002<\\/p>\\r\\n      \\t<p>5.\\u82e5\\u6709\\u8fdd\\u53cd\\u4ee5\\u4e0a4\\u6761\\uff0c\\u5c06\\u4f1a\\u5bf9\\u5e10\\u53f7\\u5c01\\u7981<\\/p>\\r\\n      \\t<p>6.\\u6700\\u7ec8\\u89e3\\u91ca\\u6743\\u5f52\\u672c\\u7ad9\\u3002<\\/p>\\r\\n\\t<p>7.233<\\/p>\\r\\n<p>8.\\u6d4b\\u8bd5\\u4e2d\\u53ef\\u80fd\\u53d1\\u751f\\u4efb\\u4f55\\u95ee\\u9898<\\/p>","time":1484044009}]');

-- --------------------------------------------------------

--
-- 表的结构 `tr_talk`
--

CREATE TABLE IF NOT EXISTS `tr_talk` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) NOT NULL,
  `com_100` longtext CHARACTER SET utf8 NOT NULL,
  `com` longtext CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tr_user`
--

CREATE TABLE IF NOT EXISTS `tr_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `email` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL,
  `salt` int(11) NOT NULL,
  `cookie` varchar(128) NOT NULL,
  `join_ip` varchar(128) NOT NULL,
  `join_time` int(11) NOT NULL,
  `login_info` longtext NOT NULL,
  `num` int(11) NOT NULL DEFAULT '15' COMMENT '总任务容量',
  `now_num` int(11) NOT NULL,
  `size` bigint(20) NOT NULL DEFAULT '20000000000' COMMENT '总容量',
  `now_size` bigint(11) NOT NULL,
  `oid_json` text NOT NULL COMMENT 'oid内全部任务',
  `active` int(11) NOT NULL COMMENT '当前任务',
  `max_active` int(11) NOT NULL DEFAULT '3' COMMENT '当前最大在线数量',
  `lv` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- 转存表中的数据 `tr_user`
--

INSERT INTO `tr_user` (`uid`, `name`, `email`, `pass`, `salt`, `cookie`, `join_ip`, `join_time`, `login_info`, `num`, `now_num`, `size`, `now_size`, `oid_json`, `active`, `max_active`, `lv`) VALUES
(1, 'admin', 'maysrp@gmail.com', 'cb23070251b9697c6a5b700754cd9bf6', 932471, 'fc91947ac68f04b9b339b4a3bcad002d', '127.0.0.1', 1483647054, '', 10000, 0, 20000000000, 0, '', 0, 1000, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
