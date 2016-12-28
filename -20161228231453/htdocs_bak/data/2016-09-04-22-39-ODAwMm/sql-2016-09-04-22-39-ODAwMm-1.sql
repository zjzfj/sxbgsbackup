DROP TABLE IF EXISTS `cmseasy_a_attachment`;
CREATE TABLE `cmseasy_a_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `path` varchar(150) NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `intro` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_a_comment`;
CREATE TABLE `cmseasy_a_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `content` text NOT NULL,
  `telphone` varchar(50) DEFAULT '',
  `zannum` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_a_rank`;
CREATE TABLE `cmseasy_a_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `ranks` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_a_vote`;
CREATE TABLE `cmseasy_a_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `titles` text,
  `votes` text,
  `users` text,
  `images` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_activity`;
CREATE TABLE `cmseasy_activity` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `timestamp` int(255) DEFAULT NULL,
  `operatorid` varchar(255) NOT NULL DEFAULT '',
  `departmentid` int(10) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_announcement`;
CREATE TABLE `cmseasy_announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `adddate` datetime DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_archive`;
CREATE TABLE `cmseasy_archive` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(6) NOT NULL,
  `typeid` int(6) NOT NULL,
  `title` varchar(60) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `color` char(20) DEFAULT NULL,
  `strong` tinyint(1) DEFAULT '0',
  `toppost` tinyint(1) DEFAULT '0',
  `font` char(6) DEFAULT NULL,
  `spid` int(11) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mtitle` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` text,
  `listorder` int(11) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `state` tinyint(2) DEFAULT '1',
  `checked` tinyint(2) DEFAULT '0',
  `introduce` text,
  `introduce_len` int(5) NOT NULL,
  `content` mediumtext,
  `template` varchar(50) DEFAULT NULL,
  `templatewap` varchar(50) DEFAULT NULL,
  `showform` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `linkto` varchar(100) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `comment_num` int(11) DEFAULT '0',
  `attachment_id` varchar(50) DEFAULT NULL,
  `attachment_path` varchar(150) DEFAULT NULL,
  `grade` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pics` text,
  `type` char(10) NOT NULL,
  `province_id` int(3) NOT NULL,
  `city_id` int(3) DEFAULT NULL,
  `section_id` int(3) DEFAULT NULL,
  `outtime` date NOT NULL,
  `my_size` varchar(100) DEFAULT NULL,
  `my_zhaopinbumen` varchar(100) DEFAULT NULL,
  `my_jobtype` varchar(10) DEFAULT NULL,
  `my_jobtitle` varchar(100) DEFAULT NULL,
  `my_jobnumber` varchar(100) DEFAULT NULL,
  `my_jobgender` varchar(10) DEFAULT NULL,
  `my_jobwork` text,
  `my_jobacademic` varchar(10) DEFAULT NULL,
  `my_jobage` varchar(100) DEFAULT NULL,
  `my_jobworkareas` varchar(100) DEFAULT NULL,
  `my_jobrequirements` text,
  `my_contactname` varchar(100) DEFAULT NULL,
  `isecoding` tinyint(1) unsigned DEFAULT '0',
  `ecoding` varchar(255) DEFAULT NULL,
  `my_tonghangbijiao` varchar(100) DEFAULT NULL,
  `my_donggongjindu` varchar(100) DEFAULT NULL,
  `my_zhiwei` varchar(100) DEFAULT NULL,
  `iscomment` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `aid` (`aid`) USING BTREE,
  KEY `keyword` (`keyword`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `catid` (`typeid`) USING BTREE,
  KEY `typeid` (`catid`) USING BTREE,
  KEY `tag` (`tag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_assigns`;
CREATE TABLE `cmseasy_assigns` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `departmentid` int(255) NOT NULL DEFAULT '0',
  `operatorid` int(255) NOT NULL DEFAULT '0',
  `poll` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_b_arctag`;
CREATE TABLE `cmseasy_b_arctag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT '0',
  `tagid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `arctag` (`aid`,`tagid`) USING BTREE,
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=1343 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_b_area`;
CREATE TABLE `cmseasy_b_area` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `parentid` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `parentid` (`parentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3373 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_b_category`;
CREATE TABLE `cmseasy_b_category` (
  `catid` int(6) NOT NULL AUTO_INCREMENT,
  `parentid` int(6) NOT NULL,
  `catname` varchar(30) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `scategory` varchar(50) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `description` text,
  `categorycontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) DEFAULT NULL,
  `listtemplate` varchar(50) DEFAULT NULL,
  `showtemplate` varchar(50) DEFAULT NULL,
  `showform` varchar(50) DEFAULT NULL,
  `templatewap` varchar(50) DEFAULT NULL,
  `listtemplatewap` varchar(50) DEFAULT NULL,
  `showtemplatewap` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `listhtmlrule` varchar(100) DEFAULT NULL,
  `showhtmlrule` varchar(100) DEFAULT NULL,
  `module` varchar(16) NOT NULL DEFAULT 'article',
  `isshow` tinyint(2) DEFAULT '1',
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `ispages` tinyint(2) DEFAULT NULL,
  `includecatarchives` tinyint(2) DEFAULT '0',
  `addarcenable` tinyint(2) DEFAULT NULL,
  `linkto` varchar(150) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `thumb_width` int(3) DEFAULT NULL,
  `thumb_height` int(3) DEFAULT NULL,
  `isnav` tinyint(1) DEFAULT NULL,
  `ismobilenav` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isecoding` tinyint(1) unsigned DEFAULT '0',
  `ecoding` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`catid`),
  UNIQUE KEY `category` (`catid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_b_special`;
CREATE TABLE `cmseasy_b_special` (
  `spid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `banner` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `template` varchar(30) NOT NULL,
  `adddate` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` int(6) DEFAULT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_b_tag`;
CREATE TABLE `cmseasy_b_tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tagid` (`tagid`) USING BTREE,
  UNIQUE KEY `tagname` (`tagname`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_ballot`;
CREATE TABLE `cmseasy_ballot` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` set('radio','checkbox') NOT NULL DEFAULT 'radio',
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_archive`;
CREATE TABLE `cmseasy_bbs_archive` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `lid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `replynum` smallint(6) NOT NULL DEFAULT '0',
  `replyid` int(11) NOT NULL DEFAULT '0',
  `click` int(11) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  `isstop` tinyint(1) NOT NULL DEFAULT '0',
  `recommend` tinyint(1) NOT NULL DEFAULT '0',
  `purview` tinyint(1) NOT NULL DEFAULT '0',
  `noreply` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_category`;
CREATE TABLE `cmseasy_bbs_category` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `listorder` int(4) NOT NULL,
  `typename` varchar(200) NOT NULL,
  `content` varchar(255) NOT NULL DEFAULT '这里是专题简介',
  `keyword` varchar(255) NOT NULL DEFAULT '这里是专题关键字',
  `purview` tinyint(1) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_label`;
CREATE TABLE `cmseasy_bbs_label` (
  `lid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `labelname` varchar(80) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_bbs_reply`;
CREATE TABLE `cmseasy_bbs_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '帖子id',
  `tid` smallint(3) NOT NULL COMMENT '回复的子回复，与id对应，当为第一条时，其值为0',
  `username` varchar(30) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `updatetime` int(11) NOT NULL DEFAULT '0',
  `istop` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_chat`;
CREATE TABLE `cmseasy_chat` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `sessionid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `departmentid` int(10) DEFAULT NULL,
  `operatorid` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `admin_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_departments`;
CREATE TABLE `cmseasy_departments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `visible` int(1) NOT NULL DEFAULT '1',
  `order` int(255) NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_detail`;
CREATE TABLE `cmseasy_detail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `chatid` int(255) NOT NULL DEFAULT '0',
  `detail` text NOT NULL,
  `who_witter` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_event`;
CREATE TABLE `cmseasy_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `event` varchar(30) DEFAULT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `user` (`uid`,`username`,`ip`) USING BTREE,
  KEY `time` (`addtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2983 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_friendlink`;
CREATE TABLE `cmseasy_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linktype` tinyint(2) DEFAULT NULL,
  `typeid` tinyint(2) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `listorder` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `introduce` text,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `state` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_guestbook`;
CREATE TABLE `cmseasy_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `state` tinyint(2) DEFAULT '1',
  `guesttel` varchar(50) NOT NULL,
  `guestemail` varchar(50) NOT NULL,
  `guestqq` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `reply` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_invite`;
CREATE TABLE `cmseasy_invite` (
  `inviteid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `invitecode` varchar(255) DEFAULT NULL,
  `ctuid` int(11) unsigned DEFAULT NULL,
  `ctname` varchar(255) DEFAULT NULL,
  `reguid` int(11) DEFAULT NULL,
  `cttime` datetime DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `isuse` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`inviteid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_linkword`;
CREATE TABLE `cmseasy_linkword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkword` varchar(255) NOT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkorder` int(11) DEFAULT NULL,
  `linktimes` int(3) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `word` (`linkword`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_my_yingpin`;
CREATE TABLE `cmseasy_my_yingpin` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime DEFAULT NULL,
  `view` int(11) DEFAULT '0',
  `state` tinyint(2) DEFAULT '1',
  `checked` tinyint(2) DEFAULT '0',
  `ip` varchar(20) DEFAULT NULL,
  `my_xingming` varchar(100) DEFAULT NULL,
  `my_xingbie` varchar(10) DEFAULT NULL,
  `my_nianliang` varchar(100) DEFAULT NULL,
  `my_minzu` varchar(100) DEFAULT NULL,
  `my_shengao` varchar(100) DEFAULT NULL,
  `my_shenfenzheng` varchar(100) DEFAULT NULL,
  `my_jiguan` varchar(100) DEFAULT NULL,
  `my_xueli` varchar(10) DEFAULT NULL,
  `my_zanzhudizhi` varchar(100) DEFAULT NULL,
  `my_zhuanye` varchar(100) DEFAULT NULL,
  `my_biyeshijian` datetime DEFAULT NULL,
  `my_biyeyuanxiao` varchar(100) DEFAULT NULL,
  `my_waiyujibie` varchar(10) DEFAULT NULL,
  `my_jisuanji` varchar(10) DEFAULT NULL,
  `my_zhuanyetechang` varchar(100) DEFAULT NULL,
  `my_zhicheng` varchar(100) DEFAULT NULL,
  `my_daiyu` text,
  `my_lianxidianhua` varchar(100) DEFAULT NULL,
  `my_shouji` varchar(100) DEFAULT NULL,
  `my_email` varchar(100) DEFAULT NULL,
  `my_xuexijingli` text,
  `my_gongzuojingli` text,
  `my_gerenjianli` text,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_operators`;
CREATE TABLE `cmseasy_operators` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `departmentid` int(10) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '0',
  `timestamp` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_option`;
CREATE TABLE `cmseasy_option` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL DEFAULT '0',
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bid` (`bid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_p_ologin`;
CREATE TABLE `cmseasy_p_ologin` (
  `ologin_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `ologin_code` varchar(20) NOT NULL DEFAULT '',
  `ologin_name` varchar(120) NOT NULL DEFAULT '',
  `ologin_desc` text NOT NULL,
  `ologin_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ologin_id`),
  UNIQUE KEY `ologin_code` (`ologin_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_p_orders`;
CREATE TABLE `cmseasy_p_orders` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `oid` varchar(100) NOT NULL,
  `aid` varchar(50) NOT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  `mid` int(10) NOT NULL DEFAULT '0',
  `adddate` int(10) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `telphone` varchar(50) NOT NULL,
  `pnums` varchar(50) NOT NULL DEFAULT '0',
  `pname` char(80) NOT NULL,
  `address` varchar(200) NOT NULL,
  `postcode` char(20) NOT NULL,
  `content` text NOT NULL,
  `courier_number` varchar(100) NOT NULL,
  `s_status` tinyint(1) NOT NULL DEFAULT '0',
  `trade_no` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`mid`),
  KEY `adddate` (`adddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_p_pay`;
CREATE TABLE `cmseasy_p_pay` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_p_shipping`;
CREATE TABLE `cmseasy_p_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `overweight` int(10) NOT NULL,
  `cashondelivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` tinyint(1) NOT NULL DEFAULT '0',
  `insureproportion` smallint(6) NOT NULL DEFAULT '0',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_pay_exchange`;
CREATE TABLE `cmseasy_pay_exchange` (
  `exchangeid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `type` enum('money','point','time','credit') NOT NULL DEFAULT 'money',
  `value` float NOT NULL DEFAULT '0',
  `unit` enum('','y','m','d') NOT NULL DEFAULT '',
  `note` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `authid` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`exchangeid`),
  KEY `username` (`username`,`type`),
  KEY `authid` (`authid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_sessionox`;
CREATE TABLE `cmseasy_sessionox` (
  `PHPSESSID` varchar(50) NOT NULL,
  `update_time` int(10) NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `data` text,
  PRIMARY KEY (`PHPSESSID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_sessions`;
CREATE TABLE `cmseasy_sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `departmentid` int(10) NOT NULL DEFAULT '0',
  `timestamp` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_settings`;
CREATE TABLE `cmseasy_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `tag` varchar(30) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `array` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `tag` (`tag`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_stats`;
CREATE TABLE `cmseasy_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bot` varchar(50) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_templatetag`;
CREATE TABLE `cmseasy_templatetag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `tagmodule` varchar(32) DEFAULT NULL,
  `tagtype` varchar(32) DEFAULT NULL,
  `tagcontent` text NOT NULL,
  `tagvar` text,
  `note` text,
  `tagfrom` varchar(16) DEFAULT 'define',
  `template_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_type`;
CREATE TABLE `cmseasy_type` (
  `typeid` int(6) NOT NULL AUTO_INCREMENT,
  `parentid` int(6) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `subtitle` varchar(255) DEFAULT '',
  `stype` varchar(50) DEFAULT NULL,
  `listorder` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `description` text,
  `typecontent` mediumtext,
  `htmldir` varchar(50) NOT NULL,
  `template` varchar(50) DEFAULT NULL,
  `listtemplate` varchar(50) DEFAULT NULL,
  `showtemplate` varchar(50) DEFAULT NULL,
  `htmlrule` varchar(100) DEFAULT NULL,
  `listhtmlrule` varchar(100) DEFAULT NULL,
  `showhtmlrule` varchar(100) DEFAULT NULL,
  `module` varchar(16) NOT NULL DEFAULT 'article',
  `isshow` tinyint(2) DEFAULT '1',
  `ishtml` tinyint(2) DEFAULT '0',
  `iswaphtml` tinyint(2) DEFAULT '0',
  `ispages` tinyint(2) DEFAULT NULL,
  `includecatarchives` tinyint(2) DEFAULT '0',
  `addarcenable` tinyint(2) DEFAULT NULL,
  `linkto` varchar(150) DEFAULT NULL,
  `attr1` varchar(20) DEFAULT NULL,
  `attr2` varchar(20) DEFAULT NULL,
  `attr3` varchar(20) DEFAULT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `thumb_width` int(3) DEFAULT NULL,
  `thumb_height` int(3) DEFAULT NULL,
  PRIMARY KEY (`typeid`),
  UNIQUE KEY `type` (`typeid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_union`;
CREATE TABLE `cmseasy_union` (
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `payaccount` varchar(30) NOT NULL DEFAULT '',
  `website` varchar(100) NOT NULL DEFAULT '',
  `visits` int(10) unsigned NOT NULL DEFAULT '0',
  `registers` int(10) unsigned NOT NULL DEFAULT '0',
  `settleexpendamount` float unsigned NOT NULL DEFAULT '0',
  `totalexpendamount` float unsigned NOT NULL DEFAULT '0',
  `totalpayamount` float unsigned NOT NULL DEFAULT '0',
  `lastpayamount` float unsigned NOT NULL DEFAULT '0',
  `lastpaytime` float unsigned NOT NULL DEFAULT '0',
  `profitmargin` float unsigned NOT NULL DEFAULT '0',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_union_pay`;
CREATE TABLE `cmseasy_union_pay` (
  `payid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `payaccount` varchar(100) NOT NULL DEFAULT '',
  `amount` float NOT NULL DEFAULT '0',
  `expendamount` float unsigned NOT NULL DEFAULT '0',
  `profitmargin` float unsigned NOT NULL DEFAULT '0',
  `inputer` varchar(30) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`payid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_union_visit`;
CREATE TABLE `cmseasy_union_visit` (
  `visitid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `visittime` int(10) unsigned NOT NULL DEFAULT '0',
  `visitip` varchar(15) NOT NULL DEFAULT '',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `regusername` varchar(30) NOT NULL DEFAULT '',
  `regtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`visitid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_user`;
CREATE TABLE `cmseasy_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `groupid` int(2) NOT NULL DEFAULT '0',
  `checked` tinyint(2) DEFAULT NULL,
  `qqlogin` varchar(255) DEFAULT NULL,
  `alipaylogin` varchar(255) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `userip` varchar(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  `qq` int(15) DEFAULT NULL,
  `e_mail` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `intro` text,
  `point` smallint(5) unsigned DEFAULT '0',
  `introducer` int(10) unsigned DEFAULT NULL,
  `regtime` int(10) unsigned DEFAULT '0',
  `sex` varchar(10) DEFAULT NULL,
  `isblock` tinyint(1) unsigned DEFAULT '0',
  `isdelete` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid` (`userid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_usergroup`;
CREATE TABLE `cmseasy_usergroup` (
  `groupid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `discount` float(2,1) unsigned NOT NULL DEFAULT '0.0',
  `powerlist` text,
  `fpwlist` text,
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_webscan`;
CREATE TABLE `cmseasy_webscan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `var` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_webscan360`;
CREATE TABLE `cmseasy_webscan360` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `var` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `ext1` varchar(100) DEFAULT NULL,
  `ext2` varchar(100) DEFAULT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_weixin`;
CREATE TABLE `cmseasy_weixin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `oldid` varchar(255) DEFAULT NULL,
  `weixinid` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `appid` varchar(255) DEFAULT NULL,
  `appsecret` varchar(255) DEFAULT NULL,
  `checksuc` tinyint(1) unsigned DEFAULT '1',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_weixinmenu`;
CREATE TABLE `cmseasy_weixinmenu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) unsigned DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `typeid` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `txt` text,
  `imgtext` text,
  `intro` text,
  `catid` text,
  `num` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_weixinreply`;
CREATE TABLE `cmseasy_weixinreply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wid` int(11) unsigned DEFAULT NULL,
  `typeid` int(11) unsigned DEFAULT NULL,
  `msgtype` int(11) DEFAULT '0',
  `word` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `txt` text,
  `imgtext` text,
  `intro` text,
  `catid` text,
  `num` int(11) DEFAULT '0',
  `addtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `cmseasy_zanlog`;
CREATE TABLE `cmseasy_zanlog` (
  `zlid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(11) unsigned DEFAULT NULL,
  `cid` int(11) unsigned DEFAULT NULL,
  `uid` int(11) unsigned DEFAULT NULL,
  `addtime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`zlid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
INSERT INTO `cmseasy_a_attachment` VALUES('1','20','http://www.baidu.com/logo.gif','','下载','2011-11-11 11:25:45');
INSERT INTO `cmseasy_a_attachment` VALUES('2','76','140w','','','2016-01-25 17:26:54');



INSERT INTO `cmseasy_a_vote` VALUES('4','3','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('5','8','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('6','9','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('8','20','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('9','21','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('10','22','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('11','19','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('12','23','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('14','11','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('15','12','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('16','13','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('17','14','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('19','16','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('20','17','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('22','27','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('23','28','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('24','29','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('25','30','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('26','31','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('28','33','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('29','34','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('30','35','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('31','36','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('33','38','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('38','43','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('40','45','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('42','47','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('43','48','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('44','49','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('45','50','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('46','51','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('47','52','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('48','53','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('49','54','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('50','55','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('51','56','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('52','57','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('53','58','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('54','59','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('55','60','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('56','61','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('57','62','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('58','63','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('59','64','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('60','65','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('61','66','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('62','67','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('63','68','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('64','69','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('65','70','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('66','71','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('67','72','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('68','73','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('69','74','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('70','75','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('71','76','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('72','77','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('73','78','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('74','79','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('75','80','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('76','81','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('78','83','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('79','84','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('80','85','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('81','86','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('82','87','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('83','88','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('84','89','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('85','90','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('86','91','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('87','92','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('88','93','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('89','94','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','');
INSERT INTO `cmseasy_a_vote` VALUES('3','7','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('2','6','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('1','5','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('32','37','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('34','39','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('35','40','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('36','41','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('37','42','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('39','44','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('41','46','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('18','15','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('21','18','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('7','10','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('13','24','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('90','95','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('91','96','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('92','97','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('27','32','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('93','25','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('94','98','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('95','99','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('96','100','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('97','101','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('98','102','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('77','82','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('99','103','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('100','104','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('101','105','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('102','106','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('103','107','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('104','108','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('105','109','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('106','110','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('107','111','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('108','112','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('109','113','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('110','114','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('111','115','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('112','116','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('113','117','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('114','118','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('115','119','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('116','120','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('117','121','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('118','122','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('119','123','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('120','124','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('121','125','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('122','126','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('123','127','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('124','128','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('125','129','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');
INSERT INTO `cmseasy_a_vote` VALUES('126','130','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}','','','a:8:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";}');

INSERT INTO `cmseasy_activity` VALUES('188','1470814750','1','0','2');

INSERT INTO `cmseasy_announcement` VALUES('1','热烈庆祝本公司网站构建成立！','<p>热烈庆祝本公司网站构建成立！</p>','2010-07-07 07:07:07','1');
INSERT INTO `cmseasy_announcement` VALUES('2','感恩有你,全场低至300元','<p>值此纪念公司成立六周年之际，九州易通科技有限公司为答谢广大用户的支持，特此推出本年度最大型的优惠盛宴。</p>\r\n<p>本次活动将集结易通企业系统的各个类别的商品，包括商业授权、商业模板、企业主机等大类。</p>\r\n<p>三百余套精美企业网站模板供您选择，每套售价仅300元人民币！！!</p>\r\n<p>郑重宣布：</p>\r\n<p>所有CmsEasy系统均免费附赠企业推广模块！</p>\r\n<p>所有CmsEasy系统均免费附赠企业WEB客服程序！</p>\r\n<p>所有CmsEasy系统均免费附赠支付宝，财付通，贝宝支付模块！</p>\r\n<p>所有CmsEasy系统均免费升级微信公共号推送模块！</p>\r\n<p>所有CmsEasy系统均免费升级支微信，快钱支付模块！</p>','2015-09-24 15:46:22','1');
INSERT INTO `cmseasy_announcement` VALUES('3','五周年庆,感恩回馈,送好礼','<p>&nbsp;值此纪念公司成立5周年之际，九州易通科技有限公司为答谢广大用户的支持，特此推出本年度最大型的网购盛宴，本次活动将集结易通企业系统的各个类别的商品，包括商业授权、商业模板、企业主机等大类。</p>\r\n<div>&nbsp;</div>\r\n<div>郑重宣布所有CmsEasy系统均免费附赠企业WEB客服程序！</div>\r\n<div>建站套餐：</div>\r\n<div>终身版授权+一套商业模板+1GB空间仅需600元！</div>\r\n<div>终身版授权+一套商业模板+COM域名+1GB空间仅需655元！</div>\r\n<div>终身版授权+一套商业模板+1GB空间+人工客服咨询仅需1500元！</div>\r\n<div>终身版版+COM域名+1GB空间+一套商业模板+人工客服咨询仅需1555元！</div>\r\n<div>&nbsp;</div>\r\n<div>客户须知：</div>\r\n<div>&nbsp;</div>\r\n<div>空间为国内双线和香港免备案任选。</div>\r\n<div>海外空间，无须备案。不必象在工信部等待冗长的人工开设备案审核.</div>\r\n<div>注意：禁止放置色情、政治、赌博、小说、淘宝客或含采集功能等</div>\r\n<div>套餐中的空间赠送一年，第二年续费只需200元</div>\r\n<div>套餐中的费用不含发票，如需开具发票，需加8%税点和15元快递费。</div>','2015-09-24 15:47:52','1');

INSERT INTO `cmseasy_archive` VALUES('1','1','0','企业文化','','','cmseasy','127','0','','0','0','','0','','','','','0','2010-07-18 23:53:18','cmseasy','','','1','1','企业文化简介内容&hellip;&hellip;','200','<p>企业文化简介内容&hellip;&hellip;</p>','0','','0','','0','0','','1','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('2','1','0','企业荣誉','','','cmseasy','127','0','','0','0','','0','','','','','0','2010-07-18 23:53:59','cmseasy','','','1','1','企业荣誉介绍&hellip;&hellip;','200','<p>企业荣誉介绍&hellip;&hellip;</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('3','1','0','诚聘英才','','','cmseasy','127','0','','0','0','','0','','','','','0','2010-07-18 23:58:30','cmseasy','','','1','1','诚聘英才内容&hellip;&hellip;','200','<p>诚聘英才内容&hellip;&hellip;</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('4','1','0','网站地图','','','cmseasy','127','0','','0','0','','0','','','','','0','2010-07-18 23:59:22','cmseasy','','','1','1','','200','','archive/show_sitemap.html','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('5','13','0','婚纱摄影去哪家拍好告诉你拍婚纱照怎样避开自己的缺','','','cmseasy','127','0','','0','0','','0','','','','','2105','2010-07-18 22:14:31','cmseasy','','/upload/images/201304/2105.jpg','1','1','框架介绍 1. 前言 CMSEasy根据当前广为流行的敏捷开发方式，实现了基于ROR模型框架，能够快速高效的完成各种应用的开发和扩展。 2. 环境   开发语言：PHP   数据库：MySQL   系统环境：Window Server 或者Linux   框架结构 Cmseasy内核 ● 数据缓存 ●      数据库CRUD ● URI ●      MVC模式 ●      自定义模板 ●      表单模型 优势： 由内核进行总体控制，提高程序的安全性，可靠性。 …','200','<p>很多设计师认为做好了企业网站就一定能够做好行业网站的设计，其实对设计来说行业网站和企业网站的设计截然不同，对整个网站的创意、风格、整体框架布局、文字编排、图片的合理利用，空间的合理安排上面等&hellip;有着许多诸多的要求，需要考虑的面更广，面对的问题也会更多。对于一名优秀的网站设计师来说不能绝不能放过任何一点小细节，本篇文章简述的是设计师在做行业网站时所需考虑的一些问题。&nbsp;</p><p>一、网站风格/创意</p><p>　　风格(style)是抽象的。是指站点的整体形象给浏览者的综合感受。整体形象包括站点的版面布局，色彩，字体，浏览方式等&hellip;。如：我们觉得迪斯尼是生动活泼的而IBM则是专业严肃的。每一个网站都会给人们留下的不同感受。这里我们需要做到的是根据网站的定位做出网站特有的风格。除此我们还需要在风格同一上需要把握一下，其实这个风格的统一和传统的印刷出版物没什么区别。你网页上所有的图像、文字，包括像背景颜色、区分线、字体、标题、注脚什么的，都要统一风格，贯穿全站。这样子用户看起来舒服、顺畅，会对你的网站留下一个&ldquo;很专业&rdquo;的印象。而企业网站设计师往往就缺乏这一点，没有全局意思。</p><p>　　创意，所谓创意就是不拘一格？某些设计师在做创意的时候大费周章，做出来确实不可否认很有创意、很别致，但往往对于行业网站的客户为什么不能接受呢？此时不要太责怪客户的不识货，应该反思，抓住客户的需求。其实做行业网站不需要很多大的创意，也不要浪费过多的时间去追求如何个性、如何好看，我们只需要一点小小的创意贯穿全站，也许会使网站更生动更具有吸引力、更有思想，比如企业网站管理程序(<a href=\"http://www.cmseasy.cn/\">http://www.cmseasy.cn/</a>)就是一个很好的案例，它把领先的SEO融入到网站中，使它脱颖而出。</p><p>二、网站LOGO</p><p>　　Logo顾名思义就是站点的标志图案，logo最重要的就是用图形化的方式传递网站的定位和经营理念、同时便于人们识别。网站logo的设计过程中一般有以下三种思路：1.直接以网站网址作为logo。2.根据网站提供的产品/服务特点展开logo设计。3.以传递网站运营商的经营理念为特色。如：企业网站建设网logo(<a href=\"http://www.cmseasy.cn\">www.cmseasy.cn</a>)</p><p>三、视觉流程</p><p>　　人们在阅读某种信息时，视觉总有一种自然的流动习惯，先看什么，后看什么，再看什么。在心理学的研究表明，一般的浏览习惯是从上到下、从左到右，在一个平面上，上松下稳而压抑。同样，平面的左松右稳。所以平面的视觉影响力上方强于下方，左侧强于右侧。这样平面的上部和中上部被称为&ldquo;最佳视域&rdquo;，也就是最优选的地方。在网页设计中一些突出或推荐的信息通常都放在这个位置。当然这种视觉流程只是一种感觉并非一种固定的公式，只要符合人们的心理顺序和逻辑顺序，就可以更为灵活地运用，在网页设计中，灵活而合理地运用直接影响到传达信息的准确与有效性。</p><p>四、网页框架与布局</p><p>　　网页布局大致可分为&ldquo;国&rdquo;字型、拐角型、&ldquo;T&rdquo;字型、&ldquo;L&rdquo;字型、综合框架型、Flash型、变化型，在这里就不做一一论述了。其实在我们在做设计的时候并没有过多的去考虑什么形式，比如我们在一张纸看到一个圆形的东西，很容易可以联想到它像太阳，而有些人则联想到月亮等等&hellip;这都是一种形式比喻，最重要的是抓住客户的需求，把握网站的定位做处合理的框架布局。</p><p>1． 分辨率</p><p>　　网页的整体宽度可分为三种设置形式：百分比、象素、象素+百分比。通常在网站建设中以象素形式最为常用，行业网站也不列外。我们在设计网页的时候必定会考虑到分辨率的问题，科技发展到现在我们通常用的是1024*768和800*600的分辨率，现在网络上很多都是用到778个象素的宽度，在800的分辨率下面往往使整个网页很压抑，有种不透气的感觉，其实这个宽度是指在800*600的分辨率上网页的最宽宽度，不代表最佳视觉，不妨试试760~770的象素，不管在1024还是800的分辨率下都可以达到较佳的视觉效果。</p><p>2． 合理广告</p><p>　　在目前一些网站的广告（弹出广告、浮动广告、大广告、banner广告、通栏广告等等&hellip;）让人觉得很烦琐，更本就不愿意来看，有时连你这个网站都不上了，这样一来网站受到了严重的影响、广告也没达到广告的目的。这些问题都是我们在设计网站之前需要考虑、需要规划的内容之一。</p><p>　　浮动广告有两种，第一种是在网页两边空余的地方可以上下浮动的广告，第二种是满屏幕到处随机移动的广告。建议能使用第一种的情况下尽量使用第一种，不可避免第二种情况时尽量在数量上控制最多一个就好。如果数量过多会直接影响到用户的心理、防挨到用户浏览信息,适得其反。首页广告不宜过多适中即可。如在注册或者某个购买步骤的页面上最好不要出现过多的其他无关的内容让用户分心，避免客户流失等&hellip;</p><p>3．空间的合理利用</p><p>　　很多的网页都具有一个特点，用一个字来形容，那就是&ldquo;塞&rdquo;，它将各种各样的信息如文字、图片、动画等不加考虑的塞到页面上，有多少挤多少，不加以规范，导致浏览时会遇到很多的不方便，主要就是页面主次不分，喧宾夺主，要不就是没有重点，没有很好的归类，整体就像各大杂烩。让人难以找到需要的东西。有的则是一片空白失去平衡，也可以用个&ldquo;散&rdquo;字来形容。</p><p>　　并非要把整个页面塞满了才不觉得空，也并非让整个页面空旷才不觉得满，只要合理的安排、有机的组合，使页面达到平衡，既使在一边的部分大面积留空，同样不会让人感到空，相反这样会给人留下广阔的思考空间，给人回味又达到了视觉效果。</p><p>4．文字编排</p><p>　　在网页设计中，字体的处理与颜色、版式、图形化等其他设计元素的处理一样非常关键。</p><p>4.1文字图形化</p><p>　　文字图形化就是将文字用图片的形式来表现，这种形式在页面的子栏目里面最为常用，因为它具有突出，同时又美化了页面，使页面更加人性化加强了视觉效果。是文字无法达到的。对于通用性的网站弊端就是扩展性不强。</p><p>4.2强调文字</p><p>　　如果将个别文字作为页面的诉求重点，则可以通过加粗、加下划线、加大号字体、加指示性符号、倾斜字体、改变字体颜色等手段有意识地强化文字的视觉效果，使其在页面整体中显得出众而夺目。这些方法实际上都是运用了对比的法则。如果在更新频率低的情况下也可以使用文字图形化。</p><p>&nbsp;</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('6','13','0','那家婚纱照拍的好新娘简单步入三大雷区','','','cmseasy','127','0','','0','0','','0','','','','','2104','2010-07-18 22:21:57','cmseasy','','/upload/images/201304/2104.jpg','1','1','网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。网站其实就是企业，只不过它是提供给自己的客户以不同的产品，即以网页的形式展现给他们浏览、以交互的方式让他们参与等等，既然网站是一个企业就不能回避一个问题，就是盈利的问题，如果只顾向网站投钱，作亏本生意，是那个网站都不愿意做的事情。所以网络如果要给自己带来回报，就必须以高标准来要求，这样就不得不提升到网站文化的高度。还是先来看一下企业文化的定义吧！  　　 只要问一问任何一家一流的高科技企业，什么使这些企业引以自豪，十家有八家或许会告诉你，它们引以自豪的是自己的产品或服务。剩下的两家则会举出一系列的东西，如它们的业务流程、它们的业务伙伴关系、它们的员工等等。总之，概括起来就是：企业文化。 什么是企业文化呢？Terence E. De','200','<p>网站的良好运营靠的是什么？靠技术，肯定不是，因为技术的发展是一个相对的概念，不具有耐久性，缺乏凝聚力，如果仅仅靠这个，是不能维系整个网站发展的。网站其实就是企业，只不过它是提供给自己的客户以不同的产品，即以网页的形式展现给他们浏览、以交互的方式让他们参与等等，既然网站是一个企业就不能回避一个问题，就是盈利的问题，如果只顾向网站投钱，作亏本生意，是那个网站都不愿意做的事情。所以网络如果要给自己带来回报，就必须以高标准来要求，这样就不得不提升到网站文化的高度。还是先来看一下企业文化的定义吧！&nbsp;</p><p>　　 只要问一问任何一家一流的高科技企业，什么使这些企业引以自豪，十家有八家或许会告诉你，它们引以自豪的是自己的产品或服务。剩下的两家则会举出一系列的东西，如它们的业务流程、它们的业务伙伴关系、它们的员工等等。总之，概括起来就是：企业文化。 什么是企业文化呢？Terence E. Deal（特伦斯）和Allan A. Kennedy（阿伦）合著了一部颇具影响的专著，《企业文化》（Corporate Culture）。书中给企业文化的定义是，\"用以规范企业人多数情况下行为的一个强有力的不成文规则体系。\"</p><p>　　其实企业文化指的是一个企业中所有员工共有的一套观念、信念、价值和行为准则，以及由此导致的行为模式。企业文化是以人为本的管理哲学，是把精神文明建设同企业特点和市场对企业发展的要求结合起来的一个重要形式，是借助文化力量的管理方式，良好的企业文化能为企业保持数十年的竞争优势。</p><p>　　可以说企业文化是企业的灵魂。一个没有自己企业文化的企业其经营往往是随波逐流的，其员工也没有主人翁意识，这样的企业是长不了的。纵观国内外现代化企业管理已经从以物为中心的管理转向以人为中心的管理，从而越来越突出人在企业生存和发展中的作用和力量。企业最重要的资源是知识，而知识是人的资源，所以重视人就是重视企业最重要的资源。IBM这样一个老牌的大公司为什么经历如此多的风风雨雨至今仍然是蓝色巨人？HP公司为什么能保持20多年持续稳定的发展？其答案都很简单：重视人的建设是他们立于不败之地的保证。</p><p>　　虽然现在的网站赖以竞争的本钱并不是靠的自己的文化，而是一些比如机遇、技术、条件等，但是现在并不能代表以后，随着社会经济和网络技术的发展，外部条件都不是问题，如果仅靠这些，网站之间的差别将变得很小，这样网站生存的价值就会变小。所以要能够在竞争中立于不败之地，就应该坚持以人为本，挖掘网站人的潜力，让他们发挥自己的才能，使他们能够不断的超越自我，更好的凸现自己的价值。从而形成一种合力，使网站的发展形成一种良好的机制。</p><p>　　 在这样的情况下，网页设计就被赋予了新的内容，要求也随之提高，主要表现在几个方面：</p><p>　　首先就是网站的整体形象，一个网站给人的第一印象就是主页，但是绝不是说，只要主页做好了，网站的整体形象就好，因为在用户对整个网站的浏览的过程中，会自然而然的形成一种对网站的看法，这种看法是附带有感情色彩的，比如喜欢、不喜欢、没有什么感觉等，这就是整体形象的体现，这是靠主页和其它的页面相配合来完成的，所以在制作网页的时候要考虑怎么将自己网站好的一面体现给自己的用户，又要考虑体现的方式，侧重点，不能一锅端，都放在主页上，造成杂乱的形象。而要给人以好的可以信赖的形象就必须从许多细节上入手，同时规范整个网站的外在表现，具体在于标志的设计、标准色彩的表达以及标准字体的设计。这些都是很重要的，有一个统一的、标准的形象是赢得自己用户信赖的条件。</p><p>　　其次是如何在网页设计中将整个网站的员工的精神风貌体现出来，每个企业的员工其实是一分宝贵的财富，所以能够充分的将员工的精神风貌体现出来一方面可以激励他们努力的工作，热爱自己的工作，也是加强企业凝聚力的一个手段；同时也可以通过这样的方法来赢得自己的客户的支持，在网站林立的今天，赢得自己的用户就是赢得了市场，就是获得了生存的基本条件。</p><p>　　再次，在网页设计的时候，需要结合网站本身的特点，提炼出自己的经营理念，摆脱低层次的网站运行模式，网站作为一个企业就必须在不断的发展壮大的时候，结合自身的文化特色，提炼出一些深层次的东西，而这些东西就是企业的灵魂，很多世界知名品牌都有自己的独特的经营理念，比如微软是\"成功诀窍 = 人才 + 创新，管理 = 合适的时间 + 应做的事\"，惠普是\"财富= 人才 = 资本 + 知识\"，飞利普是\"新产品 = 技术内涵 + 观念创新\"，东芝是\"企业活力 = 智力&times;（毅力 + 体力 + 速度）\"，麦当劳是\"企业的活力 = 原材料&times;设备&times;人力资源人力资源 = 人数&times;能力&times;态度\"。这样就给网页设计师提出了更高的要求，要求他们能够深入的了解网站，同时将自己融入的到网站中，不断的发掘具有闪光性的东西，同时找到合适的表达方式来加以强化。这样才能够使网站靠自身的优势获得用户的好感。从而奠定良性运行的基础。</p><p>　　既然网站文化给网页设计师提出了更高的要求，那么具体到网页设计师身上该如何应对呢？提高自身的文化素质是必不可少的，假如自身素质不高的话，就无法领会到很多其中的内涵，这样在自己的设计表达的时候就不可能到位，其实作品就是一面镜子，在其中可以折射出设计者自身的素质，这是掩盖不了的，所以提高自身的文化修养是很重要的，形成一种习惯，这样在无形中就可以在设计的作品表现出来，所以这里没有任何捷径可以走，只有在平时的生活中点点滴滴的积累。同时要有一颗积极向上的心，对生活充满热情！这样才可能在自己的网页设计中挖掘出好的东西来，也给自己的用户留下好的印象。<br/>&nbsp;</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('7','13','0','影楼哪家好认为拍好婚纱照需求留意的8个事项','','','cmseasy','127','0','','0','0','','0','','','','','2103','2010-07-18 22:22:19','cmseasy','','/upload/images/201304/2103.jpg','1','1','随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落。作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领，日益成为与百姓交流的直通车；企业利用网站宣传自己的形象，挖掘无限商机；个人利用网站展示个性风采，创建彼此沟通的桥梁。越来越多的人希望拥有网站，开辟网络世界里的一片天地。如何设计一个出色的网站呢？关于这个问题，人们讨论的很多，可以讨论的内容也很多，加之网络技术的飞速发展，很难提出一个绝对权威和正确的设计思路，任何网站都基于以下设计思路：  中国站长第一门户          一、定位网站的主题和名称  网站的主题也就是网站的题材，网站设计开始首先遇到的问题。网站题材千奇百怪,琳琅满目，','200','<p>&nbsp;随着网络技术的不断发展，网络应用已经渗透到人类社会的各个角落。作为网络世界的支撑点的网站，更是人们关注的热点：政府利用网站宣传自己的施政纲领，日益成为与百姓交流的直通车；企业利用网站宣传自己的形象，挖掘无限商机；个人利用网站展示个性风采，创建彼此沟通的桥梁。越来越多的人希望拥有网站，开辟网络世界里的一片天地。如何设计一个出色的网站呢？关于这个问题，人们讨论的很多，可以讨论的内容也很多，加之网络技术的飞速发展，很难提出一个绝对权威和正确的设计思路，任何网站都基于以下设计思路：&nbsp;</p><p>中国站长第一门户</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 一、定位网站的主题和名称 <br/>网站的主题也就是网站的题材，网站设计开始首先遇到的问题。网站题材千奇百怪,琳琅满目，只要想的到，就可以把它制作出来。</p><p>如果题材已经确定以后，就可以围绕题材给网站起一个名字。网站名称，也是网站设计的一部分，而且是很关键的一个要素。</p><p>中国站长第一门户建议：</p><p>1、名称要正。其实就是要合法，和理，和情。不能用反动的，色情的，迷信的，危害社会安全的名词语句。</p><p>2、名称要易记。最好用中文名称，不要使用英文或者中英文混合型名称。另外，网站名称的字数应该控制在六个字(最好四个字)以内，四个字的也可以用成语。字数少还有个好处，适合于其他站点的链接排版。</p><p>3、名称要有特色。名称平实就可以接受，如果能体现一定的内涵，给浏览者更多的视觉冲击和空间想象力，则为上品。例如：音乐前卫，网页陶吧，e书时空等。在体现出网站主题的同时，能点出特色之处。</p><p>二、定位网站的CI形象</p><p>所谓CI(corporate identity)，意思是通过视觉来统一企业的形象。一个杰出的网站，和实体公司一样，需要整体的形象包装和设计。准确的，有创意的CI设计，对网站的宣传推广有事半功倍的效果。中国站长第一门户</p><p>三、确定网站的栏目</p><p>建立一个网站好比写一篇文章，首先要拟好提纲，文章才能主题明确，层次清晰。如果网站结构不清晰，目录庞杂，内容东一块西一块。结果不但浏览者看得糊涂，自己扩充和维护网站也相当困难。网站的题材确定后，并且收集和组织了许多相关的资料内容，但如何组织内容才能吸引网友们来浏览网站呢？栏目的实质是一个网站的大纲索引，索引应该将网 站的主体明确显示出来。</p><p>四、确定网站的目录结构</p><p>网站的目录是指你建立网站时创建的目录。例如：在用frontpage98建立网站时都默认建立了根目录和images(存放图片)子目录。目录结构的好坏，对浏览者来说并没有什么太大的感觉，但是对于站点本身的上传维护，内容未来的扩充和移植有着重要的影响。</p><p>五、确定网站的链接结构中国站长第一门户</p><p>网站的链接结构是指页面之间相互链接的拓扑结构。它建立在目录结构基础之上，但可以跨越目录。建立网站的链接结构有两种基本方式：</p><p>1、树状链接结构</p><p>类似DOS的目录结构，首页链接指向一级页面，一级页面链接指向二级页面。这样的链接结构浏览时，一级级进入，一级级退出。优点是条理清晰，访问者明确知道自己在什么位置，不会\"迷\"路。缺点是浏览效率低，一个栏目下的子页面到另一个栏目下的子页面，必须绕经首页。</p><p>2、星状链接结构</p><p>类似网络服务器的链接，每个页面相互之间都建立有链接。这种链接结构的优点是浏览方便，随时可以到达自己喜欢的页面。缺点是链接太多，容易使浏览者迷路，搞不清自己在什么位置，看了多少内容。中国站长第一门户<br/>&nbsp;</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('38','13','0','婚纱摄影排行榜','','','admin','1','0','','0','0','','0','','','','','2107','2014-10-11 16:30:47','admin','','/upload/images/201304/2107.jpg','1','1','关于一个网站的开展而言，跟着查找引擎越来越注重用户体验，良多的网站都邑更好的投合用户，然后添加一些比拟利于用户体验的插件，以及良多时分我们网站后期开展的需求，所以网站改版相对而言就会很必定。然则作为小我站长的我们，无论从技能、网站整顿的运作都是显得那么势单力薄。特殊是一些站长由于改版后招致网站降权，然后就懊悔万分，这些都是很经常见的，那么若何才干做到网站改版不降权呢?今日我与人人分享一些我在网站改版中的一些经历心得吧。\r\n　　(一)改版也要包管网站正常拜访。\r\n　　在我们对其网站改版的进程中，切勿封闭网站，招致蜘蛛无法抓取匍匐。然后降低网站的收录，以及降权。所以我们在对网站改版的进程中必然要包管网站可以正常拜访，而且包管内容的正常更新，外链的推行这些方面。\r\n　　(二)应用当地测试的方法进行改版。\r\n　　在我之前做站的时分发现良多站长直接在网站的效劳器上面临网站进行改版，大幅度的调试，完全疏忽了此时蜘蛛还在你的网站匍匐，然后惹起蜘蛛的恶感或许说是不信赖，招致网站降权从新审核。所以在这里，我引荐人人最好是在当地测试性的改版，等模板以及一些插件彻底的精确的调试终了之后，在直接上传到效劳器上面，如许不只仅可以包管在改版时期网站属于正常形态，还也到达了我们改版的目标。\r\n　　(三)做好网站全体构造融洽。\r\n　　关于有些站点而言，良多时分会晤临大幅度的改版，触及到网站一些栏目标途径调整等情况，在这时分我们需求严密的记载好网站栏目标之前途径，而且不要把之前的途径直接删除，可以做成301重定向的方法进行权重传输，而且关于新途径的话百度也是有审核期的，所以我们在做内链的时分尽能够的多引入蜘蛛匍匐，然后促使早日审核。\r\n　　(四)网站题目很主要。\r\n　　一般来说的话，我是不引荐人人修正网站题目的，由于这关系到整个网站的权重以及要害词排名问题，然则有时分不得已照样必需修正的，那么在这个时分我建议人人尽能够的小型变化，不然的话招致网站降权是一定的。还在这时分需求增强内链的根底性以及外链的辅佐性，只要如许才干更好的使其网站即使降权也能疾速恢复。\r\n　　(五)网站改版后的推行任务。\r\n　　关于网站改版之后而言，推行任务的量愈加需求加大，由于在我们改版之后网站同新站一样都是有一个审核期的，在这时期网站排名能够很不睬想，所以我们除了做好网站内部任务之外，推行任务也长短常要害的，然则人人必然切记我们推行出去的不是白费，必然要包管推行出去的外链都是质量性的，只要如许才干更好的使其网站恢复，渡过这个审核期。\r\n　　(六)改版后必然要包管网站友链不会撤失落。\r\n　　在我们改版后网站在面对审核期的时分，网站权重会降低，收录快照等方面也能够会有些缓慢，所以在这时分良多友链站长会把你的网站链接撤失落，招致网站被二次降权都是极为经常见的，所以在这里我想说的是，在我们对网站改版的时分必然要告诉你一切的友谊链接站长们，通知他你的目标，以及是审核期很快就会恢复的，不要他们撤失落你链接，如许就可以了，当然照样需求你人际关系咯，哈哈。\r\n　　总结：其实关于网站改版而言，我们更多的照样需求留意到一些细节性的任务，更好的尊于用户体验的原则结构合理的网站，然后进行优化在到后期的推行恢复任务，这些都不是一朝一夕就可以完成的，照样需求我们有一颗好的心态积极的去面临。只要如许我们的网站才干做好，做强做大。','0','<p>关于一个网站的开展而言，跟着查找引擎越来越注重用户体验，良多的网站都邑更好的投合用户，然后添加一些比拟利于用户体验的插件，以及良多时分我们网站后期开展的需求，所以网站改版相对而言就会很必定。然则作为小我站长的我们，无论从技能、网站整顿的运作都是显得那么势单力薄。特殊是一些站长由于改版后招致网站降权，然后就懊悔万分，这些都是很经常见的，那么若何才干做到网站改版不降权呢?今日我与人人分享一些我在网站改版中的一些经历心得吧。</p><div>　　(一)改版也要包管网站正常拜访。</div><div>　　在我们对其网站改版的进程中，切勿封闭网站，招致蜘蛛无法抓取匍匐。然后降低网站的收录，以及降权。所以我们在对网站改版的进程中必然要包管网站可以正常拜访，而且包管内容的正常更新，外链的推行这些方面。</div><div>　　(二)应用当地测试的方法进行改版。</div><div>　　在我之前做站的时分发现良多站长直接在网站的效劳器上面临网站进行改版，大幅度的调试，完全疏忽了此时蜘蛛还在你的网站匍匐，然后惹起蜘蛛的恶感或许说是不信赖，招致网站降权从新审核。所以在这里，我引荐人人最好是在当地测试性的改版，等模板以及一些插件彻底的精确的调试终了之后，在直接上传到效劳器上面，如许不只仅可以包管在改版时期网站属于正常形态，还也到达了我们改版的目标。</div><div>　　(三)做好网站全体构造融洽。</div><div>　　关于有些站点而言，良多时分会晤临大幅度的改版，触及到网站一些栏目标途径调整等情况，在这时分我们需求严密的记载好网站栏目标之前途径，而且不要把之前的途径直接删除，可以做成301重定向的方法进行权重传输，而且关于新途径的话百度也是有审核期的，所以我们在做内链的时分尽能够的多引入蜘蛛匍匐，然后促使早日审核。</div><div>　　(四)网站题目很主要。</div><div>　　一般来说的话，我是不引荐人人修正网站题目的，由于这关系到整个网站的权重以及要害词排名问题，然则有时分不得已照样必需修正的，那么在这个时分我建议人人尽能够的小型变化，不然的话招致网站降权是一定的。还在这时分需求增强内链的根底性以及外链的辅佐性，只要如许才干更好的使其网站即使降权也能疾速恢复。</div><div>　　(五)网站改版后的推行任务。</div><div>　　关于网站改版之后而言，推行任务的量愈加需求加大，由于在我们改版之后网站同新站一样都是有一个审核期的，在这时期网站排名能够很不睬想，所以我们除了做好网站内部任务之外，推行任务也长短常要害的，然则人人必然切记我们推行出去的不是白费，必然要包管推行出去的外链都是质量性的，只要如许才干更好的使其网站恢复，渡过这个审核期。</div><div>　　(六)改版后必然要包管网站友链不会撤失落。</div><div>　　在我们改版后网站在面对审核期的时分，网站权重会降低，收录快照等方面也能够会有些缓慢，所以在这时分良多友链站长会把你的网站链接撤失落，招致网站被二次降权都是极为经常见的，所以在这里我想说的是，在我们对网站改版的时分必然要告诉你一切的友谊链接站长们，通知他你的目标，以及是审核期很快就会恢复的，不要他们撤失落你链接，如许就可以了，当然照样需求你人际关系咯，哈哈。</div><div>　　总结：其实关于网站改版而言，我们更多的照样需求留意到一些细节性的任务，更好的尊于用户体验的原则结构合理的网站，然后进行优化在到后期的推行恢复任务，这些都不是一朝一夕就可以完成的，照样需求我们有一颗好的心态积极的去面临。只要如许我们的网站才干做好，做强做大。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('8','13','0','拍婚纱照需要准备什么','','','cmseasy','127','4','','0','0','','0','','','','','2102','2010-07-18 22:22:46','cmseasy','','/upload/images/201304/2102.jpg','1','1','网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。本文就网站建设合同应该包含哪些主要内容，应该注意一些什么逐个做说明：         网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。网站建设合同必须包含以下主要内容： 1）网站建设工作范围 2）网站建设工作流程与时间进度 3）网站建设质量要求 4）网站承建费用支付，支付标准与支付方式 下面就每一部分应该写明一些什么内容和注意一些什么点逐个做说明（合同其他部分如，违约形式与责任，合同附件里的《网','200','<p>&nbsp;网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。本文就网站建设合同应该包含哪些主要内容，应该注意一些什么逐个做说明：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 网站建设合同是在网站建设项目中，企业（需要建网站方）和承建方（专业网站制作公司）之间共同确立的双方在项目中的权利，义务和合作内容的契约文件。网站建设合同必须包含以下主要内容：<br/>1）网站建设工作范围<br/>2）网站建设工作流程与时间进度<br/>3）网站建设质量要求<br/>4）网站承建费用支付，支付标准与支付方式<br/>下面就每一部分应该写明一些什么内容和注意一些什么点逐个做说明（合同其他部分如，违约形式与责任，合同附件里的《网站建设方案书》本文不作讨论）。<br/>一、网站建设工作范围<br/>网站建设项目涉及到的工作一般包括，需求调研与《网站建设方案书》制作，网站建设素材准备，网站页面设计与制作，网站功能性部分程序开发与页面融合，数据库设计与数据输入，服务器购买（软件和硬件）或服务器空间租用、服务器存放，域名注册与解析。<br/>所先，在这些网站建设工作中，合同需要确定哪些是承建方的工作，哪些不是，哪些是企业或者第三方的工作，以及各方工作之间的合作方式和要求。<br/>这里需要注意的是，如果企业在工作中需要和建设方或者第三方进行合作，那么必须清晰说明这种合作的流程，方式和要求。譬如，如果网站建设素材由企业提供，合同必须对企业提供的素材内容，时间，要求作出清晰的说明。<br/>其次，对于承建方工作部分，必须细致地说明。<br/>例如，网站需要建设哪些栏目，每个栏目需要制作哪些内容，网站需要开发哪些功能性的程序（如BBS）等，对这些合同必须相当明确地作出说明。合同可以用建设方确认通过的《网站建设方案书》作为合同附录，来更详细阐明承建方的工作。<br/>二、项目建设工作流程与时间进度</p><p>网站建设流程一般流程为：需求调研，完成网站《网站建设方案书》，《方案书》确认，素材（文字，图片，数据）收集与整理，页面风格设计，风格设计确认，页面制作，程序开发，整合（页面，程序），建设方评估与测试，网站改进与建设方确认，服务器与域名准备，网站上传发布，网站维护。<br/>所先，合同必须说明项目开展的工作流程。<br/>其次，对于每个工作流程，需要概要说明承建方的工作内容，尤其对于需要企业参与的部分，需要说明企业的工作内容和要求。例如，需求调研时企业的配合和资源提供；设计制作确认时的确认方式和确认范围。<br/>最后，是对每个流程环节的完成时间要求说明。合同需要给出每个流程环节的工作估计以及项目最终完工的日期估计，双方可以根据需要，协商在进度限制上的严格度。<br/>三、网站建设质量要求<br/>网站建设质量主要指网站页面设计，制作与网站程序的质量。合同需要对这些工作的质量作出周到的，尽量可度量的要求，譬如为保证浏览速度，建设方也可以对每个网页的大小作出一般性限制。<br/>对于页面设计与制作，由于对设计风格的认识差异会导致建设方和承建方的质量评判结果不同，同时设计质量也难以度量，容易出现建设方多次否定设计的情况。在这个时候需要用变通的办法来弥合双方的质量评判差异。<br/>例如，可以由承建方设计出5种建设方要求风格的设计页面，然后由建设方选择，或者重复修正设计不能超过5次，而承建方可以以半价收取落选设计页面费用的代价来限制设计要求的变化。<br/>还有一种办法，就是采取第三方来度量页面设计与制作质量。例如，找一些普通的上网用户，测试他们成功搜索网站中某个特定内容所需要的时间，用这个时间来衡量网站连接设计质量和合理性。例如，可以通过在门户网站做网上调查，由网民来评判网站设计与制作质量，这样做同时也很好地宣传了网站。<br/>而对于网站功能性程序来说，合同应该对功能作出详细的说明。如会员注册登陆系统，那么除了会员的注册，登陆，退出外，系统还应该提供给会员什么功能，譬如新闻定制等。这部分可以在《网站建设方案书》里作出更详细的说明。<br/>如果，网站承建方同时提供虚拟主机空间，那么企业还可以对网站访问速度，宕机时间，网站带宽等方面作出要求（空间租用双方一般也可以另签《网站空间租用合同》）。</p><p>四、网站承建费用支付，支付标准与支付方式<br/>网站建设业内一般采用按制作量记费的方式，譬如按页面数量记费。<br/>但网站制作量，如页面数量等，在制作过程中是变化的，所以在签合同的时候无法给出整个网站建设完成后的确切费用。但是合同却可以给出网站建设的收费项和收费标准，等网站建设完成后，统计整个网站的每项工作量，再结合记费标准来算出项目实际标的。<br/>所先，确定网站建设收费项。网站建设收费项一般可以包括以下一些：<br/>1）素材整理阶段的文字录入费，图片处理费，翻译费<br/>2）《网站建设方案书》制作费用<br/>3）普通页面制作费用<br/>4）页面风格设计费用（一般指主页和栏目首页）<br/>5）页面特效制作费用（譬如JavaScript，Flash等）<br/>6）功能性程序开发费用（如调查系统，会员注册系统等）<br/>7）数据库数据录入费用<br/>8）空间租用费用等。<br/>其次，确定每个收费项的单位价格。例如，文字翻译每千字50元等。<br/>这一条款关系到日后合同标的的计算，所以务必非常清晰，双方不妨多花一点时间来协商这里的细节，以达到彼此在这一条款上的一致认可，以妨日后引起不必要的争执。为了做到这一点，我认为原则就?quot;细\"。譬如，必须定义怎么算作一个页面，是1024下的800*600，还是800*800？如果是800*600，那么一个800*1200的页面就算做两页；这是一个协商的过程，这样计算是否合理，我觉得只要双方都同意这样计算就没有问题，关键是必须使得日后统计制作量和计算合同标的时双方没有歧义。<br/>费用支付一般可以分成三次进行。一般合同签署一周内支付一定数量，作为项目启动费用；项目中期支付一定数量；项目结束后，计算项目实际标的，再支付余额。<br/>如前面所说，作为网站建设项目的建设合同还需要其他很多条款和辅助合同，如：《空间租用合同》等，但是以上谈到四点却是合同里最重要，也是最需要\"细扣\"的内容，希望大家以后在撰写网站建设合同时能从中获得一点帮助。<br/>&nbsp;</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('9','13','0','如何减少你婚礼的“花”销？','','','cmseasy','127','227','','0','0','','0','','','','','2101','2011-11-27 02:50:29','cmseasy','','/upload/images/201304/2101.jpg','1','1','每对新人在婚礼花艺上的开销都很大，其实如果想让婚礼场地变得很美，不需要花太多的钱去修饰它。怎样能让婚礼花艺的开销控制在你的预算之下，又可以让婚礼场地看起来不廉价呢？这里有一些技巧，新娘们可以学习一下哦！\r\n \r\n  考虑使用装饰瓶和蜡烛\r\n  使用装饰瓶和蜡烛做摆设会比用花朵来布置场地的开销要少一些。为了避免你婚礼的途中要去更换蜡烛，你最好使用可以燃烧十个小时以上的。最好不要采用茶蜡和浮蜡，因为茶蜡点燃后持续的时间都不太长，浮蜡很容易被客人弄翻。\r\n \r\n  让贵宾佩戴胸花会稍显过时\r\n  你可以从你的手捧花中挑选两到三朵，用薄丝带把它们系到一起，然后把它送给贵宾。这样不仅可以体现他的尊贵，照出相片也会很好看，同时也可以避免胸花上的曲别针弄坏客人的衣服。\r\n \r\n  挑选颜色鲜艳的桌布\r\n  如果白色不是你唯一的选择，你可以考虑使用颜色鲜艳的桌布，它可以代替花艺来装饰你的婚宴酒席。有很多新奇有趣且开销很少的装饰创意在新娘BRIDES杂志上，你可以去翻阅参考一下哦！\r\n \r\n  买一束鲜花而不是一袋花瓣\r\n  如果你想用花瓣来装饰婚礼现场的话，最好要买一束新鲜的花而不是一袋子花瓣。袋装的花瓣很容易枯萎，从花束上摘下来的花瓣，其新鲜程度会维持的很久，而且花瓣的数量也会比袋装的多。','200','<p>每对新人在婚礼花艺上的开销都很大，其实如果想让婚礼场地变得很美，不需要花太多的钱去修饰它。怎样能让婚礼花艺的开销控制在你的预算之下，又可以让婚礼场地看起来不廉价呢？这里有一些技巧，新娘们可以学习一下哦！</p><p>&nbsp;</p><p>&nbsp;&nbsp;考虑使用装饰瓶和蜡烛</p><p>&nbsp;&nbsp;使用装饰瓶和蜡烛做摆设会比用花朵来布置场地的开销要少一些。为了避免你婚礼的途中要去更换蜡烛，你最好使用可以燃烧十个小时以上的。最好不要采用茶蜡和浮蜡，因为茶蜡点燃后持续的时间都不太长，浮蜡很容易被客人弄翻。<br/>&nbsp;</p><p>&nbsp;&nbsp;让贵宾佩戴胸花会稍显过时</p><p>&nbsp;&nbsp;你可以从你的手捧花中挑选两到三朵，用薄丝带把它们系到一起，然后把它送给贵宾。这样不仅可以体现他的尊贵，照出相片也会很好看，同时也可以避免胸花上的曲别针弄坏客人的衣服。<br/>&nbsp;</p><p>&nbsp;&nbsp;挑选颜色鲜艳的桌布</p><p>&nbsp;&nbsp;如果白色不是你唯一的选择，你可以考虑使用颜色鲜艳的桌布，它可以代替花艺来装饰你的婚宴酒席。有很多新奇有趣且开销很少的装饰创意在新娘BRIDES杂志上，你可以去翻阅参考一下哦！<br/>&nbsp;</p><p>&nbsp;&nbsp;买一束鲜花而不是一袋花瓣</p><p>&nbsp;&nbsp;如果你想用花瓣来装饰婚礼现场的话，最好要买一束新鲜的花而不是一袋子花瓣。袋装的花瓣很容易枯萎，从花束上摘下来的花瓣，其新鲜程度会维持的很久，而且花瓣的数量也会比袋装的多。</p><p><br/></p>','archive/show.html','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('10','8','2','NATURE','','','cmseasy','127','4','','0','0','','0','','','','','3103','2011-11-27 03:31:43','cmseasy','','/upload/images/201304/3103.jpg','1','1','','200','<p>照片真正的价值是正确记录光的流动，最艺术的照片是呈现纯真和真实的创意性形象。艺匠创始人金龙善老师探访世界各地20多个国家，一直在寻找一种可以将新人与自然融合的摄影背景。直至在伦敦小镇受邀参加一场摩登摄影展，一幅名为<nature>的摄影作品让他大为触动，回国后，他便将记忆中的摄影作品和影棚衔接幻化，利用出挑又充满戏剧性的色彩和流畅的线条，将新人与自然连接成为”我们”，并将整个系列命名为<nature ii=\"\">，寓意每一对真正相爱的恋人都应该用心完整地体验一次<nature ii=\"\">毕竟，她是一个时代的经典，而且，从未完结... &nbsp;</nature></nature></nature></p><p>&nbsp;The real value of photo is record the flow of light correctly , picture is the art creative image of the pure and true. Artiz founder Jin visited more than 20 countries all over the world , has been looking for a nature photography background. Until he was invited to a modern exhibition in London, a painting called < NATURE > he was touched, after returning home, he will be remembered photography studio cohesion and unreal, using relative and dramatic colors and fluent line, the new connection with nature to become \"we\", and the entire series named < NATURE II>, meaning each pair of lovers should be &nbsp;complete experience a < NATURE II>, after all, she is one of the classic era, and never end...&nbsp;</p><p>&nbsp;</p><p><img src=\"/upload/images/201608/14708153153168.jpg\" style=\"\" title=\"14708153153168.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708153151229.jpg\" style=\"\" title=\"14708153151229.jpg\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708153159992.jpg\" style=\"\" title=\"14708153159992.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','360','','0','','','0','N;','','82','116','124','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('11','8','2','戴安娜之恋','','','cmseasy','127','0','','0','0','','0','','','','','3105','2011-11-27 03:31:19','cmseasy','','/upload/images/201304/3105.jpg','1','1','','200','<p>当年戴安娜公主一身经典的黑色晚装，天使般的容貌与纯真优雅的造型抓住了每个女人的心。</p><p>韩国艺匠完美复制戴安娜的经典形象，让每一个新娘增添无限延伸的气质张力。每一幅作品皆赋予女人的一种精致、纯粹的幸福回忆。在每一个女人心中，韩国艺匠的专业技术永远是捕捉爱与美、罗曼蒂克与梦想的象征。</p><p>When princess Diana a classic black evening wear, angelic appearance and pure elegant modelling caught every woman&#39;s heart .ARTIZ STUDIO perfect copy Diana&#39;s classic image, let every bride add unlimited extension of temperament tension. Each picture all give a woman a delicate, pure happy memories. In every woman heart, ARTIZ STUDIO professional technology is always capture a symbol of love and beauty, romance and dream.</p><p>&nbsp;</p><p><img src=\"/upload/images/201608/14708151501189.jpg\" style=\"\" title=\"14708151501189.jpg\"/></p><p><img src=\"/upload/images/201608/14708151509647.jpg\" style=\"\" title=\"14708151509647.jpg\"/></p><p><img src=\"/upload/images/201608/14708151509432.jpg\" style=\"\" title=\"14708151509432.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','520','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('12','8','2','摩登时代','','','cmseasy','127','2','','0','0','','0','','','','','3106','2011-11-27 03:31:11','cmseasy','','/upload/images/201304/3106.jpg','1','1','','200','<p>人生的旅程从童年开始，年少时的无忧，年轻时的美好，中年时的守望，倘若能够闯过这发生的一切，我们是否能牵手到永久，只求在我最美的年华里，遇到你。“你觉得我们的爱可以创造奇迹吗？”“我想可以，正是因为爱每次都能把你带回我身边。”“你觉得我们的爱能把我们一起带走吗？”“我想我们的爱可以让我们无所不能。”“我爱你”“彼此相爱，享受每一次幸福，你的幸福时刻将是温暖所有人，ARTIZ STUDIO充满感染力”尽情享受爱的喜悦。拥有幸福与快乐。</p><p>The journey of life, from childhood, youth, worry-free, youthful beauty, watch for middle age; and if I can through it all, whether we can hand in hand to permanent, but in my most beautiful years, met you. \"What do you think our love can create miracles?\" \"I think so, because of love to bring you back to me every time.\" \"What do you think of our love will take us?\" \"I think our love can make us omnipotent.\" \"I love you\", \"love each other, enjoy every happiness, your happiness will be warm, all ARTIZ STUDIO is full of appeal\" to enjoy the joy of love. With happiness and joy.</p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708156091144.jpg\" style=\"\" title=\"14708156091144.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708156103760.jpg\" style=\"\" title=\"14708156103760.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708156104123.jpg\" style=\"\" title=\"14708156104123.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708156104059.jpg\" style=\"\" title=\"14708156104059.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','650','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('13','8','2','LAENDY','The artisans to launch a new series','','cmseasy','127','0','','0','0','','0','','','','','3107','2011-11-27 03:31:02','cmseasy','','/upload/images/201304/3107.jpg','1','1','','200','<p>本次艺匠推出的全新系列，邀请韩国新生代演员张准柳小姐来拍摄明星客照。本系列旨在用光影塑造人像本来之美，很好的保留了暗部细节的前提下，做到高光处不过曝并采用低饱和度来表现画面的典雅细致。</p><p>The artisans to launch a new series, invited the south Korean new generation actor must miss liu to film star guest photo. This series aims to use lighting and shading shape like the beauty of the original, under the premise of good retained the shadow detail, do the highlights but exposure and low saturation is used to show elegance and detailed picture.</p><p><br/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708157156061.jpg\" style=\"\" title=\"14708157156061.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708157156774.jpg\" style=\"\" title=\"14708157156774.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708157154576.jpg\" style=\"\" title=\"14708157154576.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708157151299.jpg\" style=\"\" title=\"14708157151299.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','320','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('14','8','2','迷尚','','','cmseasy','127','0','','0','0','','0','','','','','3108','2011-11-27 03:30:32','cmseasy','','/upload/images/201304/3108.jpg','1','1','','200','<p>迷恋你的琴声，每一个音符都藏有惊喜。迷恋你的优雅，每一次微笑都令人心醉。当迷恋缓缓沉淀，当激情逐渐平淡。你的爱与陪伴，将是上苍赐予我最好的礼物。</p><p>Crush, every note with surprise. Infatuated with your grace, every smile is glorious. When love slowly precipitation, when the passion is gradually insipid. Your love and companionship, will be the god give me the best gift.</p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158067489.jpg\" style=\"\" title=\"14708158067489.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158066885.jpg\" style=\"\" title=\"14708158066885.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158069187.jpg\" style=\"\" title=\"14708158069187.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158067241.jpg\" style=\"\" title=\"14708158067241.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','200','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('15','8','1','韩式婚纱照主题','','','cmseasy','127','777','','0','0','','1','','','','','3101','2011-11-27 03:37:10','cmseasy','','/upload/images/201304/3101.jpg','1','1','　　韩国的盛行元素流入中国之后，如今更多的新人拍西安韩式婚纱照都会挑选唯美的韩式个性的，韩式中的是可爱小清新小礼衣，唯美的婚纱，精致的妆容，会逐渐变成国内的婚纱干流，怎么才干拍照出唯美可爱的西安韩式婚纱照干流婚纱摄影呢?如今来看看费司摄影小编为我们介绍的西安韩式婚纱照拍照攻略吧!\r\n','200','<p>　　韩国的盛行元素流入中国之后，如今更多的新人拍西安韩式婚纱照都会挑选唯美的韩式个性的，韩式中的是可爱小清新小礼衣，唯美的婚纱，精致的妆容，会逐渐变成国内的婚纱干流，怎么才干拍照出唯美可爱的西安韩式婚纱照干流婚纱摄影呢?如今来看看费司摄影小编为我们介绍的西安韩式婚纱照拍照攻略吧!</p><p><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><span style=\";padding: 0px\"><img alt=\"\\\" src=\"/upload/images/201608/14703834602888.jpg\" style=\"margin: 20px auto;padding: 0px;max-width: 1100px;display: block;width: 800px;height: 611px\"/></span></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><span style=\";padding: 0px\"></span></span></p><p>　　西安韩式婚纱照经典的传统个性</p><p>　　个性特征：打光比较复杂，首要着重使用光线来刻画新郎新娘的立体感。场景和外型都很简洁大气。<br/><br/></p><p>　　西安韩式婚纱照时尚与复古个性</p><p>　　个性特征：斗胆的测验反差，将由多种类似悬殊的个性融与到一同。拍摄时选用不间断的继续光源，这种光照强度会比较弱，色温改变大，简单操控景深。<br/>　　西安韩式婚纱照浓艳的唯美个性<br/></p><p>　　个性特征：利用以模拟的数码布景和林林总总的婚纱礼衣，以清新的灯火为主，表现高雅、心爱和纯情的感受。<br/>　　西安韩式婚纱照拍照拍照的注意事项<br/></p><p>　　1、西安韩式婚纱照布景：经典个性多种多样的用斑纹素雅的壁纸或扎染布作为布景，如咖啡色、褐色、淡紫色等;天然个性选用日子个性化的布景或仿照外景的数码布景。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><span style=\";padding: 0px\"><br/></span></span><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><br style=\";padding: 0px\"/><img alt=\"\\\" src=\"/upload/images/201608/14703834629632.jpg\" style=\"margin: 20px auto;padding: 0px;max-width: 1100px;display: block;width: 800px;height: 611px\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"></span></p><p>　　2、西安韩式婚纱照姿势：在娴雅的静态美姿上，能够加一点潇洒的小动作，如让婚纱裙子和头发漂动起来。</p><p>　　3、西安韩式婚纱照妆面：韩式的妆容自然新鲜，最好以一致的色彩上妆，妆面不要太浓。</p><p><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"><img alt=\"\\\" src=\"/upload/images/201608/14703834631210.jpg\" style=\"margin: 20px auto;padding: 0px;max-width: 1100px;display: block;width: 800px;height: 612px\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\">　　</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\"font-family: sans-serif;\">&nbsp; &nbsp; 底妆需要用三种色彩差不多的粉底来润饰脸型，打造立体的笑脸。韩式外型的特色之一是体现在头部外型上，多选用：蓬、拧、编的方法，也经常用宽包发加皇冠、发卡偏刘海发卡、大花头饰等。</span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\"font-family: sans-serif;\"><br/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\"font-family: sans-serif;\">　　4、西安韩式婚纱照色彩：画面色彩通常有高谐和低沉两种。高调画面以白色为主，低沉画面以咖啡色为主。</span></p><p>　　5、西安韩式婚纱照服装：根本上会挑选韩式的婚纱(垂感好、线条流通)、韩版时尚服饰(色彩清新、样式简略)或古代宫殿韩服(精美讲究)。传统的韩式婚纱主要是腰部会对比特别，乳房束紧，乳房天然下垂，能够遮挡住新娘的身段缺点。而现在遭到工作室喜爱的韩式婚纱礼衣布料对比奢华，婚纱上会镶嵌有珍珠、钻饰，但样式并不杂乱，最佳能带有对比长的拖尾。</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"></span><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><br style=\";padding: 0px\"/><span style=\";padding: 0px;font-size: 8px\"><img alt=\"\\\" src=\"/upload/images/201608/14703834641812.jpg\" style=\"margin: 20px auto;padding: 0px;max-width: 1100px;display: block;width: 800px;height: 612px\"/></span></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><span style=\";padding: 0px;font-size: 8px\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif; line-height: 28px;\"><br/></p><p>　　6、西安韩式婚纱照用光：对光线和对人物表态的描写十分考究。大部分会选用灯布光，而且着重人物脸部的光色以及对人物的脸型的勾勒，着重新娘的外型、脸部立体感和画面的空间感。</p><p>　　近些年来，遭到韩剧的影响，不断增加的人审美观都倾向于韩国，从韩式的食物、服装、言语方法到现在的婚纱摄影都盛行韩式个性了。<br/><br/><br/></p><p>　　西安韩式婚纱照可以更好地为新娘新郎经过摄影婚纱摄影回想那些香甜的回想，让两个人的幸福感变得愈加的甜美永恒，上面是费司摄影的小编为预备摄影的新大家供给的主张!</p><p>　　费司每年为西安及其他地区超过5000对新人提供拍摄服务，拥有专业摄影技术团队、专业造型设计团队和专业后期制作团队，在服务我们致力于品质的双重保障，坚持拍摄全程一对一，坚持包厢专属一对</p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><br/></p><p style=\"margin-top: 0px;margin-bottom: 0px;padding: 0px;font-family: &#39;microsoft yahei&#39;, &#39;Lucida Grande&#39;, &#39;Lucida Sans Unicode&#39;, Helvetica, Arial, Verdana, sans-serif;line-height: 28px;white-space: normal\"><br/></p><p><br/></p>','0','0','0','','0','0','','','1650','','0','','','0','a:8:{i:1;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-1.jpg\";s:3:\"alt\";s:0:\"\";}i:2;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-2.jpg\";s:3:\"alt\";s:0:\"\";}i:3;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-3.jpg\";s:3:\"alt\";s:0:\"\";}i:4;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-4.jpg\";s:3:\"alt\";s:0:\"\";}i:5;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-5.jpg\";s:3:\"alt\";s:0:\"\";}i:6;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-6.jpg\";s:3:\"alt\";s:0:\"\";}i:7;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-7.jpg\";s:3:\"alt\";s:0:\"\";}i:8;a:2:{s:3:\"url\";s:37:\"/upload/images/201304/duotu3101-8.jpg\";s:3:\"alt\";s:0:\"\";}}','','82','116','124','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('16','10','1','新迷尚','','','cmseasy','127','3','','0','0','','0','','','','','3201','2011-11-27 03:30:22','cmseasy','','/upload/images/201304/3201.jpg','1','1','','200','<p>迷恋你的琴声，每一个音符都藏有惊喜</p><p>迷恋你的优雅，每一次微笑都令人心碎</p><p>当迷恋换换沉淀，当激情渐渐平淡</p><p>你的爱与陪伴，将是上苍赐予我最好的礼物</p><p>Crush, every note with surprise Infatuated with your grace, every smile is heartbreaking When infatuated with for a change of precipitation, when the passion is gradually insipid Your love and companionship, will be the god give me the best gift</p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158895902.jpg\" style=\"\" title=\"14708158895902.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158899912.jpg\" style=\"\" title=\"14708158899912.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158895574.jpg\" style=\"\" title=\"14708158895574.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708158896941.jpg\" style=\"\" title=\"14708158896941.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','6298','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('17','10','1','宠爱','','','cmseasy','127','0','','0','0','','0','','','','','3202','2011-11-27 03:30:14','cmseasy','','/upload/images/201304/3202.jpg','1','1','','200','<p>当斯卡拉大剧院的爱情剧目一次次的上演，王子对公主的宠爱依然让人艳羡，在韩国艺匠，模特化身王室的公主，等候着她的勇敢王子来到她的身边。缥缈的蕾丝婚纱配上韩国最火的场景，宛若期待中那梦幻般童话婚礼的高贵王妃。</p><p>When the scala love play again and again, the favor of the prince of the princess still envy letting a person, in Han Guoyi artisan, model incarnate the royal princess, waiting for her brave prince came to her side. Ethereal lace wedding dress with South Korea&#39;s most fire scenario, like looking forward to that dream-like fairy tale wedding in noble princess.</p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708159531856.jpg\" style=\"\" title=\"14708159531856.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708159531370.jpg\" style=\"\" title=\"14708159531370.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708159532430.jpg\" style=\"\" title=\"14708159532430.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708159531029.jpg\" style=\"\" title=\"14708159531029.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','2890','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('18','8','2','ARTIZ STUDIO','','','cmseasy','127','40','','0','0','','1','','','','','3102','2011-11-27 03:32:03','cmseasy','','/upload/images/201304/3102.jpg','1','1','','200','<p>此次新系列由韩国艺匠创始人金龙善老师亲自带领韩国布景团队创作设计，远赴法国圣雷米采风，以心情为主线，以回忆为笔划，以淡奶油色为基调，重构婚照清新淡雅的幻想世界，中韩两地同步发售，我们全面提升每一个细节，ARTIZ STUDIO满足你对婚纱照的极致想象！</p><p><br/></p><p>The new series by Korean set creative team, went to Saint-Rémy of France, and in the mood as the main line, to recall for stroke, is fundamental key with light cream, reconstruct the fantasy world of wedding photos and pure and fresh quietly elegant, China and South Korea have a simultaneous sale, we guarantee every detail, ARTIZ STUDIO to meet on the perfection of photos you imagine!</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081471029.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081471024.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708147102.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081471011.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081471001.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081470996.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081470987.jpg\" style=\"\"/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/147081470982.jpg\" style=\"\"/></p><p><br/></p>','archive/show_pic.html','0','0','','0','0','','','500','','0','','','0','N;','','82','116','124','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('19','10','0','莱珀妮2016','','','cmseasy','127','0','','0','0','','0','','','','','3203','2011-11-27 02:19:39','cmseasy','','/upload/images/201304/3203.jpg','1','1','','200','<p>灵感源于一组瑞士的时尚广告片，融入广告大片具有冲击力的膜等元素，奢侈品的华贵而不失优雅。结合韩式的唯美，堪称婚纱界的“星”时尚。</p><p>Inspired by a group of Swiss fashion ads, advertising big striking membrane elements, such as luxury showily and elegant. Combined with Korean aesthetic, can be called \"star\" fashion wedding dress industry.</p><p><br/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708160166689.jpg\" style=\"\" title=\"14708160166689.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708160162956.jpg\" style=\"\" title=\"14708160162956.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708160162534.jpg\" style=\"\" title=\"14708160162534.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708160167972.jpg\" style=\"\" title=\"14708160167972.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','40500','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('24','8','1','女神系列','','','cmseasy','1','2','','0','0','','0','','','','','3104','2011-11-27 03:31:31','cmseasy','','/upload/images/201304/3104.jpg','1','1','','0','<p>Goddess &nbsp;何为女神？艺匠深信。她是一个永恒而浪漫的梦；当您绽放笑颜时，时间为您凝固；若你遇见她，如寒冷冬日倏忽而至。</p><p>Goddess what is a Goddess? ARTIZ are convinced. She is an eternal and romantic dream; When you smile, time of solidification for you; If you meet her, such as cold winter ephemeral.</p><p><br/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708154288703.jpg\" style=\"\" title=\"14708154288703.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708154288249.jpg\" style=\"\" title=\"14708154288249.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708154283692.jpg\" style=\"\" title=\"14708154283692.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708154287181.jpg\" style=\"\" title=\"14708154287181.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708154289698.jpg\" style=\"\" title=\"14708154289698.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','5620','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('26','7','0','部门主管','','','cmseasy','1','29','#000000','0','0','','0','','','','','7001','2012-08-04 10:06:32','cmseasy','','','1','1','职位详细说明','0','<p>&nbsp;职位详细说明</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','销售部','1','热爱本职工作','2','1','至少2年销售经验','4','20-40','不限','5000-8000','董先生','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('27','10','0','公主日记','','','admin','1','0','','0','0','','0','','','','','3204','2014-10-11 16:10:04','admin','','/upload/images/201304/3204.jpg','1','1','','0','<p>度假中，看了《GONE WITH THE WIND》，SCALETT-O&#39;HARA（斯嘉丽.奥哈拉）那倔强、高傲的性格与全身散发的贵族气质，让全世界男人着迷。看后那文字中描述的场景在脑中久久展现，回国后确定要创作一个系列需要展现女性贵族气场的作品，耗时6个月，完成后取名叫THE PRINCESS DIARLIES 公主日记</p><p>Holiday, saw \"GONE WITH THE WIND\", SCALETT - O &#39;HARA (scarlett O &#39;hara.) THE stubborn, arrogant character and whole body sends out THE aristocratic temperament, let THE world crazy man. After watching THE scenario described in THE text in mind for a long time, after returning to create a series of works shows THE woman&#39;s noble aura, take six months, named after THE completion of THE PRINCESS DIARLIES PRINCESS diaries</p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708161023955.jpg\" style=\"\" title=\"14708161023955.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708161039922.jpg\" style=\"\" title=\"14708161039922.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708161031183.jpg\" style=\"\" title=\"14708161031183.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708161031064.jpg\" style=\"\" title=\"14708161031064.jpg\"/></p><p style=\"text-align: center\"><img src=\"/upload/images/201608/14708161031303.jpg\" style=\"\" title=\"14708161031303.jpg\"/></p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('32','12','0','《速度与激情》 宝马M3、保时捷赛车吵醒居民','','','admin','1','0','','0','0','','0','','','','','3301','2014-10-11 16:17:20','admin','','/upload/images/201304/3301.jpg','1','1','分析过度优化会导致不好的后果\r\n   1、上网站的疑问、描绘不要过多堆砌关头词。良多站长在标题里和描绘里写量的环节词，并且为了省劲通常会把标题和描绘一样，这是大忌。标题写3到5个纽带词，描绘里写100个字符，里面嵌入标题的关键词就可以了，没需要把要做的一切的关键字都一股脑儿的塞进去，这不单对SEO搜索引擎不友好，即是对用户而言，用户体会极差。 \r\n   2、文章内容里塞关键字。网站编纂为了省劲，很难写原创文章，可是又不得不环绕着政策关键字，所以强行把关键字塞进文章里，读着很是欠亨顺，这不光是对蜘蛛不友好，对用户而言也是不友好的。文章内容应该真恰是有用户认可，才干真实注重到你的关键字。 \r\n   3、图像title和alt特点堆砌关键字。站长在给这些图像加title和alt特点为了省劲，图简略，爽性把一切的图像title和alt特点里堆上关键字，尽管可以增加关键字密度，但蜘蛛并不吃这一套。 \r\n   4、网站的次导航建立不合理。次导航确实被许多搜索引擎优化人员所正视，然则许多人就仅仅简略的把关键字聚积到底部，没有排序。其实排序长短常首要的，意图关键字的排序依照热度来合理枚举才是优化的精采习气。 \r\n   5、网站沟通的友情连接的过多且凌乱。许多增加的友情连接根柢和网站不相关，这样的友情连接又有多大的含义呢?并且有的增加友情连接也没有对方是不是加了签?是不是导出来连接过多?还有对方pr值若何?可以自个网站带来若干很多pr值?所以在交流连接时必然要权衡一下，再进行连接交流。 \r\n   6、网站主页过量堆积关键字密度。为了把方针关键字做上去，许多站长在网站主页板框里很多再三关键字，致使关键字密度大得离谱，通常一个网站的关键字密度在2%~8%之间，可是为了让蜘蛛非常好的抓取你的网站关键字，就会加大网站关键字密度的构造。一不留心关键字密渡过大堆积就会形成优化过度，致使网站降权，乃至K站。所以在进行网站优化时一定要合理的采用操作网站关键字的密度。','0','<p>分析过度优化会导致不好的后果</p>\r\n<div>&nbsp; &nbsp;1、上网站的疑问、描绘不要过多堆砌关头词。良多站长在标题里和描绘里写量的环节词，并且为了省劲通常会把标题和描绘一样，这是大忌。标题写3到5个纽带词，描绘里写100个字符，里面嵌入标题的关键词就可以了，没需要把要做的一切的关键字都一股脑儿的塞进去，这不单对SEO搜索引擎不友好，即是对用户而言，用户体会极差。&nbsp;</div>\r\n<div>&nbsp; &nbsp;2、文章内容里塞关键字。网站编纂为了省劲，很难写原创文章，可是又不得不环绕着政策关键字，所以强行把关键字塞进文章里，读着很是欠亨顺，这不光是对蜘蛛不友好，对用户而言也是不友好的。文章内容应该真恰是有用户认可，才干真实注重到你的关键字。&nbsp;</div>\r\n<div>&nbsp; &nbsp;3、图像title和alt特点堆砌关键字。站长在给这些图像加title和alt特点为了省劲，图简略，爽性把一切的图像title和alt特点里堆上关键字，尽管可以增加关键字密度，但蜘蛛并不吃这一套。&nbsp;</div>\r\n<div>&nbsp; &nbsp;4、网站的次导航建立不合理。次导航确实被许多搜索引擎优化人员所正视，然则许多人就仅仅简略的把关键字聚积到底部，没有排序。其实排序长短常首要的，意图关键字的排序依照热度来合理枚举才是优化的精采习气。&nbsp;</div>\r\n<div>&nbsp; &nbsp;5、网站沟通的友情连接的过多且凌乱。许多增加的友情连接根柢和网站不相关，这样的友情连接又有多大的含义呢?并且有的增加友情连接也没有对方是不是加了签?是不是导出来连接过多?还有对方pr值若何?可以自个网站带来若干很多pr值?所以在交流连接时必然要权衡一下，再进行连接交流。&nbsp;</div>\r\n<div>&nbsp; &nbsp;6、网站主页过量堆积关键字密度。为了把方针关键字做上去，许多站长在网站主页板框里很多再三关键字，致使关键字密度大得离谱，通常一个网站的关键字密度在2%~8%之间，可是为了让蜘蛛非常好的抓取你的网站关键字，就会加大网站关键字密度的构造。一不留心关键字密渡过大堆积就会形成优化过度，致使网站降权，乃至K站。所以在进行网站优化时一定要合理的采用操作网站关键字的密度。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('37','13','0','拍的好新娘简单步入三大雷区','','','admin','1','0','','0','0','','0','','','','','2106','2014-10-11 16:25:59','admin','','/upload/images/201304/2106.jpg','1','1','　　分析过度优化会导致不好的后果、上网站的疑问、描绘不要过多堆砌关头词。良多站长在标题里和描绘里写量的环节词，并且为了省劲通常会把标题和描绘一样，这是大忌。标题写3到5个纽带词，描绘里写100个字符，里面嵌入标题的关键词就可以了，没需要把要做的一切的关键字都一股脑儿的塞进去，这不单对SEO搜索引擎不友好，即是对用户而言，用户体会极差。\r\n　　、文章内容里塞关键字。网站编纂为了省劲，很难写原创文章，可是又不得不环绕着政策关键字，所以强行把关键字塞进文章里，读着很是欠亨顺，这不光是对蜘蛛不友好，对用户而言也是不友好的。文章内容应该真恰是有用户认可，才干真实注重到你的关键字。\r\n　　、图像title和alt特点堆砌关键字。站长在给这些图像加title和alt特点为了省劲，图简略，爽性把一切的图像title和alt特点里堆上关键字，尽管可以增加关键字密度，但蜘蛛并不吃这一套。\r\n　　、网站的次导航建立不合理。次导航确实被许多搜索引擎优化人员所正视，然则许多人就仅仅简略的把关键字聚积到底部，没有排序。其实排序长短常首要的，意图关键字的排序依照热度来合理枚举才是优化的精采习气。\r\n　　、网站沟通的友情连接的过多且凌乱。许多增加的友情连接根柢和网站不相关，这样的友情连接又有多大的含义呢?并且有的增加友情连接也没有对方是不是加了签?是不是导出来连接过多?还有对方pr值若何?可以自个网站带来若干很多pr值?所以在交流连接时必然要权衡一下，再进行连接交流。\r\n　　、网站主页过量堆积关键字密度。为了把方针关键字做上去，许多站长在网站主页板框里很多再三关键字，致使关键字密度大得离谱，通常一个网站的关键字密度在2%~8%之间，可是为了让蜘蛛非常好的抓取你的网站关键字，就会加大网站关键字密度的构造。一不留心关键字密渡过大堆积就会形成优化过度，致使网站降权，乃至K站。所以在进行网站优化时一定要合理的采用操作网站关键字的密度。','0','<p>&nbsp;　　分析过度优化会导致不好的后果、上网站的疑问、描绘不要过多堆砌关头词。良多站长在标题里和描绘里写量的环节词，并且为了省劲通常会把标题和描绘一样，这是大忌。标题写3到5个纽带词，描绘里写100个字符，里面嵌入标题的关键词就可以了，没需要把要做的一切的关键字都一股脑儿的塞进去，这不单对SEO搜索引擎不友好，即是对用户而言，用户体会极差。</p><div>　　、文章内容里塞关键字。网站编纂为了省劲，很难写原创文章，可是又不得不环绕着政策关键字，所以强行把关键字塞进文章里，读着很是欠亨顺，这不光是对蜘蛛不友好，对用户而言也是不友好的。文章内容应该真恰是有用户认可，才干真实注重到你的关键字。</div><div>　　、图像title和alt特点堆砌关键字。站长在给这些图像加title和alt特点为了省劲，图简略，爽性把一切的图像title和alt特点里堆上关键字，尽管可以增加关键字密度，但蜘蛛并不吃这一套。</div><div>　　、网站的次导航建立不合理。次导航确实被许多搜索引擎优化人员所正视，然则许多人就仅仅简略的把关键字聚积到底部，没有排序。其实排序长短常首要的，意图关键字的排序依照热度来合理枚举才是优化的精采习气。</div><div>　　、网站沟通的友情连接的过多且凌乱。许多增加的友情连接根柢和网站不相关，这样的友情连接又有多大的含义呢?并且有的增加友情连接也没有对方是不是加了签?是不是导出来连接过多?还有对方pr值若何?可以自个网站带来若干很多pr值?所以在交流连接时必然要权衡一下，再进行连接交流。</div><div>　　、网站主页过量堆积关键字密度。为了把方针关键字做上去，许多站长在网站主页板框里很多再三关键字，致使关键字密度大得离谱，通常一个网站的关键字密度在2%~8%之间，可是为了让蜘蛛非常好的抓取你的网站关键字，就会加大网站关键字密度的构造。一不留心关键字密渡过大堆积就会形成优化过度，致使网站降权，乃至K站。所以在进行网站优化时一定要合理的采用操作网站关键字的密度。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('39','13','0','乌拉草床垫的优缺点','','','admin','1','0','','0','0','','0','','','','','2108','2014-10-11 16:31:46','admin','','/upload/images/201304/2108.jpg','1','1','对于我们优化人员来说，在每一个网站建设之初我们都在想我们的网站在优化竞争中赢在起跑线上。为此在建站之初，网站的结构是否有利于我们的优化是我们不得不考虑的一件重要的事情。对于一个好的网站结构来说，它不仅可以对你的排名起到很好的促进作用，对于你的投资回报率提高来说也有很好的作用。如果你的站点有一个用关键词构架的优化结构的话，那么对于你的优化来说将起到事半功倍的效果。我们可以将关键词区分为主关键词、次关键词和长尾关键词，这三种都有各自的优势，那么本文将围绕着这三种关键词阐述如何构建你的站点的优化结构，来使你的站点获得更高的排名和点击率，达到利益的最大化。\r\n　　一：主关键词构建站点的优化结构的第一步就是设置主关键词，我们可以将我们的主要关键词置于站点的标题信息中，当然我们也可以将主要的关键词分布于其他站点的基本信息中。主关键词的设置相对比较简单，笔者就不详细的介绍。\r\n　　二：次要关键词对于一个站点来说，第二个重要的组成部分就是次要关键词。次要关键词相对于主要关键词在优化的难度上会相对较低。我们在构架网站的优化结构的时候，可以将网站的次要关键词设置为站点的分类目录。我们这样做的目的是更好的利用链接的权重。你的站点内容都有链接到各自的目录分类。而这些目录分类又会链接到有着主关键词的主页页面。这一个看似简单的过程却可以很好的提高你的站点的排名，而且也可以使含有主关键词的主页权重更加的高，成为焦点。当然分类目录的数量也要有所控制，笔者建议分类目录的数量最好不要超过8个，对于一些站点分类比较多的话，你可以尝试着使用子类别。\r\n　　三：长尾关键词站点优化结构构建的第三步就是长尾关键词的使用，长尾关键词相对于主关键词和次要关键词来说，优化的难度最小，但是流量比较低，而且存在着不确定的因素。对于长尾关键词你可以在站点的内容中利用。你的站点内容可以影响到你的主关键词、次关键词，当然也包括长尾关键词。对于这方面可以在站点上发布尽可能多的内容，并保持内容的高质量以及内容的相关性和与分类目录的联系。这样才能达到最好的效果。\r\n　　如何让自己的站点赢在起跑线上，是每一优化人员都在苦心琢磨的问题，但其实从最基本的网站的构架就可以有很大的作用，希望本文对大家有所帮助。','0','<p>对于我们优化人员来说，在每一个网站建设之初我们都在想我们的网站在优化竞争中赢在起跑线上。为此在建站之初，网站的结构是否有利于我们的优化是我们不得不考虑的一件重要的事情。对于一个好的网站结构来说，它不仅可以对你的排名起到很好的促进作用，对于你的投资回报率提高来说也有很好的作用。如果你的站点有一个用关键词构架的优化结构的话，那么对于你的优化来说将起到事半功倍的效果。我们可以将关键词区分为主关键词、次关键词和长尾关键词，这三种都有各自的优势，那么本文将围绕着这三种关键词阐述如何构建你的站点的优化结构，来使你的站点获得更高的排名和点击率，达到利益的最大化。</p><div>　　一：主关键词构建站点的优化结构的第一步就是设置主关键词，我们可以将我们的主要关键词置于站点的标题信息中，当然我们也可以将主要的关键词分布于其他站点的基本信息中。主关键词的设置相对比较简单，笔者就不详细的介绍。</div><div>　　二：次要关键词对于一个站点来说，第二个重要的组成部分就是次要关键词。次要关键词相对于主要关键词在优化的难度上会相对较低。我们在构架网站的优化结构的时候，可以将网站的次要关键词设置为站点的分类目录。我们这样做的目的是更好的利用链接的权重。你的站点内容都有链接到各自的目录分类。而这些目录分类又会链接到有着主关键词的主页页面。这一个看似简单的过程却可以很好的提高你的站点的排名，而且也可以使含有主关键词的主页权重更加的高，成为焦点。当然分类目录的数量也要有所控制，笔者建议分类目录的数量最好不要超过8个，对于一些站点分类比较多的话，你可以尝试着使用子类别。</div><div>　　三：长尾关键词站点优化结构构建的第三步就是长尾关键词的使用，长尾关键词相对于主关键词和次要关键词来说，优化的难度最小，但是流量比较低，而且存在着不确定的因素。对于长尾关键词你可以在站点的内容中利用。你的站点内容可以影响到你的主关键词、次关键词，当然也包括长尾关键词。对于这方面可以在站点上发布尽可能多的内容，并保持内容的高质量以及内容的相关性和与分类目录的联系。这样才能达到最好的效果。</div><div>　　如何让自己的站点赢在起跑线上，是每一优化人员都在苦心琢磨的问题，但其实从最基本的网站的构架就可以有很大的作用，希望本文对大家有所帮助。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('40','14','0','婚纱摄影店哪家好费司摄影，您的私人定制','','','admin','1','6','','0','0','','0','','','','','2201','2014-10-11 16:32:42','admin','','/upload/images/201304/2201.jpg','1','1','日前，“首届米兰中华美食文化节”在米兰开幕。专程从中国赶赴米兰参加首届米兰中华美食文化节的“中国美食走进联合国”厨师团的名厨们纷纷亮出了自己的拿手绝活。\r\n\r\n在首届米兰中华美食文化节上，“中国美食走进联合国”厨师团的名厨们精心烹制的美味佳肴仿佛是一件件精美的艺术品，令人叹为观止，不仅为中华美食文化节增添光彩，也让现场的中意宾客大饱眼福，惊叹中华美食的博大精深，连连惊呼大师们的高超绝技。\r\n厨师团的厨师们和意大利宾客合影。','0','<p>日前，“首届米兰中华美食文化节”在米兰开幕。专程从中国赶赴米兰参加首届米兰中华美食文化节的“中国美食走进联合国”厨师团的名厨们纷纷亮出了自己的拿手绝活。</p><p><br/></p><p>在首届米兰中华美食文化节上，“中国美食走进联合国”厨师团的名厨们精心烹制的美味佳肴仿佛是一件件精美的艺术品，令人叹为观止，不仅为中华美食文化节增添光彩，也让现场的中意宾客大饱眼福，惊叹中华美食的博大精深，连连惊呼大师们的高超绝技。</p><p><br/></p><p>厨师团的厨师们和意大利宾客合影。</p><p><br/></p><p style=\"text-align:center\"><img src=\"/upload/images/201607/14696041541018.jpg\" title=\"14696041541018.jpg\" alt=\"header.jpg\"/></p><p>在随后举行的首届米兰中华美食文化节新闻发布会上，米兰华侨华人工商会秘书长周建煌、高炳义大师，意大利名厨Eros Picco，意大利第一位华人侍酒师叶刘洁先后就中华美食今后在欧洲的发展创新，中华美食的源远流长以及意大利餐与中餐的相互借鉴，意大利红酒文化与中餐的巧妙互融发表了各自的建言。(夏晓彤)</p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('41','14','0','客厅装修中的风水问题注意事项','','','admin','1','0','','0','0','','0','','','','','2202','2014-10-11 16:33:35','admin','','/upload/images/201304/2202.jpg','1','1','对于网站SEO健康度，前面已经为大家谈到三个方面《快速提升网站SEO健康度一：网站内容健康》《快速提升网站SEO健康度二：网站硬件健康》《快速提升网站SEO健康度三：网站内链健康》，对于网站的SEO健康其实还有很多，而对于关键词的重视程度相信大家也是有相当的认识，今天我要为大家介绍的就是网站关键词的选取与布局。\r\n　　网站的关键词是非常关键的，我们在做SEO的时候对于关键词有两个要注意的，一个就是选取，选取关键词要选取对的关键词，选取适合自己实力，自己能搞定，还要注意这些关键词的效果;另外一个就是布局，布局要根据权重高低原则进行，另外要注意自然性，广泛性，长尾关键词是一个重要的方面。下面从两个方面为大家做一个简单的分析。\r\n　　1、网站关键词的选取健康对于关键词的选取，前面我们已经跟大家做了一个简单的介绍，其实关键词的选取很简单，只需要做到下面的几个方面即可：\r\n　　A、首先我们要看行业的关键词是否适合我们做，例如我们是做SEO的，但是你的实力没有那么大，肯定就不能面向全国做的，我们可以根据自己所在的地区进行选择，在北京就可以选择北京SEO，如果觉得北京SEO比较难做，而我又是湖北人，那么我也可以选择武汉SEO，这里我要说的就是根据自己的实力选择，盲目的选择一个超越自己实力的关键词，不仅仅难以优化，而且还对自己的信心造成伤害。\r\n　　当然根据能力选择只是网站关键词选取是否适合的一个方面，有的行业词太大，能够分出来的长尾词和辅助词特别多，有的甚至延伸到不同的行业去了，这时候就要注意选取，不要可以去做行业词，选取长尾词优化更好，例如我有位朋友是做“印花”的，但是长尾词中有“印花税”这样完全不是行业里的词，那做好印花都有可能造成很大的损失，而且他目前的业务只面向义乌，那么他肯定需要选择长尾词做优化，如义乌印花，义乌印花厂等。\r\n　　B、其次我们选取关键词的时候需要注意衡量这个关键词的价值。之前优化过很多的案例，有些关键词是很热的，做起来也相当的吃力，当然做到第一之后的效果是相当给力的，这样的关键词价值很高的，当然值得去选取，但是开始的时候我们是分辨不了的，这个时候就需要借助工具，例如百度指数，百度的相关搜索，还有站长伯乐，爱站等挖掘长尾词的工具，只要我们能分辨难度大小和价值就可以了。一般来说，我们搜索一个词，百度竞价越多，这个词的价值就越高，当然难度也就有点大了。另外，我们要挖掘一些能带来精准客户的长尾词，这些词虽然一天就几个搜索量，但是有时候来了就可以发展成客户。\r\n　　2、网站关键词的布局健康对于关键词的布局其实我之前都没有好的系统的想法，一直都是按照自己随性的设置，今天为了这篇文章做了一个简单的整理。\r\n　　A、布局首先要考虑关键词所在位置的权重。\r\n　　第一就是网站的标签。在标题标签里的权重当然会非常高，关键词标签和描述标签紧接着，其次一个页面我们权重最高的应该是H1标签，在这个标签里面我们要设置一些需要优化的关键词，接下来就是H2-H6，一些锚文本加粗的关键词位置权重也算不错。\r\n　　第二点就是网站的导航和次导航。一般来说导航里面插入一些关键词，或者说利用不同的关键词做导航会提升这个关键词的权重，因为这些导航链接链向的页面都是和这个关键词相关的知识，相关性得到了很好的保证。例如我们是卖秋装的，在导航里面假如秋装，就会导向所有秋装所在列表页面，用户就会在这个页面找到自己想要的秋装。\r\n　　第三，一般在一个页面的首部和尾部都是权重比较高的，所以需要在这些地方多布局一些关键词，让关键词在重要的位置多表现，权重自然提升了。\r\n　　B、关键词布局的三性：自然性，广泛性，长尾性。\r\n　　关键词在网站内部出现的时候一定要注意自然合理，特别是那些读起来都不通顺的，那就很不友好了，广泛性指的是我们要在网站的每个角落都注意设定一些关键词，特别是对于一些长尾关键词，需要做锚文本的就要做上，权重就在这样一点一滴中积累起来的，另外需要注意关键词布局的长尾性，越多的长尾我们能够引导的流量可能就越多，潜在的意向客户就会越多，所以长尾绝对需要重视，特别是我们每天进行网站更新的时候就需要注意在文章中进行长尾关键词建设，一般我都是利用网站标题优化长尾词，这样权重高，优化的排名也会很好。\r\n','0','<p>对于网站SEO健康度，前面已经为大家谈到三个方面《快速提升网站SEO健康度一：网站内容健康》《快速提升网站SEO健康度二：网站硬件健康》《快速提升网站SEO健康度三：网站内链健康》，对于网站的SEO健康其实还有很多，而对于关键词的重视程度相信大家也是有相当的认识，今天我要为大家介绍的就是网站关键词的选取与布局。</p><div>　　网站的关键词是非常关键的，我们在做SEO的时候对于关键词有两个要注意的，一个就是选取，选取关键词要选取对的关键词，选取适合自己实力，自己能搞定，还要注意这些关键词的效果;另外一个就是布局，布局要根据权重高低原则进行，另外要注意自然性，广泛性，长尾关键词是一个重要的方面。下面从两个方面为大家做一个简单的分析。</div><div>　　1、网站关键词的选取健康对于关键词的选取，前面我们已经跟大家做了一个简单的介绍，其实关键词的选取很简单，只需要做到下面的几个方面即可：</div><div>　　A、首先我们要看行业的关键词是否适合我们做，例如我们是做SEO的，但是你的实力没有那么大，肯定就不能面向全国做的，我们可以根据自己所在的地区进行选择，在北京就可以选择北京SEO，如果觉得北京SEO比较难做，而我又是湖北人，那么我也可以选择武汉SEO，这里我要说的就是根据自己的实力选择，盲目的选择一个超越自己实力的关键词，不仅仅难以优化，而且还对自己的信心造成伤害。</div><div>　　当然根据能力选择只是网站关键词选取是否适合的一个方面，有的行业词太大，能够分出来的长尾词和辅助词特别多，有的甚至延伸到不同的行业去了，这时候就要注意选取，不要可以去做行业词，选取长尾词优化更好，例如我有位朋友是做&ldquo;印花&rdquo;的，但是长尾词中有&ldquo;印花税&rdquo;这样完全不是行业里的词，那做好印花都有可能造成很大的损失，而且他目前的业务只面向义乌，那么他肯定需要选择长尾词做优化，如义乌印花，义乌印花厂等。</div><div>　　B、其次我们选取关键词的时候需要注意衡量这个关键词的价值。之前优化过很多的案例，有些关键词是很热的，做起来也相当的吃力，当然做到第一之后的效果是相当给力的，这样的关键词价值很高的，当然值得去选取，但是开始的时候我们是分辨不了的，这个时候就需要借助工具，例如百度指数，百度的相关搜索，还有站长伯乐，爱站等挖掘长尾词的工具，只要我们能分辨难度大小和价值就可以了。一般来说，我们搜索一个词，百度竞价越多，这个词的价值就越高，当然难度也就有点大了。另外，我们要挖掘一些能带来精准客户的长尾词，这些词虽然一天就几个搜索量，但是有时候来了就可以发展成客户。</div><div>　　2、网站关键词的布局健康对于关键词的布局其实我之前都没有好的系统的想法，一直都是按照自己随性的设置，今天为了这篇文章做了一个简单的整理。</div><div>　　A、布局首先要考虑关键词所在位置的权重。</div><div>　　第一就是网站的标签。在标题标签里的权重当然会非常高，关键词标签和描述标签紧接着，其次一个页面我们权重最高的应该是H1标签，在这个标签里面我们要设置一些需要优化的关键词，接下来就是H2-H6，一些锚文本加粗的关键词位置权重也算不错。</div><div>　　第二点就是网站的导航和次导航。一般来说导航里面插入一些关键词，或者说利用不同的关键词做导航会提升这个关键词的权重，因为这些导航链接链向的页面都是和这个关键词相关的知识，相关性得到了很好的保证。例如我们是卖秋装的，在导航里面假如秋装，就会导向所有秋装所在列表页面，用户就会在这个页面找到自己想要的秋装。</div><div>　　第三，一般在一个页面的首部和尾部都是权重比较高的，所以需要在这些地方多布局一些关键词，让关键词在重要的位置多表现，权重自然提升了。</div><div>　　B、关键词布局的三性：自然性，广泛性，长尾性。</div><div>　　关键词在网站内部出现的时候一定要注意自然合理，特别是那些读起来都不通顺的，那就很不友好了，广泛性指的是我们要在网站的每个角落都注意设定一些关键词，特别是对于一些长尾关键词，需要做锚文本的就要做上，权重就在这样一点一滴中积累起来的，另外需要注意关键词布局的长尾性，越多的长尾我们能够引导的流量可能就越多，潜在的意向客户就会越多，所以长尾绝对需要重视，特别是我们每天进行网站更新的时候就需要注意在文章中进行长尾关键词建设，一般我都是利用网站标题优化长尾词，这样权重高，优化的排名也会很好。</div><div>&nbsp;</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('42','14','0','婚纱影楼有哪些告诉你拍好婚纱照的8大要素','','','admin','1','0','','0','0','','0','','','','','2203','2014-10-11 16:35:09','admin','','/upload/images/201304/2203.jpg','1','1','分享四大注意点可避免网站优化过度第一点、关键字切勿堆砌过度在优化网站前就要确定好需要优化的关键字，然后再title、网站全体页面上进行恰当的组织，而不是盲目的堆砌许多关键字。这儿关于关键字在网站页面上的方案有个小窍门，那就是：保证优化关键字出现在第一个语句傍边，这个正是搜索引擎在抓取页面的时分所垂青并显示出来的。\r\n　　第二点、恰当的更新网站内容许多站长兄弟都用过信息收集器来给自个的网站添加内容，本来这点不是一个十分正确的做法。首要，搜索引擎不会喜爱重复性的东西，其次，收集的信息尽管多， 可是也缺罕见用的针对性，简略致使网站关键字密度的稀释。真实的做法是，恰当的更新一些有价值，互联网上罕见的内容。只需这样，不论是搜索引擎，用户，还 是自个，都大快人心。\r\n　　第三点、切勿收买过多的外链这点在新站傍边恰当普片，本来这样对网站是弊大于利的。搜索引擎十分喜爱新内容，新网站的参加，而这个新字要表现在哪？无非就是在互联网上没有这个站点的 任何痕迹，假定新站前期收买许多的外链，网站外链俄然暴增，尽管能够添加网站的权重，可是关于搜索引擎就不太友好了，会引起搜索引擎的怀疑。\r\n　　第四点、请不要过火相信你的技能有些兄弟技能很牛X，会运用一些窍门强制性的添加外链或是添加用户的到访（这点跟收买黑链殊途同归），这样尽管会在短时间内给网站带来流量，可是这样为了 优化而优化的心态是永久也留不住客户的，用户体会度欠好，乃至是欺骗了用户，下一次用户就不会买你的帐，而搜索引擎最注重的是什么？当然是用户的体会，如 果你开脱了它的天主，那么它一定也是不会让你好过的。','0','<p>分享四大注意点可避免网站优化过度第一点、关键字切勿堆砌过度在优化网站前就要确定好需要优化的关键字，然后再title、网站全体页面上进行恰当的组织，而不是盲目的堆砌许多关键字。这儿关于关键字在网站页面上的方案有个小窍门，那就是：保证优化关键字出现在第一个语句傍边，这个正是搜索引擎在抓取页面的时分所垂青并显示出来的。</p><div>　　第二点、恰当的更新网站内容许多站长兄弟都用过信息收集器来给自个的网站添加内容，本来这点不是一个十分正确的做法。首要，搜索引擎不会喜爱重复性的东西，其次，收集的信息尽管多， 可是也缺罕见用的针对性，简略致使网站关键字密度的稀释。真实的做法是，恰当的更新一些有价值，互联网上罕见的内容。只需这样，不论是搜索引擎，用户，还 是自个，都大快人心。</div><div>　　第三点、切勿收买过多的外链这点在新站傍边恰当普片，本来这样对网站是弊大于利的。搜索引擎十分喜爱新内容，新网站的参加，而这个新字要表现在哪？无非就是在互联网上没有这个站点的 任何痕迹，假定新站前期收买许多的外链，网站外链俄然暴增，尽管能够添加网站的权重，可是关于搜索引擎就不太友好了，会引起搜索引擎的怀疑。</div><div>　　第四点、请不要过火相信你的技能有些兄弟技能很牛X，会运用一些窍门强制性的添加外链或是添加用户的到访（这点跟收买黑链殊途同归），这样尽管会在短时间内给网站带来流量，可是这样为了 优化而优化的心态是永久也留不住客户的，用户体会度欠好，乃至是欺骗了用户，下一次用户就不会买你的帐，而搜索引擎最注重的是什么？当然是用户的体会，如 果你开脱了它的天主，那么它一定也是不会让你好过的。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('46','14','0','中式风格起源及发展','','','admin','1','0','','0','0','','0','','','','','2206','2014-10-11 16:40:02','admin','','/upload/images/201304/2206.jpg','1','1','一、避免友链牵连赏罚。友情链接作为较高质量外链的一种，在传递权重上的能力决然是要高于其他链接的。因为年夜部门友链交流城市选用链接锚文本的形式，所以对方针关头词排名排名的影响也是相当大的。当然，由于友情链接的这种特点，在传递责罚时，也会起到较大的影响。\r\n　　若是与你交换友链的上网站惨遭惩罚，只要友链还在，那你必然受牵连。一向兢兢业业的你也就会被SEO搜索引擎牵连惩罚，从而导致百度引擎快照不更新的情形。按期搜检你的友情链接，发现问题实时与对方联系、沟通、措置。\r\n　　二、网站切莫频仍改版。\r\n　　这点搜罗网站的title、及网站的结构代码。当你确立网站的title、信息与架构、主题时要稳重。一旦确立尽可能的不要更改，即使要改，也要慢慢逐步的改削。不到万不得已，万万不要一次性大改版。\r\n　　一个频繁更改网站信息及架构的网站，百度会认为你还没有筹备好，会把你再次丢进.考查期.。更有甚者，直接k站。如斯一来，网站的百度快照又若何更新三、远离化手法。\r\n　　化就是俗称的.作弊.，诸如堆砌环节字、潜匿链接、桥页等等等等。这些化手段都是经由过程.棍骗.搜索引擎或用户，来达到提高枢纽词排名的目的。百度和谷歌等搜索引擎都是峻厉冲击这些化行为的。小到.百度11位.，大到降权甚至k站。假如你揭竿而起，视搜索引擎为无物。那么，搜索引擎就不会对你手下留情。而网站的快照也就很有可能遏制更新或者倒退。不外对于k站来说，快照不更新倒只是小时而已。\r\n　　四、保证空间的不变性。\r\n　　一个经常宕机的处事器，就别想奢望获得搜索引擎的青睐，更别想快照更新的勤快。试想一下，百度蜘蛛经常爬到你的网站，却时常遭到无法打开的情况。那么，百度如何抓取网站的新内容，又如何更新快照五、坚持内容页面的更新。\r\n　　笔者的不雅概念是，即使搜索引擎蜘蛛经常爬到你的网站，可是如果没有新的内容让它抓取，百度快照也就没有了更新可言。所以，你想要网站的快照更新的勤快，那么，网站的内容及页面也要更新的勤快。\r\n　　不过，复制粘贴的内容笔者劝列位仍是越少越好。蜘蛛见异思迁，巨匠都是知道的。如果你持久的复制粘贴，不仅不能吸引蜘蛛更新网站的快照，反而还会遭到蜘蛛的厌弃。青岛沙盘模子?六、坚持培植外链。\r\n　　网站的外链建设与内容更新都是一样需要持续性去做的事，千万不成三天打鱼两天晒网。可以这么说，拿小我博客来说，相对信息量比其他站要小的多。你可以3天更新一篇文章，切莫一天不增添外链。拥有复杂的外链系统，才能更多的指导蜘蛛爬向你的网站。然后抓取新的内容，是以更新百度快照。\r\n　　还有，新站在做外链的时辰，千万不要想着一顿吃成胖子。建站初期，天天建设外链的数目可以少一点，逐步增加。然则，切记要坚持，','0','<p>&nbsp;　　一、避免友链牵连赏罚。</p><p>　　友情链接作为较高质量外链的一种，在传递权重上的能力决然是要高于其他链接的。因为年夜部门友链交流城市选用链接锚文本的形式，所以对方针关头词排名排名的影响也是相当大的。当然，由于友情链接的这种特点，在传递责罚时，也会起到较大的影响。</p><p>　　若是与你交换友链的上网站惨遭惩罚，只要友链还在，那你必然受牵连。一向兢兢业业的你也就会被SEO搜索引擎牵连惩罚，从而导致百度引擎快照不更新的情形。按期搜检你的友情链接，发现问题实时与对方联系、沟通、措置。</p><p>　　二、网站切莫频仍改版。</p><p>　　这点搜罗网站的title、及网站的结构代码。当你确立网站的title、信息与架构、主题时要稳重。一旦确立尽可能的不要更改，即使要改，也要慢慢逐步的改削。不到万不得已，万万不要一次性大改版。</p><p>　　一个频繁更改网站信息及架构的网站，百度会认为你还没有筹备好，会把你再次丢进.考查期.。更有甚者，直接k站。如斯一来，网站的百度快照又若何更新三、远离化手法。</p><p>　　化就是俗称的.作弊.，诸如堆砌环节字、潜匿链接、桥页等等等等。这些化手段都是经由过程.棍骗.搜索引擎或用户，来达到提高枢纽词排名的目的。百度和谷歌等搜索引擎都是峻厉冲击这些化行为的。小到.百度11位.，大到降权甚至k站。假如你揭竿而起，视搜索引擎为无物。那么，搜索引擎就不会对你手下留情。而网站的快照也就很有可能遏制更新或者倒退。不外对于k站来说，快照不更新倒只是小时而已。</p><p>　　四、保证空间的不变性。</p><p>　　一个经常宕机的处事器，就别想奢望获得搜索引擎的青睐，更别想快照更新的勤快。试想一下，百度蜘蛛经常爬到你的网站，却时常遭到无法打开的情况。那么，百度如何抓取网站的新内容，又如何更新快照五、坚持内容页面的更新。</p><p>　　笔者的不雅概念是，即使搜索引擎蜘蛛经常爬到你的网站，可是如果没有新的内容让它抓取，百度快照也就没有了更新可言。所以，你想要网站的快照更新的勤快，那么，网站的内容及页面也要更新的勤快。</p><p>　　不过，复制粘贴的内容笔者劝列位仍是越少越好。蜘蛛见异思迁，巨匠都是知道的。如果你持久的复制粘贴，不仅不能吸引蜘蛛更新网站的快照，反而还会遭到蜘蛛的厌弃。青岛沙盘模子?六、坚持培植外链。</p><p>　　网站的外链建设与内容更新都是一样需要持续性去做的事，千万不成三天打鱼两天晒网。可以这么说，拿小我博客来说，相对信息量比其他站要小的多。你可以3天更新一篇文章，切莫一天不增添外链。拥有复杂的外链系统，才能更多的指导蜘蛛爬向你的网站。然后抓取新的内容，是以更新百度快照。</p><p>　　还有，新站在做外链的时辰，千万不要想着一顿吃成胖子。建站初期，天天建设外链的数目可以少一点，逐步增加。然则，切记要坚持，</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('44','14','0','影楼哪家好告诉你90后婚纱照有哪些风格?','','','admin','1','0','','0','0','','0','','','','','2204','2014-10-11 16:37:42','admin','','/upload/images/201304/2204.jpg','1','1','1.策划(职称炒作实在说的难听逆耳小半便是炒作，说的业余小半那便是策划。一度好的疑难以及好的情势可以给用户带来反感度以及退步转发、共享率!那样我们要若何敷衍外链情势制止策划呢?童鞋们大概许都看过电视机大要一些带有往事素质的作品，而这类作品都是颠末历程策划职员细致策划的，是以他们的造访量都及高而且用户都非常喜好。说点譬如：譬如拿一些名士名站等敷衍于用户体贴的论题制止策划!千万最重要的是没有要涉及侵权梗概没有犯警就行郑州SEO培训2.人脉接洽作为互联网络职业的我们最重要的大概许便是人脉，当我们的人脉会聚到注定的程度时间敷衍于我们前期的事变以及睁开都会失落去较年夜的帮手。当你方才进入某个职业的时间没有人脉，想要别人给你承接，要么你到群里的吆喝着换情谊联接，吆喝半响上去别人看你的上网站没有权重、没有流量根柢就瞧没有起你网站，更没有会给你加联接!不异除了你够亏弱衰弱，你的网站都非常良好，到阿谁时间的你更没有会瞧没有起那些残余站点了。而自个有人脉的话，就可以间接的跟其住口，正常都邑给你加挽联接。\r\n　　3.构思构思跟反面的策划有点近似千篇一律!凭据现在我们的生理判断出，如今的人好奇心都非常强，分外是敷衍一些搞笑的构思、现已好奇的论题都分外锐敏!相似正在优酷里边的构思搞笑视频，若是说你自个可以想要这类视频，尔后正在视频里边加上自个网站的联接!终极通过该署用户看完后一直的给你转发、共享。那样没有可思议终极你的外链会抵达一度怎样办的程度允在增长4.情势某个斗劲我们就特殊非常明白了，但是这笔还是要简练下自个的一些不雅观点共享给童鞋们。做情势最稀有的便是写软文!把一些有价格的货品共享给有需求的人，进而得到转发以及搜集。一同还可以结识到更多的人脉!正常的人写软文都是比较间接的。作者主意写软文的人最佳凭据自个的零丁的体例来制止翻译的策划!让用户正在获取到自个想要的货色一同还能使得心绪变得开畅。那样的软翰墨是顺遂的软文。\r\n　　通过之上四点我们可以鲜明较着的看进去，该署要领完全跟搜刮引擎优化武艺没有搭边的。最次要也还是要陈诉我们我们没有要被搜刮引擎优化给搜刮引擎优化了!要学会跳出搜刮引擎优化某个制约来敷衍待搜刮引擎优化，叫做旁观者清!当你跳出某个制约的时间你才气看到更多你看没有到的货色!更没有要把搜刮引擎优化想的偏激奇妙了!','0','<p>1.策划(职称炒作实在说的难听逆耳小半便是炒作，说的业余小半那便是策划。一度好的疑难以及好的情势可以给用户带来反感度以及退步转发、共享率!那样我们要若何敷衍外链情势制止策划呢?童鞋们大概许都看过电视机大要一些带有往事素质的作品，而这类作品都是颠末历程策划职员细致策划的，是以他们的造访量都及高而且用户都非常喜好。说点譬如：譬如拿一些名士名站等敷衍于用户体贴的论题制止策划!千万最重要的是没有要涉及侵权梗概没有犯警就行郑州SEO培训2.人脉接洽作为互联网络职业的我们最重要的大概许便是人脉，当我们的人脉会聚到注定的程度时间敷衍于我们前期的事变以及睁开都会失落去较年夜的帮手。当你方才进入某个职业的时间没有人脉，想要别人给你承接，要么你到群里的吆喝着换情谊联接，吆喝半响上去别人看你的上网站没有权重、没有流量根柢就瞧没有起你网站，更没有会给你加联接!不异除了你够亏弱衰弱，你的网站都非常良好，到阿谁时间的你更没有会瞧没有起那些残余站点了。而自个有人脉的话，就可以间接的跟其住口，正常都邑给你加挽联接。</p><div>　　3.构思构思跟反面的策划有点近似千篇一律!凭据现在我们的生理判断出，如今的人好奇心都非常强，分外是敷衍一些搞笑的构思、现已好奇的论题都分外锐敏!相似正在优酷里边的构思搞笑视频，若是说你自个可以想要这类视频，尔后正在视频里边加上自个网站的联接!终极通过该署用户看完后一直的给你转发、共享。那样没有可思议终极你的外链会抵达一度怎样办的程度允在增长4.情势某个斗劲我们就特殊非常明白了，但是这笔还是要简练下自个的一些不雅观点共享给童鞋们。做情势最稀有的便是写软文!把一些有价格的货品共享给有需求的人，进而得到转发以及搜集。一同还可以结识到更多的人脉!正常的人写软文都是比较间接的。作者主意写软文的人最佳凭据自个的零丁的体例来制止翻译的策划!让用户正在获取到自个想要的货色一同还能使得心绪变得开畅。那样的软翰墨是顺遂的软文。</div><div>　　通过之上四点我们可以鲜明较着的看进去，该署要领完全跟搜刮引擎优化武艺没有搭边的。最次要也还是要陈诉我们我们没有要被搜刮引擎优化给搜刮引擎优化了!要学会跳出搜刮引擎优化某个制约来敷衍待搜刮引擎优化，叫做旁观者清!当你跳出某个制约的时间你才气看到更多你看没有到的货色!更没有要把搜刮引擎优化想的偏激奇妙了!</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('45','14','0','不良的阳台风水格局如何化解','','','admin','1','0','','0','0','','0','','','','','2205','2014-10-11 16:37:52','admin','','/upload/images/201304/2205.jpg','1','1','权重的盘算要领是什么样的！在搜刮引擎优化词库中，存在一个名词，叫“权重”，权重是网页本身与查询词（以下俗称关键字）之间的干系度盘算。搜刮引擎在用户发送查找指令后，通常是凭据网页权重来举行排序，通常所说的网站权重，可以明白为网站首页的权重值。\r\n　　网页权重的盘算依靠于基础权重、链接权重、用户评价权重三个方面：\r\n　　网页基础权重：重要受到关键字的绝对权重、关键字频率、网页长度（与网页巨细区离开）的影响。\r\n　　1、绝对权重搜刮引擎会对任何一个新的网页赋予一个缺省的权重值（有喜好的朋侪可以相识下TF*IDF算法），WEB尺度化是提升基础权重的紧急因素，一些标签将影响关键字的权重值，终极的基础权重值是这些因素举行相加得到的；2、关键字频率这一因素各人应该都非常清楚了，关键字频率的理论数据为2%-8%。关键字在网页中的位置都市存在一个权重值，对每个位置上的权重举行求和盘算，则可以得到关键字在整个页面的权重值。\r\n　　3、网页长度上面提到的盘算方法都很公平，但假如思量到雷同的关键字出如今差别的网页中，网页的长度越长，那么，关键字可得到的权重值就会越高，以是，某一关键字的权重值在肯定程度上还受网页长度的影响。\r\n　　网页链接权重：重要是内部链接和外部链接。敷衍内部链接来讲，为了公平，搜刮引擎一重般不会给较多的权分值，特殊是一些牢固位置的链接，这些简直有利用搜刮引擎相识整个网站结构，但权重分值一样平常没有运动链接（内容链接）高。\r\n　　敷衍新的网页来讲，搜刮引擎在链接上会优先赐与一个补偿值，如许有助于它得到更多的链接与用户评价。\r\n　　外部链接对网页的影响就像关键字密度一样被各人所存眷，链接笔墨地点页面的权重值、链接位置、链接数目都市在肯定程度上给促进网页链接权重增长。\r\n　　用户评价权重：重要是搜刮引擎对搜刮结果中网页的用户评价盘算。\r\n　　当用户搜刮某一关键字的时间，总是先欣赏搜刮结果的网页标题与择要部门，末了再决定点击本身以为有效的网页，若某个链接固然在返回结果表上出现的位置不太靠前，但被选取点击的次数比力多，于是搜刮引擎应该感慨该链接是比力受接待的，其位置应该往前调。\r\n　　对与如许的评价方法，敷衍谁人排名考前的网页有很大的上风，而且用户并非只存眷搜刮结果第一页，第二页及反面的，也有大概被存眷，那么，在这里，搜刮引擎会对这些链接引入一个补偿值。\r\n　　这里的补偿值是凭据用户点击搜刮结果每页的概率来盘算补偿因子，末了用这个补偿因子与用户评价权重值乘积求和得到。\r\n　　附：百度权重盘算要领在谷歌推出中国市场之后，百度变得是越来越紧急了，百度权重固然不是由百度提出来的，但是却被浩繁的站长所追捧，关于探究百度权重盘算要领，若何进步百度权重，百度权重是什么意思的文章越发是到处都是，本日搜刮引擎优化天空就简单的扥想一下：百度权重的盘算要领：\r\n　　关于站长东西内里百度权重的盘算要领：\r\n　　百度流量在1到100之间的时间百度权重为百度流量在100到500之间百度权重为百度流量在500到1000之间百度权重为1000到5000之间的就是5000到10000就是10000到50000是5万到20万是20万到100是超过100万是网站关键字排名直接可以大概影响百度流量，而百度流量的巨细直接决定了百度权重的巨细（这就是站长东西现在对百度权重的逆向推理要领，以后大概会篡改）特殊阐发：站长东西的权重盘算要领是比力笼统的，只能大抵的看出网站权重，并不精准！百度从未公然其权重盘算要领！\r\n　　百度自身也曾多次阐发：并没有百度权重这么一说，固然为什么会受到这么多搜刮引擎优化er的追捧，自然是有缘故起因的。','0','<p>权重的盘算要领是什么样的！在搜刮引擎优化词库中，存在一个名词，叫&ldquo;权重&rdquo;，权重是网页本身与查询词（以下俗称关键字）之间的干系度盘算。搜刮引擎在用户发送查找指令后，通常是凭据网页权重来举行排序，通常所说的网站权重，可以明白为网站首页的权重值。</p><div>　　网页权重的盘算依靠于基础权重、链接权重、用户评价权重三个方面：</div><div>　　网页基础权重：重要受到关键字的绝对权重、关键字频率、网页长度（与网页巨细区离开）的影响。</div><div>　　1、绝对权重搜刮引擎会对任何一个新的网页赋予一个缺省的权重值（有喜好的朋侪可以相识下TF*IDF算法），WEB尺度化是提升基础权重的紧急因素，一些标签将影响关键字的权重值，终极的基础权重值是这些因素举行相加得到的；2、关键字频率这一因素各人应该都非常清楚了，关键字频率的理论数据为2%-8%。关键字在网页中的位置都市存在一个权重值，对每个位置上的权重举行求和盘算，则可以得到关键字在整个页面的权重值。</div><div>　　3、网页长度上面提到的盘算方法都很公平，但假如思量到雷同的关键字出如今差别的网页中，网页的长度越长，那么，关键字可得到的权重值就会越高，以是，某一关键字的权重值在肯定程度上还受网页长度的影响。</div><div>　　网页链接权重：重要是内部链接和外部链接。敷衍内部链接来讲，为了公平，搜刮引擎一重般不会给较多的权分值，特殊是一些牢固位置的链接，这些简直有利用搜刮引擎相识整个网站结构，但权重分值一样平常没有运动链接（内容链接）高。</div><div>　　敷衍新的网页来讲，搜刮引擎在链接上会优先赐与一个补偿值，如许有助于它得到更多的链接与用户评价。</div><div>　　外部链接对网页的影响就像关键字密度一样被各人所存眷，链接笔墨地点页面的权重值、链接位置、链接数目都市在肯定程度上给促进网页链接权重增长。</div><div>　　用户评价权重：重要是搜刮引擎对搜刮结果中网页的用户评价盘算。</div><div>　　当用户搜刮某一关键字的时间，总是先欣赏搜刮结果的网页标题与择要部门，末了再决定点击本身以为有效的网页，若某个链接固然在返回结果表上出现的位置不太靠前，但被选取点击的次数比力多，于是搜刮引擎应该感慨该链接是比力受接待的，其位置应该往前调。</div><div>　　对与如许的评价方法，敷衍谁人排名考前的网页有很大的上风，而且用户并非只存眷搜刮结果第一页，第二页及反面的，也有大概被存眷，那么，在这里，搜刮引擎会对这些链接引入一个补偿值。</div><div>　　这里的补偿值是凭据用户点击搜刮结果每页的概率来盘算补偿因子，末了用这个补偿因子与用户评价权重值乘积求和得到。</div><div>　　附：百度权重盘算要领在谷歌推出中国市场之后，百度变得是越来越紧急了，百度权重固然不是由百度提出来的，但是却被浩繁的站长所追捧，关于探究百度权重盘算要领，若何进步百度权重，百度权重是什么意思的文章越发是到处都是，本日搜刮引擎优化天空就简单的扥想一下：百度权重的盘算要领：</div><div>　　关于站长东西内里百度权重的盘算要领：</div><div>　　百度流量在1到100之间的时间百度权重为百度流量在100到500之间百度权重为百度流量在500到1000之间百度权重为1000到5000之间的就是5000到10000就是10000到50000是5万到20万是20万到100是超过100万是网站关键字排名直接可以大概影响百度流量，而百度流量的巨细直接决定了百度权重的巨细（这就是站长东西现在对百度权重的逆向推理要领，以后大概会篡改）特殊阐发：站长东西的权重盘算要领是比力笼统的，只能大抵的看出网站权重，并不精准！百度从未公然其权重盘算要领！</div><div>　　百度自身也曾多次阐发：并没有百度权重这么一说，固然为什么会受到这么多搜刮引擎优化er的追捧，自然是有缘故起因的。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('47','14','0','欧式风格的设计要点','','','admin','1','0','','0','0','','0','','','','','2207','2014-10-11 16:40:48','admin','','/upload/images/201304/2207.jpg','1','1','我们做SEO优化一直都在强调不要轻易更改我们网站的标题，最好在做站初期就规划好自己的网站标题。要不然后期再做修改对我们的影响是可想而知的。就像你开一个店，如果天天改招牌，对你店里的生意影响是一样的。但是有些站一定要改，那么有没有好的办法，或者说修改TITLE后，如何快速恢复网站的权重呢最近我有个朋友一个站，上线了一个多月后听人家说网站的标题没有写好，结果他把整个标题给更改了，结果是导致搜索引擎的蜘蛛几周都没有光临他那个站，所以说网站权重不够的话，轻易更改标题很容易导致网站降权的。这个和我们现实生活差不多，我们本来对一个人相当熟悉，结果他把面部给整容了，那么我们在短时间能认识吗?肯定不会了，我们就必须花一段时间来重新认识，我们的网站标题也是一样，当我们更改标题后，搜索引擎是会需要花一段时间重新考察我们网站的，所以建议大家在建站前期想好网站标题，后期就不要修改了。但是现在我的这位朋友已经修改了文章标题，该怎么恢复网站权重呢?今天十堰SEO就来和大家谈谈网站标题更改后如何恢复网站权重：\r\n　　一 、增加网站内容的质量在修改网站标题的一段时间内，尽可能的每天多更新几篇高质量的文章，因为搜索引擎是最喜欢这样的文章的，这样才能增加搜索引擎蜘蛛来我们网站的次数，让我们的网站早点通过审核期。\r\n　　二 、去高质量的论坛，博客发外链去权重高的论坛，博客通过发链接诱饵，吸引蜘蛛来访问我们的网站，因为这些地方的蜘蛛访问量很大，通过这样的方式把蜘蛛带到我们的网站，增加蜘蛛访问你网站的频率，这样才会在最短的时间内让搜索引擎更新你的网站。\r\n　　三 、通过友情链接带动如果我们有资源的话，可以找一些网站快照新的站点做友情链接，让这些站点带带，网站快照新代表蜘蛛是很喜欢的，说明蜘蛛访问的次数也是挺多的，这样也可以把蜘蛛引导到我们的站点。当然我们也可以通过友情链接交换平台，很多链接平台类收录很大的，可以把我们的网站提交到这些平台，因为友情链接平台因为有着大量的站长在上面更新，所以更新速度非常的快，有利于吸引蜘蛛到上来。\r\n　　四 、门户站点博客像新浪，搜狐，天涯，网易这些博客的权重还是很高的，而且收录比较快，我们可以通过这些平台来引导蜘蛛去访问我们网站的次数，加快网站更新的速度。\r\n　　五 、可以通过百度自己的产品百度对自己的产品待遇还是很好的，我们可以通过百度空间，百度百科，百度知道，百度贴吧等等，发布我们的内容，尽量带上链接地址，这样可以可以加快更新网站的内容。\r\n　　通过上面六个方法，坚持4-8周的时间(一般百度的审核期是这么长)，相信网站的权重是会回来的，以上仅为个人观点，欢迎大家共同探讨，共同交流学习。','0','<p>&nbsp;　　我们做SEO优化一直都在强调不要轻易更改我们网站的标题，最好在做站初期就规划好自己的网站标题。要不然后期再做修改对我们的影响是可想而知的。就像你开一个店，如果天天改招牌，对你店里的生意影响是一样的。但是有些站一定要改，那么有没有好的办法，或者说修改TITLE后，如何快速恢复网站的权重呢最近我有个朋友一个站，上线了一个多月后听人家说网站的标题没有写好，结果他把整个标题给更改了，结果是导致搜索引擎的蜘蛛几周都没有光临他那个站，所以说网站权重不够的话，轻易更改标题很容易导致网站降权的。这个和我们现实生活差不多，我们本来对一个人相当熟悉，结果他把面部给整容了，那么我们在短时间能认识吗?肯定不会了，我们就必须花一段时间来重新认识，我们的网站标题也是一样，当我们更改标题后，搜索引擎是会需要花一段时间重新考察我们网站的，所以建议大家在建站前期想好网站标题，后期就不要修改了。但是现在我的这位朋友已经修改了文章标题，该怎么恢复网站权重呢?今天十堰SEO就来和大家谈谈网站标题更改后如何恢复网站权重：</p><div>　　一 、增加网站内容的质量在修改网站标题的一段时间内，尽可能的每天多更新几篇高质量的文章，因为搜索引擎是最喜欢这样的文章的，这样才能增加搜索引擎蜘蛛来我们网站的次数，让我们的网站早点通过审核期。</div><div>　　二 、去高质量的论坛，博客发外链去权重高的论坛，博客通过发链接诱饵，吸引蜘蛛来访问我们的网站，因为这些地方的蜘蛛访问量很大，通过这样的方式把蜘蛛带到我们的网站，增加蜘蛛访问你网站的频率，这样才会在最短的时间内让搜索引擎更新你的网站。</div><div>　　三 、通过友情链接带动如果我们有资源的话，可以找一些网站快照新的站点做友情链接，让这些站点带带，网站快照新代表蜘蛛是很喜欢的，说明蜘蛛访问的次数也是挺多的，这样也可以把蜘蛛引导到我们的站点。当然我们也可以通过友情链接交换平台，很多链接平台类收录很大的，可以把我们的网站提交到这些平台，因为友情链接平台因为有着大量的站长在上面更新，所以更新速度非常的快，有利于吸引蜘蛛到上来。</div><div>　　四 、门户站点博客像新浪，搜狐，天涯，网易这些博客的权重还是很高的，而且收录比较快，我们可以通过这些平台来引导蜘蛛去访问我们网站的次数，加快网站更新的速度。</div><div>　　五 、可以通过百度自己的产品百度对自己的产品待遇还是很好的，我们可以通过百度空间，百度百科，百度知道，百度贴吧等等，发布我们的内容，尽量带上链接地址，这样可以可以加快更新网站的内容。</div><div>　　通过上面六个方法，坚持4-8周的时间(一般百度的审核期是这么长)，相信网站的权重是会回来的，以上仅为个人观点，欢迎大家共同探讨，共同交流学习。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('48','14','0','享受中西混搭装修风格的奇妙感觉','','','admin','1','0','','0','0','','0','','','','','2208','2014-10-11 16:41:54','admin','','/upload/images/201304/2208.jpg','1','1','强调剂性诉求的上网站多以成立企业抽象为主，以效劳为导向。那儿那里的效劳有两规模含意，一是自身企业需要的即是效劳，如效劳事业；二是企业的售前、售后效劳。经由效劳晋升企业正在存户心中的位置，从而推进营销，这一典型则定然要正视网站的格调设想和创意，以理性诉求为主，苦心衬着或者营建一种特部门企业空气，苦心默示一种网站或者货色及效劳的价钱感，决没有能顿挫顿挫，更没有能可是将保守的效劳搬到网下去，我看面前绝年夜年夜少数网站就是那样，咱们需要什么什么效劳，欢送与咱们联络，之类，试想，互联收集然则一度虚构的前提，您没有给阅读者营建一种守信的气氛，别人凭什么置信你的效劳呢？事实中企业的信用正在网上一样无效。你能够找没有出本人真正存正在主力的中心，没有主要，咱们能够经过网站创立，回过甚来扫视一下本人的公司、企业，从新为企业塑造一度新的抽象定位，并正在当前的经营中下力量增强创设，从而外行业中自成一家，力争正在顾客心中营建一种簇新的抽象，并发生思疑感。请您细心思忖一下：SEO搜索引擎络上成千盈百的共事业网站，顾客干什么购置或者运用你的货物或者效劳，而没有取舍合作者的货物或者效劳？市道经济是合作性的。你必需为世人取舍你的品牌而没有是别人的品牌创举说辞。因而，一局限，要增强出格气氛的营建，正在理性诉求凹凸功力，消弭企业与顾客正在功夫与时刻上的距离，构建存户忠厚度，增多存户价格，经过拓展、构建、维持并强化存户联系使自己效益最年夜化 ； 另一范围，好好设想你的网站，配合的设想可以营建一种共同的企业文明——互联网络企业文明，或者许这与保守营销格调没有符，没有重要，没有要过度于依托保守营销！ 网站建树：\r\n　　剖析规范楷模也对比罕有，便是将下面而二者连系兴起，因为关于统一种货物，没有同的人能够基于没有同的抉择——偶然货物自身的特功能够决议你是感性的仍是理性的。因而，正在网站的气氛营建上就要寄望区分：假如某一范围没有能充沛注明货物或者效劳的特点，就要将二者联合兴起，正在没有同的全体分辩遏制感性和理性的诉求，借以打动没有同类型的顾客，既以少量的现实一般企业的手艺劣势，又营建一种理性的气氛，强调货物或者效劳给人带来的价格，经过二者的联合，零丁营建企业共同的气氛。正常来说，以理性为主的网站多为消费范例的企业，而理性诉求为主的网站多为效劳范例的企业，万万这种总结法子并没有是相对于的，无意，作为消费型的企业，其网站能够是效劳型的，也有能够是说明型的，也有能够一度网站正在没有同声代取舍没有同范例的网站，正在诉求格调上也就没有一样。但无论是什么范例，照旧那句话，所有为营销效劳，那样，网站能力施展其真正的价格。','0','<p>强调剂性诉求的上网站多以成立企业抽象为主，以效劳为导向。那儿那里的效劳有两规模含意，一是自身企业需要的即是效劳，如效劳事业；二是企业的售前、售后效劳。经由效劳晋升企业正在存户心中的位置，从而推进营销，这一典型则定然要正视网站的格调设想和创意，以理性诉求为主，苦心衬着或者营建一种特部门企业空气，苦心默示一种网站或者货色及效劳的价钱感，决没有能顿挫顿挫，更没有能可是将保守的效劳搬到网下去，我看面前绝年夜年夜少数网站就是那样，咱们需要什么什么效劳，欢送与咱们联络，之类，试想，互联收集然则一度虚构的前提，您没有给阅读者营建一种守信的气氛，别人凭什么置信你的效劳呢？事实中企业的信用正在网上一样无效。你能够找没有出本人真正存正在主力的中心，没有主要，咱们能够经过网站创立，回过甚来扫视一下本人的公司、企业，从新为企业塑造一度新的抽象定位，并正在当前的经营中下力量增强创设，从而外行业中自成一家，力争正在顾客心中营建一种簇新的抽象，并发生思疑感。请您细心思忖一下：SEO搜索引擎络上成千盈百的共事业网站，顾客干什么购置或者运用你的货物或者效劳，而没有取舍合作者的货物或者效劳？市道经济是合作性的。你必需为世人取舍你的品牌而没有是别人的品牌创举说辞。因而，一局限，要增强出格气氛的营建，正在理性诉求凹凸功力，消弭企业与顾客正在功夫与时刻上的距离，构建存户忠厚度，增多存户价格，经过拓展、构建、维持并强化存户联系使自己效益最年夜化 ； 另一范围，好好设想你的网站，配合的设想可以营建一种共同的企业文明&mdash;&mdash;互联网络企业文明，或者许这与保守营销格调没有符，没有重要，没有要过度于依托保守营销！ 网站建树：</p><div>　　剖析规范楷模也对比罕有，便是将下面而二者连系兴起，因为关于统一种货物，没有同的人能够基于没有同的抉择&mdash;&mdash;偶然货物自身的特功能够决议你是感性的仍是理性的。因而，正在网站的气氛营建上就要寄望区分：假如某一范围没有能充沛注明货物或者效劳的特点，就要将二者联合兴起，正在没有同的全体分辩遏制感性和理性的诉求，借以打动没有同类型的顾客，既以少量的现实一般企业的手艺劣势，又营建一种理性的气氛，强调货物或者效劳给人带来的价格，经过二者的联合，零丁营建企业共同的气氛。正常来说，以理性为主的网站多为消费范例的企业，而理性诉求为主的网站多为效劳范例的企业，万万这种总结法子并没有是相对于的，无意，作为消费型的企业，其网站能够是效劳型的，也有能够是说明型的，也有能够一度网站正在没有同声代取舍没有同范例的网站，正在诉求格调上也就没有一样。但无论是什么范例，照旧那句话，所有为营销效劳，那样，网站能力施展其真正的价格。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('49','15','0','婚纱照冬季拍外景婚纱照3大技巧','','','admin','1','0','','0','0','','0','','','','','2308','2014-10-11 16:48:03','admin','','/upload/images/201304/2308.jpg','1','1','SEO优化也即是查找引擎优化，SEO查找引擎优化也即是博客内容被查找引擎录入及优先排序，以此添加博客的点击率和曝光度，终究提升博客的归纳能力。写博客的人，内容不只要对用户友爱，让大部门人都能看懂，并且也要对查找引擎友爱。这儿首要介绍下卢松松常用的博客SEO优化窍门。 \r\n   1：博客要经常连接更新，文字一直紧紧盘绕关头字，环绕上彀站主题。 \r\n   2：SEO优化重点以文章内容页优化为主。 \r\n   3：恰当给每个页面添加环节词页面描绘索引擎抓取器标签。 \r\n   4：在新文章中恰当添加一些老文章的连接，文章的内部连接必定要天然。 \r\n   5：新博客可以建立单一纽带词战略，以增强网站对查找引擎的威望性。如卢松松博客创建初期只要一个网站设计关键词。 \r\n   6：节目分类尽量运用目录方式。如：不是 \r\n   7：可以在页面底部加上站点地图HTML名目是给用户看的，XML花式是给查找引擎看的。 \r\n   8：斗劲首要文章的URL可以运用拼音、英文和朋分线等网址构造。 \r\n   9：外部连接扶植很重要，新博客推荐运用东西 \r\n   10：废物留言一定要删去，很是影响排行。 \r\n   11：记住给每个博文插图加上和文章内容有关的alt信息，并在图像附近添加有关信息。 \r\n   12：文章中不异的关键字不能过多，如果非要堆砌关键字，可恰当运用长尾关键字。 \r\n   13：每篇文章的结尾处可干预“自创文章如G标签可以增强主题的有关性和被查找的概率。 \r\n   15：文章的Title最佳以“文章疑问-博客称号”方式呈现。 \r\n   16：文章标题最佳能泛起一次关键字。 \r\n   17：关键字最佳在第一段或最终一段可以呈现。 \r\n   18：不要选择极端热门的关键字。 \r\n   19：不要一次性添加很多毗邻，更不要一次性删减很多毗邻。 \r\n   20：坚持! \r\n   SEO到今朝停止，最威望的定义为： \r\n   查找引擎优化engine 简称查找引擎优化指遵循查找引擎的查找事理，对网站机关、页面文字说话和站点间互动交际略等进行合理计划布置，以改进网站在查找引擎的查找默示，进而添加客户发现并访谒网站的可能性的这样一个进程. 查找引擎优化也是一种科学的成长不美观和编制论，它跟着查找引擎的开展而开展, 一起也促进了查找引擎的开展。','0','<p>SEO优化也即是查找引擎优化，SEO查找引擎优化也即是博客内容被查找引擎录入及优先排序，以此添加博客的点击率和曝光度，终究提升博客的归纳能力。写博客的人，内容不只要对用户友爱，让大部门人都能看懂，并且也要对查找引擎友爱。这儿首要介绍下卢松松常用的博客SEO优化窍门。&nbsp;</p><div>&nbsp; &nbsp;1：博客要经常连接更新，文字一直紧紧盘绕关头字，环绕上彀站主题。&nbsp;</div><div>&nbsp; &nbsp;2：SEO优化重点以文章内容页优化为主。&nbsp;</div><div>&nbsp; &nbsp;3：恰当给每个页面添加环节词页面描绘索引擎抓取器标签。&nbsp;</div><div>&nbsp; &nbsp;4：在新文章中恰当添加一些老文章的连接，文章的内部连接必定要天然。&nbsp;</div><div>&nbsp; &nbsp;5：新博客可以建立单一纽带词战略，以增强网站对查找引擎的威望性。如卢松松博客创建初期只要一个网站设计关键词。&nbsp;</div><div>&nbsp; &nbsp;6：节目分类尽量运用目录方式。如：不是&nbsp;</div><div>&nbsp; &nbsp;7：可以在页面底部加上站点地图HTML名目是给用户看的，XML花式是给查找引擎看的。&nbsp;</div><div>&nbsp; &nbsp;8：斗劲首要文章的URL可以运用拼音、英文和朋分线等网址构造。&nbsp;</div><div>&nbsp; &nbsp;9：外部连接扶植很重要，新博客推荐运用东西&nbsp;</div><div>&nbsp; &nbsp;10：废物留言一定要删去，很是影响排行。&nbsp;</div><div>&nbsp; &nbsp;11：记住给每个博文插图加上和文章内容有关的alt信息，并在图像附近添加有关信息。&nbsp;</div><div>&nbsp; &nbsp;12：文章中不异的关键字不能过多，如果非要堆砌关键字，可恰当运用长尾关键字。&nbsp;</div><div>&nbsp; &nbsp;13：每篇文章的结尾处可干预&ldquo;自创文章如G标签可以增强主题的有关性和被查找的概率。&nbsp;</div><div>&nbsp; &nbsp;15：文章的Title最佳以&ldquo;文章疑问-博客称号&rdquo;方式呈现。&nbsp;</div><div>&nbsp; &nbsp;16：文章标题最佳能泛起一次关键字。&nbsp;</div><div>&nbsp; &nbsp;17：关键字最佳在第一段或最终一段可以呈现。&nbsp;</div><div>&nbsp; &nbsp;18：不要选择极端热门的关键字。&nbsp;</div><div>&nbsp; &nbsp;19：不要一次性添加很多毗邻，更不要一次性删减很多毗邻。&nbsp;</div><div>&nbsp; &nbsp;20：坚持!&nbsp;</div><div>&nbsp; &nbsp;SEO到今朝停止，最威望的定义为：&nbsp;</div><div>&nbsp; &nbsp;查找引擎优化engine 简称查找引擎优化指遵循查找引擎的查找事理，对网站机关、页面文字说话和站点间互动交际略等进行合理计划布置，以改进网站在查找引擎的查找默示，进而添加客户发现并访谒网站的可能性的这样一个进程. 查找引擎优化也是一种科学的成长不美观和编制论，它跟着查找引擎的开展而开展, 一起也促进了查找引擎的开展。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('50','15','0','朱亚文沈佳妮婚纱照曝光 恩爱缠绵甜蜜热吻','','','admin','1','0','','0','0','','0','','','','','2307','2014-10-11 16:48:53','admin','','/upload/images/201304/2307.jpg','1','1','现在在网站优化这个行业中，已经有越来越多的站长认识到了内链的重要性，可是一些新手站长还是对内链这个概念模模糊糊的，其实随着现在搜索引擎算法的不段改进，内链和外链已经到了一个同等重要性的位置了，对于内链来说不同角度不同方向的人会有不同的看法，下面就给大家说一说从不同的方向看内链都有哪些不同的作用。\r\n　　一、利于增加网站收录量蜘蛛爬行网站是按超链接的，其实蜘蛛在爬行时就你用户点击网站中的超链接来进入内容页，咱们可以把蜘蛛当成是一个用户，而这个用户往往是每天来访都是全站访问的。但是有一个缺点就是它并不具备感情。而且还要站长设置好网站的内链，让它顺畅的绕着网站内容爬行。许多的网站收录不给力原因在哪里?其实最基本的一点就是无法给蜘蛛提供高速爬行通道，这里出现了断路，那里出现了死胡同，这就让蜘蛛爬行网站时浪费很多时间，而且每次进入死胡同时，蜘蛛都要重新回到首页去，这样一来蜘蛛又要重新爬行网站了，进而就会造成网站被重复收录这是常规现象。有了合理的内链就不会造成这种情况的发生，当站长把每篇内容下面左右都设置好相关的内容版块时，自然就可以引导蜘蛛更有效的爬行完整站，自然收录也会涨起来的。而且对于利用内链来提升网站的收录量并不是什么稀奇的事，一般收录高的网站内链都是做得特别到位的。\r\n　　二、利于提升关键词排名外链可以有效的提升关键词排名而内链就是加已巩固排名最好的方法之一。对于内链的作用，其实最基本一点也是可以提升关键词排名的。而且通过内链优化来提升关键词排名，可以使自己在与对手竞争时，更有稳定性，因为同样的方法，取胜之处就在于细节方面的处理，而内链往往是细节中最重要的一环，所以内链的实际作用就目前来说，跟外链的作用是不相上下的。而且要让搜索引挚重视自己的网站，自然通过内链可以更好的使网站的内容相关性更强，自然搜索引挚对于具有文不离题内容的网站适当的照顾一下的。所以，而且内链中的关键词还可以提升网站关键词的整体密度，进而对提升关键词排名起到一定的帮助。所以说内链的最根本的一个作用就是可以帮助网站提升关键词排名，要不然站长也不会越来越重视内链优化了。\r\n　　三、利于提升用户体验内链最为关键词的一个作用就是可以提用户的访问深度，也就是打造良好的用户体验，对于用户体验可谓是让所有站长又爱又恨。但是很多网站流量很高，却留不住用户，无法缔造出良好的用户体验归其原因就是出现在内链不够强大，鄙人的淘宝热卖','0','<p>现在在网站优化这个行业中，已经有越来越多的站长认识到了内链的重要性，可是一些新手站长还是对内链这个概念模模糊糊的，其实随着现在搜索引擎算法的不段改进，内链和外链已经到了一个同等重要性的位置了，对于内链来说不同角度不同方向的人会有不同的看法，下面就给大家说一说从不同的方向看内链都有哪些不同的作用。</p><div>　　一、利于增加网站收录量蜘蛛爬行网站是按超链接的，其实蜘蛛在爬行时就你用户点击网站中的超链接来进入内容页，咱们可以把蜘蛛当成是一个用户，而这个用户往往是每天来访都是全站访问的。但是有一个缺点就是它并不具备感情。而且还要站长设置好网站的内链，让它顺畅的绕着网站内容爬行。许多的网站收录不给力原因在哪里?其实最基本的一点就是无法给蜘蛛提供高速爬行通道，这里出现了断路，那里出现了死胡同，这就让蜘蛛爬行网站时浪费很多时间，而且每次进入死胡同时，蜘蛛都要重新回到首页去，这样一来蜘蛛又要重新爬行网站了，进而就会造成网站被重复收录这是常规现象。有了合理的内链就不会造成这种情况的发生，当站长把每篇内容下面左右都设置好相关的内容版块时，自然就可以引导蜘蛛更有效的爬行完整站，自然收录也会涨起来的。而且对于利用内链来提升网站的收录量并不是什么稀奇的事，一般收录高的网站内链都是做得特别到位的。</div><div>　　二、利于提升关键词排名外链可以有效的提升关键词排名而内链就是加已巩固排名最好的方法之一。对于内链的作用，其实最基本一点也是可以提升关键词排名的。而且通过内链优化来提升关键词排名，可以使自己在与对手竞争时，更有稳定性，因为同样的方法，取胜之处就在于细节方面的处理，而内链往往是细节中最重要的一环，所以内链的实际作用就目前来说，跟外链的作用是不相上下的。而且要让搜索引挚重视自己的网站，自然通过内链可以更好的使网站的内容相关性更强，自然搜索引挚对于具有文不离题内容的网站适当的照顾一下的。所以，而且内链中的关键词还可以提升网站关键词的整体密度，进而对提升关键词排名起到一定的帮助。所以说内链的最根本的一个作用就是可以帮助网站提升关键词排名，要不然站长也不会越来越重视内链优化了。</div><div>　　三、利于提升用户体验内链最为关键词的一个作用就是可以提用户的访问深度，也就是打造良好的用户体验，对于用户体验可谓是让所有站长又爱又恨。但是很多网站流量很高，却留不住用户，无法缔造出良好的用户体验归其原因就是出现在内链不够强大，鄙人的淘宝热卖</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('51','15','0','婚纱照在费司如何根据身形选择婚纱','','','admin','1','0','','0','0','','0','','','','','2306','2014-10-11 16:51:51','admin','','/upload/images/201304/2306.jpg','1','1','一、赋有弹性的出色心态做优化便是用自己的才智与阅历和查找引擎“斗智斗法”，面对查找引擎的调整，无论是站长仍是SEOER都处于被逼的境地，特别像baidu常常运用 人工ganyu查找效果，对于算法系统常常性的调整使得网站优化效果常常会出现不稳定改变的表象。面对这种实力不对等的境况和查找引擎改变 的特征，作为专业从事SEO的工作者而言，需要首要练就的便是一副赋有弹性的出色心态，优良的SEOER需要坚持淡定 不紧张的心态，能够做到从容应对。\r\n　　二、堆集各种优化可用的本钱专业的SEO需要运用到林林总总的本钱，从高质量的内容来历到优质的外链发布本钱，都是在打开网站优化进程中有必要用到的。网站的优化工作是一 项涉及到内容、关键词、外链、内链等各个元素的系统化工作，因此在打开有关的工作时需要堆集有满足丰厚的本钱，才有利于能够快速地按照既定的优化方案实 施。优良的SEOER应当在优化打开之前和往常的工作进程中留意搜集和堆集各种今后能够运用的本钱，前进工作的功率和有效性。\r\n　　三、需要出色的沟通和展示诀窍作为专业的SEOER，无论是在接单时仍是在优化进程中与客户的沟通进程中，都需要向客户介绍自己**的优化方案，在施行SEO进程中还需要 及时向客户通报工作进展，以及展示现已到达的优化效果等，这些既是增强接单才干，能够抢夺获得更多客户的才干，也是获得客户的进一步信任与一定，保护好客 情联络，做好后续的客户服务工作的必要技能，因此应当是优良的SEOER必备的才干。\r\n　　四、勇于活泼进行优化检验和立异在具体的优化方法上，虽然有很多咱们所熟知和堆集出来的优化阅历与方法，但是由于查找引擎的算法不断地进行改动，所以要想能够及时捉住查找引 擎最新的算法，做到在优化进程中及时迎合其算法标准，以期获得更佳的效果。因此，要获得最新的查找引擎算法改变状况，优良的SEOER应当勇于活泼进行大 胆的检验，按照自己的阅历运用一些优化措施，来检验查找引擎对于这些优化方法的反响，极力走在同行的前列。\r\n　　五、善用对优化效果进行监控和总结每一个网站的优化项目对于SEOER而言都是一次优化技能的检查和前进，在不一样期间的优化进程中，总能让咱们得到全新的阅历，特别是对于查找 引擎不断改变的算法都能够有更多的知道与掌握。因此，在打开优化的进程中，优良的SEOER要长于对每一次的优化项目进行必要而及时的监控，及时知道和掌 握优化方法所获得的效果，对于效果和缺少做及时的总结，从而在总结和反思之中完善和前进SEO的优化技能。','0','<p>一、赋有弹性的出色心态做优化便是用自己的才智与阅历和查找引擎&ldquo;斗智斗法&rdquo;，面对查找引擎的调整，无论是站长仍是SEOER都处于被逼的境地，特别像baidu常常运用 人工ganyu查找效果，对于算法系统常常性的调整使得网站优化效果常常会出现不稳定改变的表象。面对这种实力不对等的境况和查找引擎改变 的特征，作为专业从事SEO的工作者而言，需要首要练就的便是一副赋有弹性的出色心态，优良的SEOER需要坚持淡定 不紧张的心态，能够做到从容应对。</p><div>　　二、堆集各种优化可用的本钱专业的SEO需要运用到林林总总的本钱，从高质量的内容来历到优质的外链发布本钱，都是在打开网站优化进程中有必要用到的。网站的优化工作是一 项涉及到内容、关键词、外链、内链等各个元素的系统化工作，因此在打开有关的工作时需要堆集有满足丰厚的本钱，才有利于能够快速地按照既定的优化方案实 施。优良的SEOER应当在优化打开之前和往常的工作进程中留意搜集和堆集各种今后能够运用的本钱，前进工作的功率和有效性。</div><div>　　三、需要出色的沟通和展示诀窍作为专业的SEOER，无论是在接单时仍是在优化进程中与客户的沟通进程中，都需要向客户介绍自己**的优化方案，在施行SEO进程中还需要 及时向客户通报工作进展，以及展示现已到达的优化效果等，这些既是增强接单才干，能够抢夺获得更多客户的才干，也是获得客户的进一步信任与一定，保护好客 情联络，做好后续的客户服务工作的必要技能，因此应当是优良的SEOER必备的才干。</div><div>　　四、勇于活泼进行优化检验和立异在具体的优化方法上，虽然有很多咱们所熟知和堆集出来的优化阅历与方法，但是由于查找引擎的算法不断地进行改动，所以要想能够及时捉住查找引 擎最新的算法，做到在优化进程中及时迎合其算法标准，以期获得更佳的效果。因此，要获得最新的查找引擎算法改变状况，优良的SEOER应当勇于活泼进行大 胆的检验，按照自己的阅历运用一些优化措施，来检验查找引擎对于这些优化方法的反响，极力走在同行的前列。</div><div>　　五、善用对优化效果进行监控和总结每一个网站的优化项目对于SEOER而言都是一次优化技能的检查和前进，在不一样期间的优化进程中，总能让咱们得到全新的阅历，特别是对于查找 引擎不断改变的算法都能够有更多的知道与掌握。因此，在打开优化的进程中，优良的SEOER要长于对每一次的优化项目进行必要而及时的监控，及时知道和掌 握优化方法所获得的效果，对于效果和缺少做及时的总结，从而在总结和反思之中完善和前进SEO的优化技能。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('52','15','0','婚纱照90后拍婚纱照的新观点','','','admin','1','0','','0','0','','0','','','','','2305','2014-10-11 16:52:42','admin','','/upload/images/201304/2305.jpg','1','1','序言：标题里的标准化的需求其实是为了吸引大家的，它是不可能有标准化的，我们要追求标题个性化，但也可以做标准化的，因为很多的人不知道该怎么做。\r\n　　一、标题应该怎么做怎么样来选择标题，标题要求很简单，他需要有几个特性，大的行业靠长尾关键词，小的行业靠目标关键词，而淘宝客严格意义来说是大的行业，这里说大指的是行业的受众。淘宝客可以做任何行业的受众，它是一个大的行业。同样旅游也是大的行业。而中小型企业点的行业就是小的行业。所以说目标和长尾是一个相对的概念。比如说云南旅游，它的受众很大，可以做目标词，而去云南旅游的注意事项就是长尾词，它是相对的。\r\n　　1、标题应该去找寻有转换率的而关注度较少的长尾词(竞争度非常少所指的是目录页和内页，目录页可以寄居到一些大型站点下面，比如很多的企业去阿里巴巴开一个二级域名的店铺等。\r\n　　它是一个目录页或者是二级域名。现在有一个问题就是它没有流量，或者有流量没有转换率。而我们seo是要解决这个问题的。流量和转换率是由关键词产生的。关键词有转换率的很多，不能每个都做，大家都认为可以做的词，我们就不要去做的，商业竞争是非常残酷的。\r\n　　我们要选择的词就是大伙还没有发现或者有少数人发现的我们可以去竞争得过人家的词。怎么知道这个词有转换呢?这就一定要做关键词词库，词库就是我们知道有一些词有流量，这种词会大量存在的，而且有规律的，是可以进行推理和推导的，这个词库的统计是一个长期且漫长的过程，通过词库就可以淘汰很多的词。\r\n　　这里举个例子，比如一个做医药类网站，化此类网站，首先就是有规律的更新一些白癜风原创文章，文章的标题很重要，它体现你这篇文章的中心内容，文章内容最好原创，再加上河南白癜风医院的关键词，而河南白癜风医院的密度就需要自己把握;其次就是去一些与白癜风相关的医药健康类网站发外链，比如BBS论坛、Blog博客和B2B分类信息平台，外链内容与白癜风相关，加上河南白癜风医院的锚链最好;最后就是一些友情链接的交换了，要知道，网站优化比不是一朝一夕的是，三天打鱼两天晒网是不可取的，站长们一定要勤劳才可以见效果的。','0','<p>序言：标题里的标准化的需求其实是为了吸引大家的，它是不可能有标准化的，我们要追求标题个性化，但也可以做标准化的，因为很多的人不知道该怎么做。</p><div>　　一、标题应该怎么做怎么样来选择标题，标题要求很简单，他需要有几个特性，大的行业靠长尾关键词，小的行业靠目标关键词，而淘宝客严格意义来说是大的行业，这里说大指的是行业的受众。淘宝客可以做任何行业的受众，它是一个大的行业。同样旅游也是大的行业。而中小型企业点的行业就是小的行业。所以说目标和长尾是一个相对的概念。比如说云南旅游，它的受众很大，可以做目标词，而去云南旅游的注意事项就是长尾词，它是相对的。</div><div>　　1、标题应该去找寻有转换率的而关注度较少的长尾词(竞争度非常少所指的是目录页和内页，目录页可以寄居到一些大型站点下面，比如很多的企业去阿里巴巴开一个二级域名的店铺等。</div><div>　　它是一个目录页或者是二级域名。现在有一个问题就是它没有流量，或者有流量没有转换率。而我们seo是要解决这个问题的。流量和转换率是由关键词产生的。关键词有转换率的很多，不能每个都做，大家都认为可以做的词，我们就不要去做的，商业竞争是非常残酷的。</div><div>　　我们要选择的词就是大伙还没有发现或者有少数人发现的我们可以去竞争得过人家的词。怎么知道这个词有转换呢?这就一定要做关键词词库，词库就是我们知道有一些词有流量，这种词会大量存在的，而且有规律的，是可以进行推理和推导的，这个词库的统计是一个长期且漫长的过程，通过词库就可以淘汰很多的词。</div><div>　　这里举个例子，比如一个做医药类网站，化此类网站，首先就是有规律的更新一些白癜风原创文章，文章的标题很重要，它体现你这篇文章的中心内容，文章内容最好原创，再加上河南白癜风医院的关键词，而河南白癜风医院的密度就需要自己把握;其次就是去一些与白癜风相关的医药健康类网站发外链，比如BBS论坛、Blog博客和B2B分类信息平台，外链内容与白癜风相关，加上河南白癜风医院的锚链最好;最后就是一些友情链接的交换了，要知道，网站优化比不是一朝一夕的是，三天打鱼两天晒网是不可取的，站长们一定要勤劳才可以见效果的。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('53','15','0','影楼费司摄影如何拍摄出瘦新娘','','','admin','1','0','','0','0','','0','','','','','2304','2014-10-11 16:53:47','admin','','/upload/images/201304/2304.jpg','1','1','“怎样做有效的点击链接?”有朋侪在我博客内留言发问，我想这正是我们各人在以后搜刮引擎优化实践中不绝积极探索的标题，但要想管理“怎样做有效的点击链接”的标题，A5悦怀营销()唐世军以为，起首必须改变看法。\r\n　　在翻译的《搜刮引擎优化艺术》书中，作者将我们所说的“做外链(发外链)”称为“基于网站内容基础之上”的“外链营销”。\r\n　　在云云的外链营销中，我们渴望通过外链方法营销推广的东西就是外链页面内容(或服务)，它必须是值得通过其他网站站长故意识地用链接情势保举的内容页面——百度《搜刮引擎优化指南2.0》中说：“我们经常说的超链，就是(用户)保举的一种(情势)”。\r\n　　《搜刮引擎优化艺术》书中则说：“人们不会链接向低质量内容或用户体验差的网站(除非得到某种利益作为补偿)，除非你荣幸地拥有一个着名品牌，否则人们也不会链接向一个纯粹的贸易网站。你必须为用户提供有代价的东西，也要提供奇特的东西”——你所链接的内面内容必须赐与别人一些东西。\r\n　　而且，既然是“外链营销”，在网站外链建计划谋订定与实行历程中，就必须充实思量营销受众的生理，由于只有捉住营销受众生理的营销举动才大概得到预期的乐成——时下最有说服力的例子是，当大陆扫货者在香港想购置低利润产物时，洞悉大陆客生理的香港卖家一句“我们香港人才不消谁人牌子呢”，结果大陆客就乖乖地被香港卖家牵着鼻子走了。\r\n　　外链营销也不例外，《搜刮引擎优化艺术》书中说：“有些东西天生能吸引链接，由于能触发(读者)生理和情感回声——自负、分享、消息性等。充实利用这些触发性因素，为那些能影响网站内容的访问者(作家、站长、博客作者)制造一个有说服力的来由来引用你的作品，你的链接创建就将会乐成”。\r\n　　因此，作为一个企业网站外链营销专员，我们必须思索，本行业用户存眷的话题是什么?而我网站能赐与别人的奇特内容有些什么呢?海内站长每每缺乏这方面的战略考量，横竖“发外链”呗，能留下外链、被搜刮引擎收录就是乐成，基础不思量受众感觉(这不能完全怪外链专员，很多公司就是以数目考核外链专员的)，从他们的角度来说，如许的外链乐成了，但很难到达“产生高点击率”的外链营销结果。\r\n　　《搜刮引擎优化艺术》作者提示我们，在确定网站外链建计划谋时，起首必须“摸清家底”，晓得本身网站如今有什么内容，可以增长什么内容，我网站特色在那边，用户需求是什么，扬长避短，来确定我们本身“基于网站内容的链接建计划谋”。\r\n　　好比，提问那位朋侪做的是打扮网站，网站内容很难出新，但面对同样标题，淘宝一些女装店家本身做模特儿，展示本身打扮格局的特点，取得较好的营销结果。假如在如许别开生面的内容基础之上，在一些女性消耗者居多的论坛(或微博)挑选出两幅良好图片做“外链营销”，就能很好地收到点击外链的结果。\r\n　　而且如许基于高质量内容的链接，很容易成为“链接诱饵”，被更多用户、网站站长保举，到达“真正的搜刮引擎优化能手只晓得本身外链到处都有，但却不晓得是谁帮创建的”田地。\r\n　　这阐发白内容大概雷同，但由于体现情势的差别，内容受众的生理感觉也肯定差别，以致美学家对美的界说都是“美是故意味的情势”——紧急的是“探求更能引起受众共鸣的内容体现情势”，而不是你体现的东西与众差别。\r\n　　必须指出的是，如许“探求更能引起受众共鸣的内容体现情势”，不但对网站内容构建有启示作用，对“外链营销”也同样。《搜刮引擎优化艺术》中说：“可以用差别种类的内容(同一内容的差别体现情势)吸引链接。文章、有吸引力的图片、视频、东西、以致开辟线上游戏”。好比一些民营医院举行网络手术视频直播，一段时间内直播地点不绝地被各大网站管理员及网友自觉保举分享。\r\n　　别的，敷衍内容大同小异的企业网站来说，无论是网站内容构建还是外链营销环节，捉住“时效性话题”做文章是一个“拓展内家”的好要领。任何时间网络上都不缺乏热门的“时效性话题”，只要我们本身的网站可以大概不绝地捉住具有干系性的“时效性话题”做文章，只要实时奇妙地从中掘客到本身网站的奇特卖点(肯定要有本身新意，而且不能委曲)，借势营销，不难想象，这类盛行话题带来的外链点击率肯定不会低——好比做女装的网站，前些日子就不应该放过不胫而走的“齐B小短裙”话题。\r\n　　末了，就是坚持，不要怕累，不要怕被模拟，不要怕一段时间内结果不显着，以致不如“内容只是偶尔义穿插关键字”的传统“发外链，引蜘蛛”本领。坚持下去。由于任何营销本领都必须坚持才气收效——外链营销也不例外。\r\n　　特殊要提示列位搜刮引擎优化ER的是，不要为本身找放弃的捏词来由，好比“海内网站都是复制收罗伪原创”。这简直是毕竟，但我们不能等待情况好了再做。只要降服困难坚持下去，就肯定会有效果。\r\n　　而且，将如许“基于内容的外链建计划谋”坚持下去，再辅以其他宣传营销本领(好比消息营销等)，一段时间以后，就能有效拉开与其他同类网站的隔断，真正实现网站品牌化的终极营销目的。\r\n　　末了，《搜刮引擎优化艺术》将“外链营销”总结为：“良好的链接创建来自于简单的观点：创建好的内容，陈诉其他人，鼓励他们分享”。\r\n　　这阐发，包罗外链营销在内的统统营销推广实质上都是内容营销，不能将网站内容与网站外链营销破碎开来，网站内容质量与外链质量密切干系——这才是链接干系性的真实寄义。假如你网站内容(服务)真的很优质，你的外链质量肯定不会差，肯定能产生无数赢得更多点击的优质外链;而一个用户体验良好，让人产生点击激动的外链，它所指向页面的内容质量也不会低。','0','<p>&ldquo;怎样做有效的点击链接?&rdquo;有朋侪在我博客内留言发问，我想这正是我们各人在以后搜刮引擎优化实践中不绝积极探索的标题，但要想管理&ldquo;怎样做有效的点击链接&rdquo;的标题，A5悦怀营销()唐世军以为，起首必须改变看法。</p><div>　　在翻译的《搜刮引擎优化艺术》书中，作者将我们所说的&ldquo;做外链(发外链)&rdquo;称为&ldquo;基于网站内容基础之上&rdquo;的&ldquo;外链营销&rdquo;。</div><div>　　在云云的外链营销中，我们渴望通过外链方法营销推广的东西就是外链页面内容(或服务)，它必须是值得通过其他网站站长故意识地用链接情势保举的内容页面&mdash;&mdash;百度《搜刮引擎优化指南2.0》中说：&ldquo;我们经常说的超链，就是(用户)保举的一种(情势)&rdquo;。</div><div>　　《搜刮引擎优化艺术》书中则说：&ldquo;人们不会链接向低质量内容或用户体验差的网站(除非得到某种利益作为补偿)，除非你荣幸地拥有一个着名品牌，否则人们也不会链接向一个纯粹的贸易网站。你必须为用户提供有代价的东西，也要提供奇特的东西&rdquo;&mdash;&mdash;你所链接的内面内容必须赐与别人一些东西。</div><div>　　而且，既然是&ldquo;外链营销&rdquo;，在网站外链建计划谋订定与实行历程中，就必须充实思量营销受众的生理，由于只有捉住营销受众生理的营销举动才大概得到预期的乐成&mdash;&mdash;时下最有说服力的例子是，当大陆扫货者在香港想购置低利润产物时，洞悉大陆客生理的香港卖家一句&ldquo;我们香港人才不消谁人牌子呢&rdquo;，结果大陆客就乖乖地被香港卖家牵着鼻子走了。</div><div>　　外链营销也不例外，《搜刮引擎优化艺术》书中说：&ldquo;有些东西天生能吸引链接，由于能触发(读者)生理和情感回声&mdash;&mdash;自负、分享、消息性等。充实利用这些触发性因素，为那些能影响网站内容的访问者(作家、站长、博客作者)制造一个有说服力的来由来引用你的作品，你的链接创建就将会乐成&rdquo;。</div><div>　　因此，作为一个企业网站外链营销专员，我们必须思索，本行业用户存眷的话题是什么?而我网站能赐与别人的奇特内容有些什么呢?海内站长每每缺乏这方面的战略考量，横竖&ldquo;发外链&rdquo;呗，能留下外链、被搜刮引擎收录就是乐成，基础不思量受众感觉(这不能完全怪外链专员，很多公司就是以数目考核外链专员的)，从他们的角度来说，如许的外链乐成了，但很难到达&ldquo;产生高点击率&rdquo;的外链营销结果。</div><div>　　《搜刮引擎优化艺术》作者提示我们，在确定网站外链建计划谋时，起首必须&ldquo;摸清家底&rdquo;，晓得本身网站如今有什么内容，可以增长什么内容，我网站特色在那边，用户需求是什么，扬长避短，来确定我们本身&ldquo;基于网站内容的链接建计划谋&rdquo;。</div><div>　　好比，提问那位朋侪做的是打扮网站，网站内容很难出新，但面对同样标题，淘宝一些女装店家本身做模特儿，展示本身打扮格局的特点，取得较好的营销结果。假如在如许别开生面的内容基础之上，在一些女性消耗者居多的论坛(或微博)挑选出两幅良好图片做&ldquo;外链营销&rdquo;，就能很好地收到点击外链的结果。</div><div>　　而且如许基于高质量内容的链接，很容易成为&ldquo;链接诱饵&rdquo;，被更多用户、网站站长保举，到达&ldquo;真正的搜刮引擎优化能手只晓得本身外链到处都有，但却不晓得是谁帮创建的&rdquo;田地。</div><div>　　这阐发白内容大概雷同，但由于体现情势的差别，内容受众的生理感觉也肯定差别，以致美学家对美的界说都是&ldquo;美是故意味的情势&rdquo;&mdash;&mdash;紧急的是&ldquo;探求更能引起受众共鸣的内容体现情势&rdquo;，而不是你体现的东西与众差别。</div><div>　　必须指出的是，如许&ldquo;探求更能引起受众共鸣的内容体现情势&rdquo;，不但对网站内容构建有启示作用，对&ldquo;外链营销&rdquo;也同样。《搜刮引擎优化艺术》中说：&ldquo;可以用差别种类的内容(同一内容的差别体现情势)吸引链接。文章、有吸引力的图片、视频、东西、以致开辟线上游戏&rdquo;。好比一些民营医院举行网络手术视频直播，一段时间内直播地点不绝地被各大网站管理员及网友自觉保举分享。</div><div>　　别的，敷衍内容大同小异的企业网站来说，无论是网站内容构建还是外链营销环节，捉住&ldquo;时效性话题&rdquo;做文章是一个&ldquo;拓展内家&rdquo;的好要领。任何时间网络上都不缺乏热门的&ldquo;时效性话题&rdquo;，只要我们本身的网站可以大概不绝地捉住具有干系性的&ldquo;时效性话题&rdquo;做文章，只要实时奇妙地从中掘客到本身网站的奇特卖点(肯定要有本身新意，而且不能委曲)，借势营销，不难想象，这类盛行话题带来的外链点击率肯定不会低&mdash;&mdash;好比做女装的网站，前些日子就不应该放过不胫而走的&ldquo;齐B小短裙&rdquo;话题。</div><div>　　末了，就是坚持，不要怕累，不要怕被模拟，不要怕一段时间内结果不显着，以致不如&ldquo;内容只是偶尔义穿插关键字&rdquo;的传统&ldquo;发外链，引蜘蛛&rdquo;本领。坚持下去。由于任何营销本领都必须坚持才气收效&mdash;&mdash;外链营销也不例外。</div><div>　　特殊要提示列位搜刮引擎优化ER的是，不要为本身找放弃的捏词来由，好比&ldquo;海内网站都是复制收罗伪原创&rdquo;。这简直是毕竟，但我们不能等待情况好了再做。只要降服困难坚持下去，就肯定会有效果。</div><div>　　而且，将如许&ldquo;基于内容的外链建计划谋&rdquo;坚持下去，再辅以其他宣传营销本领(好比消息营销等)，一段时间以后，就能有效拉开与其他同类网站的隔断，真正实现网站品牌化的终极营销目的。</div><div>　　末了，《搜刮引擎优化艺术》将&ldquo;外链营销&rdquo;总结为：&ldquo;良好的链接创建来自于简单的观点：创建好的内容，陈诉其他人，鼓励他们分享&rdquo;。</div><div>　　这阐发，包罗外链营销在内的统统营销推广实质上都是内容营销，不能将网站内容与网站外链营销破碎开来，网站内容质量与外链质量密切干系&mdash;&mdash;这才是链接干系性的真实寄义。假如你网站内容(服务)真的很优质，你的外链质量肯定不会差，肯定能产生无数赢得更多点击的优质外链;而一个用户体验良好，让人产生点击激动的外链，它所指向页面的内容质量也不会低。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('54','15','0','费司摄影告诉你西安哪家婚纱摄影好','','','admin','1','0','','0','0','','0','','','','','2303','2014-10-11 16:54:56','admin','','/upload/images/201304/2303.jpg','1','1','做网站优化必须要有收录，而且一定要收录快，所以说这是一个整体过程，从网站建设到网站的运营，这个过程都离不了优化策略，每个环节都必需有优化思惟。\r\n　　1.内容最好是原创。一个新站点，文章质量非常重要，蜘蛛是喜新厌旧的东西，对一个站点内容质量越高，抓取你网站的次数也会越高。可是有些新站长实在写不出丰富原创内容，可以选择伪原创，切忌不要完全的采集别人的文章，伪原创是指看别人写的原创文章，结合几个人所写同类型的文章，在结合自己的观点，用自己的话描述出来。别以为调换一下文章顺序，替换一些关键词就是一篇新文章，现在的百度算法越来越精准，这种采集方式已经是过去式了，还是倡导原创内容。\r\n　　2.要迎合用户需求来写。在做网站内容是，要分析用户的需求，迎合用户的需求去写网站内容。因为在互联网上有大量相似的文章，你再去写类似的文章，搜索引擎为什么要收录你的文章给予排名呢?所以做网站内容的时候要考虑到是否用户需要的，网站内容是否新颖。可以登入商标注册网站都是很专业的商标资讯文章3.文章定时更新。每日准时更新网站内容，每天都能让蜘蛛有东西吃，满意而归。假如蜘蛛今天有东西吃，明天没东西吃，后天也没东西吃，没准蜘蛛不来你的网站了。发完一篇文章后，最好到百度站长平台抓取诊断一下，看文章抓取是否显示正常。\r\n　　4.网站地图。一般蜘蛛要来抓取你的网站首先看的你的网站地图Sitemap，再以它为导航爬行你的网站，一个新站最容易忽视网站地图，网站地图能更好的引导蜘蛛来抓取我们的网站，提高网站收录速度。每更新一篇文章之后，立刻生成地图传到网站根目录。\r\n　　5.发布外链。到各大高权重外链平台(达到秒收效果最佳)发布外链，例如搜外SEO论坛，A5站长，28推等平台，吸引蜘蛛来抓取网站的文章，也是能加快网站文章收录速度。发外链每天要平稳，不能大跌大增，某某大牛说，一天最少要发10-30条外链。\r\n　　6.文章内链。一个页面要被收录，首先要能够被搜索引擎蜘蛛爬行到，蜘蛛的爬行轨迹是顺着一个链接到另一个链接，想让搜索引擎蜘蛛更好地爬行，在你在文章适当位置增加些文章的锚文本链接，这样能有效缩短蜘蛛的抓取网站内容时间，有效提高文章的收录率。如果是新站长建议不要做内链，一个不注意形成死链断链，蜘蛛就无从爬起，那就更别谈网站文章收录了。\r\n　　7.提交Sitemap地图。可以到各大搜索引擎站长平台提交网站地图URL，使搜索引擎更好的对网站页面进行收录。千万要记住在robots里面写上你网站Sitemap的地址，因为蜘蛛来抓取网站时，首先看robots，这样更好的让搜索引擎蜘蛛抓取我们网站。\r\n　　坚持这7项，想不获得百度收录都难了，这就是让你网站在排名中靠前的7大技巧。','0','<p>做网站优化必须要有收录，而且一定要收录快，所以说这是一个整体过程，从网站建设到网站的运营，这个过程都离不了优化策略，每个环节都必需有优化思惟。</p><div>　　1.内容最好是原创。一个新站点，文章质量非常重要，蜘蛛是喜新厌旧的东西，对一个站点内容质量越高，抓取你网站的次数也会越高。可是有些新站长实在写不出丰富原创内容，可以选择伪原创，切忌不要完全的采集别人的文章，伪原创是指看别人写的原创文章，结合几个人所写同类型的文章，在结合自己的观点，用自己的话描述出来。别以为调换一下文章顺序，替换一些关键词就是一篇新文章，现在的百度算法越来越精准，这种采集方式已经是过去式了，还是倡导原创内容。</div><div>　　2.要迎合用户需求来写。在做网站内容是，要分析用户的需求，迎合用户的需求去写网站内容。因为在互联网上有大量相似的文章，你再去写类似的文章，搜索引擎为什么要收录你的文章给予排名呢?所以做网站内容的时候要考虑到是否用户需要的，网站内容是否新颖。可以登入商标注册网站都是很专业的商标资讯文章3.文章定时更新。每日准时更新网站内容，每天都能让蜘蛛有东西吃，满意而归。假如蜘蛛今天有东西吃，明天没东西吃，后天也没东西吃，没准蜘蛛不来你的网站了。发完一篇文章后，最好到百度站长平台抓取诊断一下，看文章抓取是否显示正常。</div><div>　　4.网站地图。一般蜘蛛要来抓取你的网站首先看的你的网站地图Sitemap，再以它为导航爬行你的网站，一个新站最容易忽视网站地图，网站地图能更好的引导蜘蛛来抓取我们的网站，提高网站收录速度。每更新一篇文章之后，立刻生成地图传到网站根目录。</div><div>　　5.发布外链。到各大高权重外链平台(达到秒收效果最佳)发布外链，例如搜外SEO论坛，A5站长，28推等平台，吸引蜘蛛来抓取网站的文章，也是能加快网站文章收录速度。发外链每天要平稳，不能大跌大增，某某大牛说，一天最少要发10-30条外链。</div><div>　　6.文章内链。一个页面要被收录，首先要能够被搜索引擎蜘蛛爬行到，蜘蛛的爬行轨迹是顺着一个链接到另一个链接，想让搜索引擎蜘蛛更好地爬行，在你在文章适当位置增加些文章的锚文本链接，这样能有效缩短蜘蛛的抓取网站内容时间，有效提高文章的收录率。如果是新站长建议不要做内链，一个不注意形成死链断链，蜘蛛就无从爬起，那就更别谈网站文章收录了。</div><div>　　7.提交Sitemap地图。可以到各大搜索引擎站长平台提交网站地图URL，使搜索引擎更好的对网站页面进行收录。千万要记住在robots里面写上你网站Sitemap的地址，因为蜘蛛来抓取网站时，首先看robots，这样更好的让搜索引擎蜘蛛抓取我们网站。</div><div>　　坚持这7项，想不获得百度收录都难了，这就是让你网站在排名中靠前的7大技巧。</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('55','15','0','情侣花19万日元日本拍\"轻婚纱\" 照片引吐槽','','','admin','1','0','','0','0','','0','','','','','2302','2014-10-11 16:55:54','admin','','/upload/images/201304/2302.jpg','1','1','用户体验一直是我们网站的核心数据，网站没有用户那么网站也会被百度抛弃，所以我么一定要去努力提升用户体验度，这一直是百度所传递给我们的意思，一直让我们只要做好用户体验，那么你就一定能得到百度的喜欢，然而我们却这么相信了百度的片面之词。因为网站出了用户体验还有一个很重要的本心就是网站关键词排名。\r\n　　如果我们网站关键词没有一个好的排名，去强调用户体验显然有些枉然，因为我们的用户还是需要通过百度搜索引擎进入我们的网站，如果你连这个通道口都放弃了，那么你的网站将会是一个没有活力的网站，所以今天，在这里给大家介绍关键词排名的相关因素。\r\n　　一、发外链说到发外链，相信seo最熟悉不过了，笔者曾光红从2007年做个人站长，也一直过着发外链的生活，但如今百度搜索引擎对于外链的管制是非常的严格，有些论坛和网站也都杜绝带外链，导致很多很多的外链专员都无法下手，后来转到投稿给chinaz等大网站。当然发外链的难处并非如此，详情以下：\r\n　　1、 页面权重的影响。\r\n　　我们都知道网站的每一个页面都是有一定的权重值，所以我们所发的外链的权重值是根据页面的权重值来衡量的。所以我们在发外链一定要选择高权重的页面。\r\n　　2、 页面导出值。\r\n　　当外链页面的权重值为0.2时，算法是要以0.2在计算出该页面的内链和外链后剩下的权重值才可能会导入你所发的外链。所以说你所发的外链权重值是非常的小。因为内链和外链都会瓜分我们的权重，所以一般一个页面内链最好不多为5条。比如：我在chinaz投稿一文章后，我只带了一条3u推论坛的外链。那么我这一条外链绝对要比带5条外链所导出的权重要高的多。\r\n　　二、网站内链页面内链的插入主要还是以用户的求为主要的。当我们写完一篇文章后，我们在插入内链推荐的时候就要想到用户看到这里的时候还会想去看什么内容，这就要我们去琢磨用户的心理。对于用户比较有价值推荐我们可以加上锚文本链接。这样能提升用户体验度的同时还能增加关键词的内链权重。\r\n　　三、网站内容内容是一个比较常聊到的话题，因为我们也总是在强调说要怎么去写原创文章，今天我所说的内容不单单是指文字内容。更是包括网站所有内容。接下来我就简单的说几点。\r\n　　1、 页面速度。网站的浏览速度是一个非常重要的因素，这关系到用户体验问题，更是关系到网站关键词排名的一个问题。所以网站打开速度一定要快。\r\n　　2、 页面设计。通常对于我们中国人来说，我们看网页都是喜欢从上往下，从左往右，所以我们要把网站的特色更好的展现给用户。\r\n　　3、 页面无限制。这种情况多数于论坛，3u推论坛支持访客评论，但有些论坛看贴都是需要回复内容的，这个限制其实是让人反感。\r\n　　4、 图文并茂。纯文字可能已经过去了，为了用户更好的浏览你的页面，所以你要在文中合理增加图片或者是视频什么的。\r\n　　最后总结：尤其是我们是新站的站长们一定要遵守搜索引擎的原则才会有自己的出路，我们在做用户体验的同时更不能忘记我们需要的更是网站关键词排名！','0','<p>用户体验一直是我们网站的核心数据，网站没有用户那么网站也会被百度抛弃，所以我么一定要去努力提升用户体验度，这一直是百度所传递给我们的意思，一直让我们只要做好用户体验，那么你就一定能得到百度的喜欢，然而我们却这么相信了百度的片面之词。因为网站出了用户体验还有一个很重要的本心就是网站关键词排名。</p><div>　　如果我们网站关键词没有一个好的排名，去强调用户体验显然有些枉然，因为我们的用户还是需要通过百度搜索引擎进入我们的网站，如果你连这个通道口都放弃了，那么你的网站将会是一个没有活力的网站，所以今天，在这里给大家介绍关键词排名的相关因素。</div><div>　　一、发外链说到发外链，相信seo最熟悉不过了，笔者曾光红从2007年做个人站长，也一直过着发外链的生活，但如今百度搜索引擎对于外链的管制是非常的严格，有些论坛和网站也都杜绝带外链，导致很多很多的外链专员都无法下手，后来转到投稿给chinaz等大网站。当然发外链的难处并非如此，详情以下：</div><div>　　1、 页面权重的影响。</div><div>　　我们都知道网站的每一个页面都是有一定的权重值，所以我们所发的外链的权重值是根据页面的权重值来衡量的。所以我们在发外链一定要选择高权重的页面。</div><div>　　2、 页面导出值。</div><div>　　当外链页面的权重值为0.2时，算法是要以0.2在计算出该页面的内链和外链后剩下的权重值才可能会导入你所发的外链。所以说你所发的外链权重值是非常的小。因为内链和外链都会瓜分我们的权重，所以一般一个页面内链最好不多为5条。比如：我在chinaz投稿一文章后，我只带了一条3u推论坛的外链。那么我这一条外链绝对要比带5条外链所导出的权重要高的多。</div><div>　　二、网站内链页面内链的插入主要还是以用户的求为主要的。当我们写完一篇文章后，我们在插入内链推荐的时候就要想到用户看到这里的时候还会想去看什么内容，这就要我们去琢磨用户的心理。对于用户比较有价值推荐我们可以加上锚文本链接。这样能提升用户体验度的同时还能增加关键词的内链权重。</div><div>　　三、网站内容内容是一个比较常聊到的话题，因为我们也总是在强调说要怎么去写原创文章，今天我所说的内容不单单是指文字内容。更是包括网站所有内容。接下来我就简单的说几点。</div><div>　　1、 页面速度。网站的浏览速度是一个非常重要的因素，这关系到用户体验问题，更是关系到网站关键词排名的一个问题。所以网站打开速度一定要快。</div><div>　　2、 页面设计。通常对于我们中国人来说，我们看网页都是喜欢从上往下，从左往右，所以我们要把网站的特色更好的展现给用户。</div><div>　　3、 页面无限制。这种情况多数于论坛，3u推论坛支持访客评论，但有些论坛看贴都是需要回复内容的，这个限制其实是让人反感。</div><div>　　4、 图文并茂。纯文字可能已经过去了，为了用户更好的浏览你的页面，所以你要在文中合理增加图片或者是视频什么的。</div><div>　　最后总结：尤其是我们是新站的站长们一定要遵守搜索引擎的原则才会有自己的出路，我们在做用户体验的同时更不能忘记我们需要的更是网站关键词排名！</div>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('56','15','0','去哪家拍好告诉你拍照关于眼睛的常识','','','admin','1','4','','0','0','','0','','','','','2301','2014-10-11 16:56:57','admin','','/upload/images/201304/2301.jpg','1','1','随着互联网的越来越成熟，网络营销的风头逐渐开始盖过传统营销了，一个普通的日子居然成了电商一年中成交最多的节日，这无疑是电商们的成功。在企业利用网站营销的今天，数据分析变得越来越重要，包括认知企业的主要用户群体、优化品牌的曝光率，提升产品转化等，今天笔者分享下网站常见的数据分析。\r\n　　一、网站来路的有效流量    信息来源：\r\n　　一个营销类型的网站，流量来源包括了新闻资讯的流量，产品页面的流量等。一般情况下我们的资讯页面的流量转化率要比产品页面流量转化率低，这一个可以直接使用站长统计在后台看。对企业来说，产品页的流量就是有效的，还有企业的产品留言板，一般对你产品没兴趣也就不会问你的产品，这部分流量转化率也不低。\r\n　　二、网站创造什么样的内容才能让用户更关注在以用户体验为主的今天，各个主流引擎都在更新算法鼓励原创的做法，并且严厉地打击垃圾网站。做站长的都应该扪心自问，检查下自己网站的内容，大概参考方法如下，看看整站内容中哪些页面有收录哪些没收录，再从没收录页面总结出一定特征，这个就是用户不太关注需要优化的部分了。    信息来源：\r\n　　三、网站该做些什么活动来催化成交用户不买你产品是因为你页面描述不精细还是产品太陌生，这些我们需要提高下认知。我们的主要目的就是卖出产品，比如把排名做上第一名这也是我们为卖出产品做出的宣传，还有在别的网站投放的专题活动，间接性地为网站引流。又或者公司在新浪的某栏目投放了硬广，并做了来路记录，做seo的此时需要为网站的多种活动流量做分析，比较哪一种产生的订单多和单价高，砍掉那些效率低的活动，节省成本留着投入别的项目。','0','<p>&nbsp;　　三亚，地处北纬18度，位于中国海南岛最南端，是地球上迷人的风景地带，四季如夏，鲜花盛开，素有“东方夏威夷”之称，堪称中国最好的旅游城市之一。</p><p>　　三亚以美丽的海上风光出名，亚龙湾、大东海、三亚湾这三大海湾是三亚主要的滨海胜地。许多海湾边椰树成林，椰梦长廊就是其中著名的观光景点。蜈支洲岛、西岛则是潜水爱好者的天堂。除了滨海风光，三亚还有丰富的热带雨林资源，亚龙湾热带天堂森林公园，呀诺达雨林文化旅游区和南湾猴岛都是三亚雨林资源的集中景区。三亚也有很多人文古迹景区，比如南山寺、大小洞天、天涯海角、鹿回头山顶公园、槟榔谷、崖州古城等。三亚还有一些科学文化展馆和园区，例如亚龙湾贝壳馆、亚龙湾蝴蝶谷、亚龙湾海底世界、三亚奇幻艺术体验馆等。</p><p>　　最佳旅行时间</p><p>　　三亚寒暑变化不大，一年四季均适合旅游，最佳旅游时间是10月到次年3月。因为这个季节北方已开始变冷，而三亚却依旧温暖宜人，你仍可以穿着夏装、沙滩鞋在阳光充沛的海滩悠闲漫步，浸润在暖暖的海水中，吃着热带水果，享受着天涯海角的浪漫。每年12月，三亚的天涯海角还会举办“国际婚庆节”，那时来到三亚，可能经历一场终生难忘的旅程。</p><p>　　穿衣指南</p><p>　　三亚气候属热带海洋季风气候。年平均气温25.4℃。不管哪个季节到三亚，都只需穿轻薄的短款棉质衣裤或长裙，冬季可以准备一件长袖外套。比基尼泳衣自然是女生们必不可少的装备。5月至11月是台风季节，建议准备好雨具。三亚常年日照强烈，防晒措施一定要做好。由于阳光强烈，太阳镜、帽子为必带物品，出门之前至少搽SPF30以上防晒霜，下海之前最好再抹一次，而且要注意一定是防水的。回去后，如果皮肤发红发痒还要擦点晒后镇定修护露，保湿喷雾、美白面膜等都可以用上。黄瓜和酸奶都属于紧急保护品，晒伤后可以抹上</p><p>　　历史</p><p>　　三亚古称“崖州”，历史悠久，人文璀灿，早在秦始皇时期设置南方三郡，崖州是其中之一的象郡的“外檄”(边界)。崖州城在宋以前为土城，南宋庆元四年(1198年)始砌砖墙，后经元、明、清三代扩建，成为一座规模较大的坚固城池。因其远离帝京、孤悬海外，自古以来三亚一直被称为“天涯海角”。唐代宰相韩瑗、名僧鉴真，宋代名相赵鼎、大臣胡铨和纺织家黄道婆等先后来过崖州，对本地区的经济文化交流和发展作出了重要的贡献。</p><p>　　装备</p><p>　　1、背囊尽量选取透气性好的。衣服最好带吸汗的、透气、快干的，不要带太多，晚上可以洗衣服，第二天一定干。如果是冬天，尽管天气暖和，最好也带件外套。</p><p>　　2、游泳用具泳衣、泳帽、水镜一定别忘了带。</p><p>　　3、现金，在三亚很少见ATM机的，现金的多少根据个人情况而定吧</p><p>　　4、相机，这个不用多说。</p><p>　　5、防晒霜：特别要带防晒指数高、防水性好的防晒霜。</p><p>　　6、带上墨镜以及帽子吧，一是为了防晒，二是拍照的时候也多个道具嘛，呵呵</p><p>　　7、至于说药品，可带些氟哌酸，罗红霉素，眼药水，酒精棉球，金嗓子，白加黑，云南白药创可贴，晕车药，开瑞坦，具体情况还是各位自己斟酌考虑，仅供参考。</p><p>　　必游景点</p><p>　　亚龙湾</p><p>　　三亚最美的海湾，水清沙白，被誉为“天下第一湾”</p><p>　　蜈支洲岛</p><p>　　可体验30余项海上和沙滩娱乐项目，是中国第一潜水基地 这里还包含景点 情人桥 白沙滩 观日岩 情人岛 《私人订制》淡水泳池 观鱼平台 生命井</p><p>　　南山文化旅游区(南山寺)</p><p>　　108米高的“南山海上观音”，是三亚礼佛必去之处 这里还包含景点 南天生态大观园 长寿谷 三十三观音堂 金玉观音 三亚南山海上观音</p><p>　　呀诺达雨林文化旅游区</p><p>　　三亚的热带雨林景点之一，保护的很好，是一处天然的巨型氧吧</p><p>　　大东海</p><p>　　三亚最早被开发，离市中心最近，最具规模的热带滨海度假区</p><p>　　景区分布图</p><p>　　行 程 推 荐</p><p>　　海岸风情6日之旅</p><p>　　行程特色：</p><p>　　临海而居：三亚连住四晚近海精品酒店180°海景房</p><p>　　聚焦热点：亚龙湾热带天堂、天涯海角、南山、蜈支洲岛、大东海、玫瑰谷一天两个点，行程多彩不劳累;</p><p>　　海岛滋味：100%全程自助餐，特别赠送价值68元/人素斋禅食(荣获全国金厨奖)</p><p>　　超值赠送：天堂森林公园观光车票、海南火山岩矿泉水1瓶/人/天</p><p>　　线路设计：</p><p>　　D1：乘坐飞机抵达三亚凤凰机场</p><p>　　D2：蜈支洲岛、亚龙湾热带天堂森林公园</p><p>　　D3：南山文化旅游区、天涯海角</p><p>　　D4：大东海、亚龙湾国家旅游度假区玫瑰谷</p><p>　　D5：自由活动</p><p>　　D6：乘坐飞机返回温馨家园</p><p>　　第 1天出发地机场 >>>> 三亚凤凰机场</p><p>　　乘机飞抵三亚，专人专车在机场接机(车程约40分钟)，赴酒店休息，海岛的迷人海岸像美人揭开了神秘的面纱，期待第二天的惊艳。</p><p>　　第 2天三亚一地</p><p>　　自助早餐后，前往《私人订制》取景拍摄地【蜈支洲岛】(车程约90分钟，游览时间不少于210分钟，含上下岛时间)，这里海岸线蜿蜒绵长，零污染的海水清澈见底，沙质洁白细腻，恍若玉带天成，尽情享受这片把明星大腕都宠坏的绝美海岸吧(岛上午餐自理);再前往电影《非诚勿扰II》拍摄地【亚龙湾热带天堂森林公园】(车程约50分钟，游览时间不少于120分钟)，在山顶俯瞰，航母基地和南中国海一览无余，一座座鸟巢星罗棋布，雨林与海岸碰撞，只在独特的“热带天堂”;晚餐后可体验三亚不夜城丰富的夜生活。</p><p>　　第 3天三亚一地</p><p>　　自助早餐后，前往国家5A级景区【南山文化旅游区】(车程约90分钟，游览时间不少于180分钟)，108米海上观音慈悲注视着这片海岸，传递福寿文化的精深与宇宙空间的深邃;游览著名的4A级景区【天涯海角】(车程约30分钟，游览时间不少于120分钟)，在天之涯、海之角，椰林婆娑、帆影点点，烟波浩瀚、水天一色，感受奇石林立、峥嵘壮观的海岸风情;晚餐后，尽情体验三亚不夜城丰富的夜生活。</p><p>　　第 4天三亚一地</p><p>　　自助早餐后，前往三亚湾集零售、餐饮、休闲娱乐于一体的大型综合性国际滨海度假商业娱乐主题街区“美丽汇” 。随后游览【大东海】(车程约40分钟，游览时间不少于150分钟)，享受一片“水暖沙白滩平”的纯净海岸。前往【亚龙湾国家旅游度假区玫瑰谷】(车程约40分钟，游览时间不少于40分钟)，尽情感受玫瑰花海、浪漫婚庆、七彩游乐、精油养生、国际风情等游览主题，品读浪漫休闲、感悟美丽人生。晚餐后可体验三亚不夜城丰富的夜生活。</p><p>　　第 5天三亚</p><p>　　睡到自然醒(请勿错过自助早餐时间)，尽情享受自由时空;(自由活动期间不含车餐及导游)</p><p>　　第 6天三亚凤凰机场 >>>> 出发地机场</p><p>　　睡到自然醒(请勿错过早餐时间)，尽情享受自由时空，结束本次愉快的 “国际旅游岛”之旅，专人送机，乘机返回温馨家园(酒店退房时间为中午12点前，可将行李寄存酒店行李部)。</p><p>　　新春快乐</p><p>　　三亚亮点</p><p>　　在第一市场做海鲜</p><p>　　第一市场每天晚上都是人山人海。这里价格实惠，而且你吃到的都是亲自挑选的新鲜海产。游客们通常会先到海鲜市场挑选，然后再找一家大排档让店家加工;或者店家也可以游客去采买海鲜，再进行加工。除了海鲜，在这里还可以吃到好多海南的特色小吃，比如炒冰、糯米糕、椰子饭、山兰酒等等。</p><p>　　喝一捧新鲜椰子汁</p><p>　　三亚有太多的椰子树，那种刚刚掉下来的椰子，直接劈开就能喝到清爽的椰汁，然后吃完里面的椰肉，才够鲜美。在这里的街道上走，只要你看到谁家小店的门口有一大堆青椰子，就说明店里面卖椰子水。你可以让店家帮你挑，然后帮你打开，每个6块钱左右，很是清凉解渴;还有已经冰镇好的椰子，是去壳的，来一份保证更加透心凉。</p><p>　　来一份抱罗粉当早餐</p><p>　　这里最受欢迎的早餐应该就算是抱罗粉了，基本上都是本地人经营，本地人光顾。因为那些正宗的老铺子看起来都不那么好看，一般游客看见了也不会去试。但一定要去尝尝，这才算是正宗的海南美味小吃。河西路上有一家其貌不扬的小店(河西路第一市场旁)是全三亚最正宗的抱罗粉食店，离第一市场很近。其实，抱罗汤粉，贵在汤好。看上去很清鲜、爽口、香甜、麻辣。很早以前，抱罗粉的汤主要是以牛骨汤为主配成的。现在，用多种原料熬汤，味道比原来鲜美得多。用这种汤，加上牛肉干、花生仁、竹笋、酸菜骨、辣椒等配料，说起来就想去吃。很过瘾。这里有人说“海鲜可以错过，抱罗粉不能少”。</p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('90','20','0','课程质量','','','admin','1','0','#000000','0','0','','0','','','','','0','2015-07-31 14:39:03','admin','','','-1','1','比同行业水平','0','<p>&nbsp;<span style=\"color: rgb(170, 170, 170); font-family: \'Microsoft YaHei\', simsun, \'Helvetica Neue\', Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;\">比同行业水平</span></p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('91','20','0','师资队伍','','','admin','1','0','#000000','0','0','','0','','','','','0','2015-07-31 14:40:52','admin','','','1','1','比同行也水平','0','<p>&nbsp;比同行也水平</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','高 38.50%','','','1');
INSERT INTO `cmseasy_archive` VALUES('92','20','0','通过率','','','admin','1','0','#000000','0','0','','0','','','','','0','2015-07-31 14:41:45','admin','','','1','1','比同行水平','0','<p>&nbsp;比同行水平</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','高 38.50%','','','1');
INSERT INTO `cmseasy_archive` VALUES('93','20','0','服务态度','','','admin','1','0','#000000','0','0','','0','','','','','0','2015-07-31 14:42:13','admin','','','1','1','比同行水平','0','<p>&nbsp;比同行水平</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','高 38.50%','','','1');
INSERT INTO `cmseasy_archive` VALUES('94','20','0','课程质量','','','admin','1','0','#000000','0','0','','0','','','','','0','2015-07-31 14:42:32','admin','','','1','1','比同行水平','0','<p>&nbsp;比同行水平</p>','0','','0','','0','0','','','','','0','','','0','a:0:{}','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','高 38.50%','','','1');
INSERT INTO `cmseasy_archive` VALUES('100','7','0','业务经理','','','admin','1','3','','0','0','','0','','','','','7002','2015-09-24 15:29:32','admin','','','1','1','','0','','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','人事部','1','热爱本职工作','2','1','无','3','20-40','不限','3000-5000','董先生','0','CMSEASYjuzOUOgQmYsUpva458','','','','1');
INSERT INTO `cmseasy_archive` VALUES('101','7','0','活动推销员','','','admin','1','3','','0','0','','0','','','','','7003','2015-09-24 15:30:58','admin','','','1','1','','0','','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','销售部','2','热爱本职工作','2','2','吃苦耐劳','2','20-40','不限','5000-8000','董先生','0','CMSEASYmk6neJp3jDgbKWr353','','','','1');
INSERT INTO `cmseasy_archive` VALUES('104','8','0','轻型钢结构别墅','','','admin','1','1','','0','0','','0','','','','','0','2016-01-22 17:01:50','admin','','/upload/images/201601/14534533625989.gif','-1','1','建房施工过程中，将轻型钢架焊接固定在地基上，然后，用普通锯条在板材上把门窗开好，再把各种板材依次镶嵌在钢架上，进行胶合固定，一幢建筑面积600多平方米的三层中型别墅，只需要12个工人，用不到一个月的时间就可完成房屋主体建筑，并且完成大部分外墙装饰和室内装饰。建造施工只需要普通建筑施工工期的六分之一，并且在整个施工建造过程中，由于建筑材料的集合利用，加上材质轻，简化了烦琐的施工工序，不必使用大型施工机械，大大减轻了工人的劳动强度。\r\n','0','<p>1、轻钢结构别墅建筑过程</p><p><br/>建房施工过程中，将轻型钢架焊接固定在地基上，然后，用普通锯条在板材上把门窗开好，再把各种板材依次镶嵌在钢架上，进行胶合固定，一幢建筑面积600多平方米的三层中型别墅，只需要12个工人，用不到一个月的时间就可完成房屋主体建筑，并且完成大部分外墙装饰和室内装饰。建造施工只需要普通建筑施工工期的六分之一，并且在整个施工建造过程中，由于建筑材料的集合利用，加上材质轻，简化了烦琐的施工工序，不必使用大型施工机械，大大减轻了工人的劳动强度。</p><p><br/>2、轻钢结构别墅的部件</p><p><br/>生产建造房屋所用的主要部品部件，有4大结构：轻型钢架结构、墙体结构、楼板结构和屋面结构。轻型钢架结构：在工厂加工后，在现场组装，具有强度高、抗震性能好、组装施工简单快捷等特点。采用高效防腐剂对钢构件表面进行防锈处理，保证了钢构件的经久耐用。由于钢架结构包裹在保温墙体内，不会产生热桥。用钢量少，重量轻，每平方米用钢20到30公斤，用钢量只有普通钢架结构房屋的60%左右，节省用钢量至少1/3。</p><p><br/>墙体结构：有外墙板、内墙板、隔墙板、保温砌块4类品种。可根据不同地区的气候温度，组合成不同的墙体。 寒冷地区组合成既保温由隔热的复合墙体，保证室内热量不被墙体吸收或渗漏，节能效果达到80%，也就是说，只需要普通建筑1/5的能源消耗就可达到室内保温需求。 在炎热地区则采用具有中空对流作用的外墙板组合成复合墙体，太阳辐射热被墙体内流动的空气带走，从而可以保持室内舒适凉爽。<br/>屋面结构：同样采取墙体板材原理设计，具有高标准的保温、隔热、隔声、防水、防潮性能，还可以根据房屋设计随意造型。<br/>楼板结构：重量轻，强度高，独有的密闭微孔结构和空气隔音层，使隔声效果达到41分贝，而且安装简便，承载力每平方米超过200公斤，远远超过普通楼板每平方米承载力150公斤的国家标准！</p><p><br/>3、轻钢结构别墅主要性能</p><p><br/>环保性：钢材及大部分材料可再生利用，符合生态建筑的要求。节能性能好（保温、隔热、隔音）先进的技术使耗能仅相当于传统住宅体系的40%，大大减少耗能费用。<br/>防腐、防虫：采用镀锌钢材，无原生木材，既防腐又免受虫蛀蚁蚀。<br/>耐火、耐久性：所有材料均为不可燃，同时考虑防火构造，达到国家防火规范。<br/>抗震、防风性：自重轻，抗震性能好，设计时充分考虑风荷载和雪荷载，可抵御暴风暴雪。</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','CMSEASYwrgOFYej1X9wByu777','','','','1');
INSERT INTO `cmseasy_archive` VALUES('115','60','0','简介内容一','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:32:59','admin','','/upload/images/201607/14694320252253.jpg','1','1','','0','','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('116','60','0','简介内容而','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:33:49','admin','','/upload/images/201607/1469432042723.jpg','1','1','','0','','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','','1');
INSERT INTO `cmseasy_archive` VALUES('119','62','0','团队成员一','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:49:59','admin','','/upload/images/201607/14694330961832.jpg','1','1','教师的职业特点，既带有历史遗传的色彩，又反映时代变迁的影响。综合二者，当代中国教师的职业特点主要有：\r\n其一，职业形象的准公共性。教师虽然不像政治家、演艺人员那样是完全的公共性人物。但也相当多的时候暴露于学生、家长、社区的注视之下，因此必须善于塑造并维护自己的积极形象。\r\n其二，职业环境的相对封闭性。\r\n其三，工作绩效的模糊性。\r\n其四，职业待遇的福利性。教师的劳动成果不能以经济指标衡量，教师的劳动待遇也带有相当的福利性，所谓福利性。一指教师的待遇相对不高，一指教师的待遇相对稳定。\r\n其五，师生关系的隐蔽不平等性。虽然从法律角度来讲，师生是平等的权利义务主体；从教育的理想追求来看，师生也应该成为平等的对话者。然而在实际中，由于传统观念的影响，尤其是教师在体力、智力、学识、社会地位等方面的优势，师生关系具有天然的不平等性。这种不平等性可能是许多人所不敢承认、不愿承认的，但它又是极其隐蔽而顽固地存在着的。','0','<p>教师的职业特点，既带有历史遗传的色彩，又反映时代变迁的影响。综合二者，当代中国教师的职业特点主要有：</p><p>其一，职业形象的准公共性。教师虽然不像政治家、演艺人员那样是完全的公共性人物。但也相当多的时候暴露于学生、家长、社区的注视之下，因此必须善于塑造并维护自己的积极形象。</p><p>其二，职业环境的相对封闭性。</p><p>其三，工作绩效的模糊性。</p><p>其四，职业待遇的福利性。教师的劳动成果不能以经济指标衡量，教师的劳动待遇也带有相当的福利性，所谓福利性。一指教师的待遇相对不高，一指教师的待遇相对稳定。</p><p>其五，师生关系的隐蔽不平等性。虽然从法律角度来讲，师生是平等的权利义务主体；从教育的理想追求来看，师生也应该成为平等的对话者。然而在实际中，由于传统观念的影响，尤其是教师在体力、智力、学识、社会地位等方面的优势，师生关系具有天然的不平等性。这种不平等性可能是许多人所不敢承认、不愿承认的，但它又是极其隐蔽而顽固地存在着的。</p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','创办人','1');
INSERT INTO `cmseasy_archive` VALUES('120','62','0','团队成员二','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:51:42','admin','','/upload/images/201607/14694331410117.jpg','1','1','“教师”最初指年老资深的学者，如《史记·孟子荀卿列传》：“齐襄王时，而荀卿最为老师。”后来把教学生的人也称为“老师”。如金代元好问《示侄孙伯安》一诗：“伯安入小学，颖悟非凡儿。属句有夙性，说字\r\n教师授课\r\n教师授课\r\n惊老师。”中国有悠久的尊师重道的传统，古代就有“人有三尊，君、父、师”的说法。《吕氏春秋·尊师》云：“生则谨养，死则敬祭，此尊师之道也。”古人席地而坐，以西边为尊，故尊称家庭教师为“西席”和“西宾”。\r\n尊称\r\n中国有悠久的尊师重道的传统，中国古代教师的称谓很多，其中尊称有以下五种：\r\n老师：原是宋元时代对地方小学教师的称谓。金代文学家元好问《示侄孙伯安》诗云：“伯安入小学，颖悟非凡貌。属句有夙性，说字惊老师。”后专指学生对教师的尊称。\r\n明清以来，一般称教师为“先生”。直至19世纪末20世纪初，辛亥革命元老、中国现代教育奠基人何子渊、丘逢甲等人将西学（美式教育）引入中国，创办新式学校后，便开始在“学生操行规范”里面明确将“教师”称谓定义为“老师”。但绝大部分学生约定俗成将“先生”改称为“老师”，则是从国民政府时代开始，并一直沿用至今。','0','<p>“教师”最初指年老资深的学者，如《史记·孟子荀卿列传》：“齐襄王时，而荀卿最为老师。”后来把教学生的人也称为“老师”。如金代元好问《示侄孙伯安》一诗：“伯安入小学，颖悟非凡儿。属句有夙性，说字</p><p>教师授课</p><p>惊老师。”中国有悠久的尊师重道的传统，古代就有“人有三尊，君、父、师”的说法。《吕氏春秋·尊师》云：“生则谨养，死则敬祭，此尊师之道也。”古人席地而坐，以西边为尊，故尊称家庭教师为“西席”和“西宾”。</p><p>尊称</p><p>中国有悠久的尊师重道的传统，中国古代教师的称谓很多，其中尊称有以下五种：</p><p>老师：原是宋元时代对地方小学教师的称谓。金代文学家元好问《示侄孙伯安》诗云：“伯安入小学，颖悟非凡貌。属句有夙性，说字惊老师。”后专指学生对教师的尊称。</p><p>明清以来，一般称教师为“先生”。直至19世纪末20世纪初，辛亥革命元老、中国现代教育奠基人何子渊、丘逢甲等人将西学（美式教育）引入中国，创办新式学校后，便开始在“学生操行规范”里面明确将“教师”称谓定义为“老师”。但绝大部分学生约定俗成将“先生”改称为“老师”，则是从国民政府时代开始，并一直沿用至今。</p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','首席设计师','1');
INSERT INTO `cmseasy_archive` VALUES('121','62','0','团队成员三','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:52:31','admin','','/upload/images/201607/14694331924675.jpg','1','1','1. 教授歌曲、戏曲、武术等技艺的人。 元 张国宾 《罗李郎》第三折：“人都道你是教师，人都道你是浪子。上\r\n教师节\r\n教师节\r\n长街百十样风流事，到家中一千场 五代 史。”《金瓶梅词话》第九十回：“ 月娘 众人躧着高阜，把眼观看，看见人山人海围着，都看教师走马耍解的。” 清 王夫之 《姜斋诗话》卷二：“诗文立门庭使人学已，人一学即似者，自诩为‘大家’，为‘才子’，亦艺苑教师而已。”\r\n2. 向学生传授知识、执行教学任务的人。王力《推广普通话的三个问题》：“学校里教师必须用普通话讲课。','0','<p>1. 教授歌曲、戏曲、武术等技艺的人。 元 张国宾 《罗李郎》第三折：“人都道你是教师，人都道你是浪子。上</p><p>教师节</p><p>长街百十样风流事，到家中一千场 五代 史。”《金瓶梅词话》第九十回：“ 月娘 众人躧着高阜，把眼观看，看见人山人海围着，都看教师走马耍解的。” 清 王夫之 《姜斋诗话》卷二：“诗文立门庭使人学已，人一学即似者，自诩为‘大家’，为‘才子’，亦艺苑教师而已。”</p><p>2. 向学生传授知识、执行教学任务的人。王力《推广普通话的三个问题》：“学校里教师必须用普通话讲课。</p><p><br/></p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','首席设计师','1');
INSERT INTO `cmseasy_archive` VALUES('122','62','0','团队成员四','','','admin','1','0','','0','0','','0','','','','','0','2016-07-25 15:53:21','admin','','/upload/images/201607/14694332400206.jpg','1','1','教师一词有两重含义，既指一种社会角色，又指这一角色的承担者。 广义的教师是泛指传授知识、经验的人，狭义的教师是指受过专门教育和训练的人，并在教育（学校）中担任教育、教学工作的人。（履行教育教学的专业人员。承担教书育人，培养社会主义事业建设者和接班人，提高民族素质的使命——来源于《中华人民共和国教师法》）','0','<p>教师一词有两重含义，既指一种社会角色，又指这一角色的承担者。 广义的教师是泛指传授知识、经验的人，狭义的教师是指受过专门教育和训练的人，并在教育（学校）中担任教育、教学工作的人。（履行教育教学的专业人员。承担教书育人，培养社会主义事业建设者和接班人，提高民族素质的使命——来源于《中华人民共和国教师法》）</p>','0','0','0','','0','0','','','','','0','','','0','N;','','0','0','0','0000-00-00','','','','','','','','','','','','','0','','','','设计师','1');


INSERT INTO `cmseasy_b_arctag` VALUES('9','20','0');
INSERT INTO `cmseasy_b_arctag` VALUES('3','21','0');
INSERT INTO `cmseasy_b_arctag` VALUES('4','22','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1341','19','0');
INSERT INTO `cmseasy_b_arctag` VALUES('7','23','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1335','24','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1333','10','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1331','11','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1307','9','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1336','12','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1337','13','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1338','14','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1306','15','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1339','16','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1340','17','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1334','18','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1342','27','0');
INSERT INTO `cmseasy_b_arctag` VALUES('250','28','0');
INSERT INTO `cmseasy_b_arctag` VALUES('251','29','0');
INSERT INTO `cmseasy_b_arctag` VALUES('252','30','0');
INSERT INTO `cmseasy_b_arctag` VALUES('253','31','0');
INSERT INTO `cmseasy_b_arctag` VALUES('698','32','0');
INSERT INTO `cmseasy_b_arctag` VALUES('259','33','0');
INSERT INTO `cmseasy_b_arctag` VALUES('260','34','0');
INSERT INTO `cmseasy_b_arctag` VALUES('261','35','0');
INSERT INTO `cmseasy_b_arctag` VALUES('262','36','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1311','37','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1308','8','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1309','7','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1310','6','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1312','5','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1313','38','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1287','39','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1314','40','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1289','41','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1315','42','0');
INSERT INTO `cmseasy_b_arctag` VALUES('112','43','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1316','44','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1292','45','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1293','46','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1294','47','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1295','48','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1324','49','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1323','50','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1322','51','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1321','52','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1320','53','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1319','54','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1318','55','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1317','56','0');
INSERT INTO `cmseasy_b_arctag` VALUES('199','57','0');
INSERT INTO `cmseasy_b_arctag` VALUES('200','58','0');
INSERT INTO `cmseasy_b_arctag` VALUES('201','59','0');
INSERT INTO `cmseasy_b_arctag` VALUES('202','60','0');
INSERT INTO `cmseasy_b_arctag` VALUES('203','61','0');
INSERT INTO `cmseasy_b_arctag` VALUES('204','62','0');
INSERT INTO `cmseasy_b_arctag` VALUES('205','63','0');
INSERT INTO `cmseasy_b_arctag` VALUES('206','64','0');
INSERT INTO `cmseasy_b_arctag` VALUES('207','65','0');
INSERT INTO `cmseasy_b_arctag` VALUES('948','66','0');
INSERT INTO `cmseasy_b_arctag` VALUES('949','67','0');
INSERT INTO `cmseasy_b_arctag` VALUES('951','68','0');
INSERT INTO `cmseasy_b_arctag` VALUES('952','69','0');
INSERT INTO `cmseasy_b_arctag` VALUES('954','70','0');
INSERT INTO `cmseasy_b_arctag` VALUES('955','71','0');
INSERT INTO `cmseasy_b_arctag` VALUES('956','72','0');
INSERT INTO `cmseasy_b_arctag` VALUES('957','73','0');
INSERT INTO `cmseasy_b_arctag` VALUES('960','74','0');
INSERT INTO `cmseasy_b_arctag` VALUES('961','75','0');
INSERT INTO `cmseasy_b_arctag` VALUES('962','76','0');
INSERT INTO `cmseasy_b_arctag` VALUES('963','77','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1095','78','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1096','79','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1097','80','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1098','81','0');
INSERT INTO `cmseasy_b_arctag` VALUES('526','82','0');
INSERT INTO `cmseasy_b_arctag` VALUES('527','83','0');
INSERT INTO `cmseasy_b_arctag` VALUES('528','84','0');
INSERT INTO `cmseasy_b_arctag` VALUES('529','85','0');
INSERT INTO `cmseasy_b_arctag` VALUES('530','86','0');
INSERT INTO `cmseasy_b_arctag` VALUES('531','87','0');
INSERT INTO `cmseasy_b_arctag` VALUES('532','88','0');
INSERT INTO `cmseasy_b_arctag` VALUES('533','89','0');
INSERT INTO `cmseasy_b_arctag` VALUES('171','90','0');
INSERT INTO `cmseasy_b_arctag` VALUES('172','91','0');
INSERT INTO `cmseasy_b_arctag` VALUES('173','92','0');
INSERT INTO `cmseasy_b_arctag` VALUES('174','93','0');
INSERT INTO `cmseasy_b_arctag` VALUES('175','94','0');
INSERT INTO `cmseasy_b_arctag` VALUES('806','15','1');
INSERT INTO `cmseasy_b_arctag` VALUES('238','18','1');
INSERT INTO `cmseasy_b_arctag` VALUES('239','10','1');
INSERT INTO `cmseasy_b_arctag` VALUES('263','95','0');
INSERT INTO `cmseasy_b_arctag` VALUES('264','96','0');
INSERT INTO `cmseasy_b_arctag` VALUES('265','97','0');
INSERT INTO `cmseasy_b_arctag` VALUES('782','25','0');
INSERT INTO `cmseasy_b_arctag` VALUES('272','98','0');
INSERT INTO `cmseasy_b_arctag` VALUES('273','99','0');
INSERT INTO `cmseasy_b_arctag` VALUES('277','100','0');
INSERT INTO `cmseasy_b_arctag` VALUES('278','101','0');
INSERT INTO `cmseasy_b_arctag` VALUES('276','102','0');
INSERT INTO `cmseasy_b_arctag` VALUES('426','103','0');
INSERT INTO `cmseasy_b_arctag` VALUES('880','104','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1085','105','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1086','106','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1087','107','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1089','108','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1079','109','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1080','110','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1081','111','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1082','112','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1083','113','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1084','114','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1123','115','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1124','116','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1125','117','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1126','118','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1231','119','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1232','120','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1233','121','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1234','122','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1133','123','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1134','124','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1164','125','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1165','126','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1166','127','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1167','128','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1168','129','0');
INSERT INTO `cmseasy_b_arctag` VALUES('1169','130','0');

INSERT INTO `cmseasy_b_area` VALUES('82','北京市','0');
INSERT INTO `cmseasy_b_area` VALUES('83','天津市','0');
INSERT INTO `cmseasy_b_area` VALUES('84','河北省','0');
INSERT INTO `cmseasy_b_area` VALUES('85','山西省','0');
INSERT INTO `cmseasy_b_area` VALUES('86','内蒙古自治区','0');
INSERT INTO `cmseasy_b_area` VALUES('87','辽宁省','0');
INSERT INTO `cmseasy_b_area` VALUES('88','吉林省','0');
INSERT INTO `cmseasy_b_area` VALUES('89','黑龙江省','0');
INSERT INTO `cmseasy_b_area` VALUES('90','上海市','0');
INSERT INTO `cmseasy_b_area` VALUES('91','江苏省','0');
INSERT INTO `cmseasy_b_area` VALUES('92','浙江省','0');
INSERT INTO `cmseasy_b_area` VALUES('93','安徽省','0');
INSERT INTO `cmseasy_b_area` VALUES('94','福建省','0');
INSERT INTO `cmseasy_b_area` VALUES('95','江西省','0');
INSERT INTO `cmseasy_b_area` VALUES('96','山东省','0');
INSERT INTO `cmseasy_b_area` VALUES('97','河南省','0');
INSERT INTO `cmseasy_b_area` VALUES('98','湖北省','0');
INSERT INTO `cmseasy_b_area` VALUES('99','湖南省','0');
INSERT INTO `cmseasy_b_area` VALUES('100','广东省','0');
INSERT INTO `cmseasy_b_area` VALUES('101','广西壮族自治区','0');
INSERT INTO `cmseasy_b_area` VALUES('102','海南省','0');
INSERT INTO `cmseasy_b_area` VALUES('103','重庆市','0');
INSERT INTO `cmseasy_b_area` VALUES('104','四川省','0');
INSERT INTO `cmseasy_b_area` VALUES('105','贵州省','0');
INSERT INTO `cmseasy_b_area` VALUES('106','云南省','0');
INSERT INTO `cmseasy_b_area` VALUES('107','西藏自治区','0');
INSERT INTO `cmseasy_b_area` VALUES('108','陕西省','0');
INSERT INTO `cmseasy_b_area` VALUES('109','甘肃省','0');
INSERT INTO `cmseasy_b_area` VALUES('110','青海省','0');
INSERT INTO `cmseasy_b_area` VALUES('111','宁夏回族自治区','0');
INSERT INTO `cmseasy_b_area` VALUES('112','新疆维吾尔自治区','0');
INSERT INTO `cmseasy_b_area` VALUES('113','台湾省','0');
INSERT INTO `cmseasy_b_area` VALUES('114','香港特别行政区','0');
INSERT INTO `cmseasy_b_area` VALUES('115','澳门特别行政区','0');
INSERT INTO `cmseasy_b_area` VALUES('116','北京辖区','82');
INSERT INTO `cmseasy_b_area` VALUES('117','北京辖县','82');
INSERT INTO `cmseasy_b_area` VALUES('118','天津辖区','83');
INSERT INTO `cmseasy_b_area` VALUES('119','天津辖县','83');
INSERT INTO `cmseasy_b_area` VALUES('120','重庆辖区','103');
INSERT INTO `cmseasy_b_area` VALUES('121','重庆辖县','103');
INSERT INTO `cmseasy_b_area` VALUES('122','上海辖区','90');
INSERT INTO `cmseasy_b_area` VALUES('123','上海辖县','90');
INSERT INTO `cmseasy_b_area` VALUES('124','东城区','116');
INSERT INTO `cmseasy_b_area` VALUES('125','西城区','116');
INSERT INTO `cmseasy_b_area` VALUES('126','崇文区','116');
INSERT INTO `cmseasy_b_area` VALUES('127','宣武区','116');
INSERT INTO `cmseasy_b_area` VALUES('128','朝阳区','116');
INSERT INTO `cmseasy_b_area` VALUES('129','丰台区','116');
INSERT INTO `cmseasy_b_area` VALUES('130','石景山区','116');
INSERT INTO `cmseasy_b_area` VALUES('131','海淀区','116');
INSERT INTO `cmseasy_b_area` VALUES('132','门头沟区','116');
INSERT INTO `cmseasy_b_area` VALUES('133','房山区','116');
INSERT INTO `cmseasy_b_area` VALUES('134','通州区','116');
INSERT INTO `cmseasy_b_area` VALUES('135','顺义区','116');
INSERT INTO `cmseasy_b_area` VALUES('136','昌平区','116');
INSERT INTO `cmseasy_b_area` VALUES('137','大兴区','116');
INSERT INTO `cmseasy_b_area` VALUES('138','怀柔区','116');
INSERT INTO `cmseasy_b_area` VALUES('139','平谷区','116');
INSERT INTO `cmseasy_b_area` VALUES('140','密云县','117');
INSERT INTO `cmseasy_b_area` VALUES('141','延庆县','117');
INSERT INTO `cmseasy_b_area` VALUES('142','和平区','118');
INSERT INTO `cmseasy_b_area` VALUES('143','河东区','118');
INSERT INTO `cmseasy_b_area` VALUES('144','河西区','118');
INSERT INTO `cmseasy_b_area` VALUES('145','南开区','118');
INSERT INTO `cmseasy_b_area` VALUES('146','河北区','118');
INSERT INTO `cmseasy_b_area` VALUES('147','红桥区','118');
INSERT INTO `cmseasy_b_area` VALUES('148','塘沽区','118');
INSERT INTO `cmseasy_b_area` VALUES('149','汉沽区','118');
INSERT INTO `cmseasy_b_area` VALUES('150','大港区','118');
INSERT INTO `cmseasy_b_area` VALUES('151','东丽区','118');
INSERT INTO `cmseasy_b_area` VALUES('152','西青区','118');
INSERT INTO `cmseasy_b_area` VALUES('153','北辰区','118');
INSERT INTO `cmseasy_b_area` VALUES('154','津南区','118');
INSERT INTO `cmseasy_b_area` VALUES('155','武清区','118');
INSERT INTO `cmseasy_b_area` VALUES('156','宝坻区','118');
INSERT INTO `cmseasy_b_area` VALUES('157','静海县','119');
INSERT INTO `cmseasy_b_area` VALUES('158','宁河县','119');
INSERT INTO `cmseasy_b_area` VALUES('159','蓟县','119');
INSERT INTO `cmseasy_b_area` VALUES('160','黄浦区','122');
INSERT INTO `cmseasy_b_area` VALUES('161','卢湾区','122');
INSERT INTO `cmseasy_b_area` VALUES('162','徐汇区','122');
INSERT INTO `cmseasy_b_area` VALUES('163','徐家汇','122');
INSERT INTO `cmseasy_b_area` VALUES('164','长宁区','122');
INSERT INTO `cmseasy_b_area` VALUES('165','静安区','122');
INSERT INTO `cmseasy_b_area` VALUES('166','普陀区','122');
INSERT INTO `cmseasy_b_area` VALUES('167','闸北区','122');
INSERT INTO `cmseasy_b_area` VALUES('168','虹口区','122');
INSERT INTO `cmseasy_b_area` VALUES('169','杨浦区','122');
INSERT INTO `cmseasy_b_area` VALUES('170','宝山区','122');
INSERT INTO `cmseasy_b_area` VALUES('171','闵行区','122');
INSERT INTO `cmseasy_b_area` VALUES('172','嘉定区','122');
INSERT INTO `cmseasy_b_area` VALUES('173','浦东新区','122');
INSERT INTO `cmseasy_b_area` VALUES('174','松江区','122');
INSERT INTO `cmseasy_b_area` VALUES('175','金山区','122');
INSERT INTO `cmseasy_b_area` VALUES('176','青浦区','122');
INSERT INTO `cmseasy_b_area` VALUES('177','南汇区','122');
INSERT INTO `cmseasy_b_area` VALUES('178','奉贤区','122');
INSERT INTO `cmseasy_b_area` VALUES('179','崇明县','123');
INSERT INTO `cmseasy_b_area` VALUES('180','渝中区','120');
INSERT INTO `cmseasy_b_area` VALUES('181','大渡口区','120');
INSERT INTO `cmseasy_b_area` VALUES('182','江北区','120');
INSERT INTO `cmseasy_b_area` VALUES('183','沙坪坝区','120');
INSERT INTO `cmseasy_b_area` VALUES('184','九龙坡区','120');
INSERT INTO `cmseasy_b_area` VALUES('185','南岸区','120');
INSERT INTO `cmseasy_b_area` VALUES('186','北碚区','120');
INSERT INTO `cmseasy_b_area` VALUES('187','万盛区','120');
INSERT INTO `cmseasy_b_area` VALUES('188','双桥区','120');
INSERT INTO `cmseasy_b_area` VALUES('189','渝北区','120');
INSERT INTO `cmseasy_b_area` VALUES('190','巴南区','120');
INSERT INTO `cmseasy_b_area` VALUES('191','万州区','120');
INSERT INTO `cmseasy_b_area` VALUES('192','涪陵区','120');
INSERT INTO `cmseasy_b_area` VALUES('193','黔江区','120');
INSERT INTO `cmseasy_b_area` VALUES('194','长寿区','120');
INSERT INTO `cmseasy_b_area` VALUES('195','綦江县','121');
INSERT INTO `cmseasy_b_area` VALUES('196','潼南县','121');
INSERT INTO `cmseasy_b_area` VALUES('197','荣昌县','121');
INSERT INTO `cmseasy_b_area` VALUES('198','璧山县','121');
INSERT INTO `cmseasy_b_area` VALUES('199','大足县','121');
INSERT INTO `cmseasy_b_area` VALUES('200','铜梁县','121');
INSERT INTO `cmseasy_b_area` VALUES('201','梁平县','121');
INSERT INTO `cmseasy_b_area` VALUES('202','城口县','121');
INSERT INTO `cmseasy_b_area` VALUES('203','垫江县','121');
INSERT INTO `cmseasy_b_area` VALUES('204','武隆县','121');
INSERT INTO `cmseasy_b_area` VALUES('205','丰都县','121');
INSERT INTO `cmseasy_b_area` VALUES('206','奉节县','121');
INSERT INTO `cmseasy_b_area` VALUES('207','开县','121');
INSERT INTO `cmseasy_b_area` VALUES('208','云阳县','121');
INSERT INTO `cmseasy_b_area` VALUES('209','忠县','121');
INSERT INTO `cmseasy_b_area` VALUES('210','巫溪县','121');
INSERT INTO `cmseasy_b_area` VALUES('211','巫山县','121');
INSERT INTO `cmseasy_b_area` VALUES('212','石柱县','121');
INSERT INTO `cmseasy_b_area` VALUES('213','秀山县','121');
INSERT INTO `cmseasy_b_area` VALUES('214','酉阳县','121');
INSERT INTO `cmseasy_b_area` VALUES('215','彭水县','121');
INSERT INTO `cmseasy_b_area` VALUES('216','重庆辖市','103');
INSERT INTO `cmseasy_b_area` VALUES('217','永川市','216');
INSERT INTO `cmseasy_b_area` VALUES('218','合川市','216');
INSERT INTO `cmseasy_b_area` VALUES('219','江津市','216');
INSERT INTO `cmseasy_b_area` VALUES('220','南川市','216');
INSERT INTO `cmseasy_b_area` VALUES('221','沈阳市','87');
INSERT INTO `cmseasy_b_area` VALUES('222','大连市','87');
INSERT INTO `cmseasy_b_area` VALUES('223','鞍山市','87');
INSERT INTO `cmseasy_b_area` VALUES('224','抚顺市','87');
INSERT INTO `cmseasy_b_area` VALUES('225','本溪市','87');
INSERT INTO `cmseasy_b_area` VALUES('226','丹东市','87');
INSERT INTO `cmseasy_b_area` VALUES('227','锦州市','87');
INSERT INTO `cmseasy_b_area` VALUES('228','葫芦岛市','87');
INSERT INTO `cmseasy_b_area` VALUES('229','营口市','87');
INSERT INTO `cmseasy_b_area` VALUES('230','盘锦市','87');
INSERT INTO `cmseasy_b_area` VALUES('231','阜新市','87');
INSERT INTO `cmseasy_b_area` VALUES('232','辽阳市','87');
INSERT INTO `cmseasy_b_area` VALUES('233','铁岭市','87');
INSERT INTO `cmseasy_b_area` VALUES('234','朝阳市','87');
INSERT INTO `cmseasy_b_area` VALUES('235','长春市','88');
INSERT INTO `cmseasy_b_area` VALUES('236','吉林市','88');
INSERT INTO `cmseasy_b_area` VALUES('237','四平市','88');
INSERT INTO `cmseasy_b_area` VALUES('238','辽源市','88');
INSERT INTO `cmseasy_b_area` VALUES('239','通化市','88');
INSERT INTO `cmseasy_b_area` VALUES('240','白山市','88');
INSERT INTO `cmseasy_b_area` VALUES('241','延边朝鲜族自治州','88');
INSERT INTO `cmseasy_b_area` VALUES('242','白城市','88');
INSERT INTO `cmseasy_b_area` VALUES('243','松原市','88');
INSERT INTO `cmseasy_b_area` VALUES('244','哈尔滨市','89');
INSERT INTO `cmseasy_b_area` VALUES('245','齐齐哈尔市','89');
INSERT INTO `cmseasy_b_area` VALUES('246','鹤岗市','89');
INSERT INTO `cmseasy_b_area` VALUES('247','双鸭山市','89');
INSERT INTO `cmseasy_b_area` VALUES('248','鸡西市','89');
INSERT INTO `cmseasy_b_area` VALUES('249','大庆市','89');
INSERT INTO `cmseasy_b_area` VALUES('250','伊春市','89');
INSERT INTO `cmseasy_b_area` VALUES('251','牡丹江市','89');
INSERT INTO `cmseasy_b_area` VALUES('252','佳木斯市','89');
INSERT INTO `cmseasy_b_area` VALUES('253','七台河市','89');
INSERT INTO `cmseasy_b_area` VALUES('254','黑河市','89');
INSERT INTO `cmseasy_b_area` VALUES('255','绥化市','89');
INSERT INTO `cmseasy_b_area` VALUES('256','大兴安岭地区','89');
INSERT INTO `cmseasy_b_area` VALUES('257','石家庄市','84');
INSERT INTO `cmseasy_b_area` VALUES('258','唐山市','84');
INSERT INTO `cmseasy_b_area` VALUES('259','秦皇岛市','84');
INSERT INTO `cmseasy_b_area` VALUES('260','邯郸市','84');
INSERT INTO `cmseasy_b_area` VALUES('261','邢台市','84');
INSERT INTO `cmseasy_b_area` VALUES('262','保定市','84');
INSERT INTO `cmseasy_b_area` VALUES('263','张家口市','84');
INSERT INTO `cmseasy_b_area` VALUES('264','承德市','84');
INSERT INTO `cmseasy_b_area` VALUES('265','廊坊市','84');
INSERT INTO `cmseasy_b_area` VALUES('266','衡水市','84');
INSERT INTO `cmseasy_b_area` VALUES('267','沧州市','84');
INSERT INTO `cmseasy_b_area` VALUES('268','太原市','85');
INSERT INTO `cmseasy_b_area` VALUES('269','大同市','85');
INSERT INTO `cmseasy_b_area` VALUES('270','阳泉市','85');
INSERT INTO `cmseasy_b_area` VALUES('271','长治市','85');
INSERT INTO `cmseasy_b_area` VALUES('272','晋城市','85');
INSERT INTO `cmseasy_b_area` VALUES('273','朔州市','85');
INSERT INTO `cmseasy_b_area` VALUES('274','晋中市','85');
INSERT INTO `cmseasy_b_area` VALUES('275','运城市','85');
INSERT INTO `cmseasy_b_area` VALUES('276','忻州市','85');
INSERT INTO `cmseasy_b_area` VALUES('277','临汾市','85');
INSERT INTO `cmseasy_b_area` VALUES('278','吕梁地区','85');
INSERT INTO `cmseasy_b_area` VALUES('279','郑州市','97');
INSERT INTO `cmseasy_b_area` VALUES('280','开封市','97');
INSERT INTO `cmseasy_b_area` VALUES('281','平顶山市','97');
INSERT INTO `cmseasy_b_area` VALUES('282','焦作市','97');
INSERT INTO `cmseasy_b_area` VALUES('283','鹤壁市','97');
INSERT INTO `cmseasy_b_area` VALUES('284','新乡市','97');
INSERT INTO `cmseasy_b_area` VALUES('285','安阳市','97');
INSERT INTO `cmseasy_b_area` VALUES('286','濮阳市','97');
INSERT INTO `cmseasy_b_area` VALUES('287','许昌市','97');
INSERT INTO `cmseasy_b_area` VALUES('288','漯河市','97');
INSERT INTO `cmseasy_b_area` VALUES('289','三门峡市','97');
INSERT INTO `cmseasy_b_area` VALUES('290','南阳市','97');
INSERT INTO `cmseasy_b_area` VALUES('291','商丘市','97');
INSERT INTO `cmseasy_b_area` VALUES('292','信阳市','97');
INSERT INTO `cmseasy_b_area` VALUES('293','周口市','97');
INSERT INTO `cmseasy_b_area` VALUES('294','驻马店市','97');
INSERT INTO `cmseasy_b_area` VALUES('295','济南市','96');
INSERT INTO `cmseasy_b_area` VALUES('296','青岛市','96');
INSERT INTO `cmseasy_b_area` VALUES('297','淄博市','96');
INSERT INTO `cmseasy_b_area` VALUES('298','枣庄市','96');
INSERT INTO `cmseasy_b_area` VALUES('299','东营市','96');
INSERT INTO `cmseasy_b_area` VALUES('300','潍坊市','96');
INSERT INTO `cmseasy_b_area` VALUES('301','烟台市','96');
INSERT INTO `cmseasy_b_area` VALUES('302','威海市','96');
INSERT INTO `cmseasy_b_area` VALUES('303','济宁市','96');
INSERT INTO `cmseasy_b_area` VALUES('304','泰安市','96');
INSERT INTO `cmseasy_b_area` VALUES('305','日照市','96');
INSERT INTO `cmseasy_b_area` VALUES('306','莱芜市','96');
INSERT INTO `cmseasy_b_area` VALUES('307','临沂市','96');
INSERT INTO `cmseasy_b_area` VALUES('308','德州市','96');
INSERT INTO `cmseasy_b_area` VALUES('309','聊城市','96');
INSERT INTO `cmseasy_b_area` VALUES('310','滨州市','96');
INSERT INTO `cmseasy_b_area` VALUES('311','菏泽市','96');
INSERT INTO `cmseasy_b_area` VALUES('312','南京市','91');
INSERT INTO `cmseasy_b_area` VALUES('313','徐州市','91');
INSERT INTO `cmseasy_b_area` VALUES('314','连云港市','91');
INSERT INTO `cmseasy_b_area` VALUES('315','淮安市','91');
INSERT INTO `cmseasy_b_area` VALUES('316','宿迁市','91');
INSERT INTO `cmseasy_b_area` VALUES('317','盐城市','91');
INSERT INTO `cmseasy_b_area` VALUES('318','扬州市','91');
INSERT INTO `cmseasy_b_area` VALUES('319','泰州市','91');
INSERT INTO `cmseasy_b_area` VALUES('320','南通市','91');
INSERT INTO `cmseasy_b_area` VALUES('321','镇江市','91');
INSERT INTO `cmseasy_b_area` VALUES('322','常州市','91');
INSERT INTO `cmseasy_b_area` VALUES('323','无锡市','91');
INSERT INTO `cmseasy_b_area` VALUES('324','苏州市','91');
INSERT INTO `cmseasy_b_area` VALUES('325','合肥市','93');
INSERT INTO `cmseasy_b_area` VALUES('326','芜湖市','93');
INSERT INTO `cmseasy_b_area` VALUES('327','蚌埠市','93');
INSERT INTO `cmseasy_b_area` VALUES('328','淮南市','93');
INSERT INTO `cmseasy_b_area` VALUES('329','马鞍山市','93');
INSERT INTO `cmseasy_b_area` VALUES('330','淮北市','93');
INSERT INTO `cmseasy_b_area` VALUES('331','铜陵市','93');
INSERT INTO `cmseasy_b_area` VALUES('332','安庆市','93');
INSERT INTO `cmseasy_b_area` VALUES('333','黄山市','93');
INSERT INTO `cmseasy_b_area` VALUES('334','滁州市','93');
INSERT INTO `cmseasy_b_area` VALUES('335','阜阳市','93');
INSERT INTO `cmseasy_b_area` VALUES('336','宿州市','93');
INSERT INTO `cmseasy_b_area` VALUES('337','巢湖市','93');
INSERT INTO `cmseasy_b_area` VALUES('338','六安市','93');
INSERT INTO `cmseasy_b_area` VALUES('339','亳州市','93');
INSERT INTO `cmseasy_b_area` VALUES('340','池州市','93');
INSERT INTO `cmseasy_b_area` VALUES('341','宣城市','93');
INSERT INTO `cmseasy_b_area` VALUES('342','南昌市','95');
INSERT INTO `cmseasy_b_area` VALUES('343','景德镇市','95');
INSERT INTO `cmseasy_b_area` VALUES('344','萍乡市','95');
INSERT INTO `cmseasy_b_area` VALUES('345','九江市','95');
INSERT INTO `cmseasy_b_area` VALUES('346','新余市','95');
INSERT INTO `cmseasy_b_area` VALUES('347','鹰潭市','95');
INSERT INTO `cmseasy_b_area` VALUES('348','赣州市','95');
INSERT INTO `cmseasy_b_area` VALUES('349','吉安市','95');
INSERT INTO `cmseasy_b_area` VALUES('350','宜春市','95');
INSERT INTO `cmseasy_b_area` VALUES('351','抚州市','95');
INSERT INTO `cmseasy_b_area` VALUES('352','上饶市','95');
INSERT INTO `cmseasy_b_area` VALUES('353','杭州市','92');
INSERT INTO `cmseasy_b_area` VALUES('354','宁波市','92');
INSERT INTO `cmseasy_b_area` VALUES('355','温州市','92');
INSERT INTO `cmseasy_b_area` VALUES('356','嘉兴市','92');
INSERT INTO `cmseasy_b_area` VALUES('357','湖州市','92');
INSERT INTO `cmseasy_b_area` VALUES('358','绍兴市','92');
INSERT INTO `cmseasy_b_area` VALUES('359','金华市','92');
INSERT INTO `cmseasy_b_area` VALUES('360','衢州市','92');
INSERT INTO `cmseasy_b_area` VALUES('361','舟山市','92');
INSERT INTO `cmseasy_b_area` VALUES('362','台州市','92');
INSERT INTO `cmseasy_b_area` VALUES('363','丽水市','92');
INSERT INTO `cmseasy_b_area` VALUES('364','福州市','94');
INSERT INTO `cmseasy_b_area` VALUES('365','厦门市','94');
INSERT INTO `cmseasy_b_area` VALUES('366','三明市','94');
INSERT INTO `cmseasy_b_area` VALUES('367','莆田市','94');
INSERT INTO `cmseasy_b_area` VALUES('368','泉州市','94');
INSERT INTO `cmseasy_b_area` VALUES('369','漳州市','94');
INSERT INTO `cmseasy_b_area` VALUES('370','南平市','94');
INSERT INTO `cmseasy_b_area` VALUES('371','龙岩市','94');
INSERT INTO `cmseasy_b_area` VALUES('372','宁德市','94');
INSERT INTO `cmseasy_b_area` VALUES('373','广州市','100');
INSERT INTO `cmseasy_b_area` VALUES('374','深圳市','100');
INSERT INTO `cmseasy_b_area` VALUES('375','珠海市','100');
INSERT INTO `cmseasy_b_area` VALUES('376','汕头市','100');
INSERT INTO `cmseasy_b_area` VALUES('377','韶关市','100');
INSERT INTO `cmseasy_b_area` VALUES('378','惠州市','100');
INSERT INTO `cmseasy_b_area` VALUES('379','河源市','100');
INSERT INTO `cmseasy_b_area` VALUES('380','梅州市','100');
INSERT INTO `cmseasy_b_area` VALUES('381','汕尾市','100');
INSERT INTO `cmseasy_b_area` VALUES('382','东莞市','100');
INSERT INTO `cmseasy_b_area` VALUES('383','中山市','100');
INSERT INTO `cmseasy_b_area` VALUES('384','江门市','100');
INSERT INTO `cmseasy_b_area` VALUES('385','佛山市','100');
INSERT INTO `cmseasy_b_area` VALUES('386','阳江市','100');
INSERT INTO `cmseasy_b_area` VALUES('387','湛江市','100');
INSERT INTO `cmseasy_b_area` VALUES('388','茂名市','100');
INSERT INTO `cmseasy_b_area` VALUES('389','肇庆市','100');
INSERT INTO `cmseasy_b_area` VALUES('390','清远市','100');
INSERT INTO `cmseasy_b_area` VALUES('391','潮州市','100');
INSERT INTO `cmseasy_b_area` VALUES('392','揭阳市','100');
INSERT INTO `cmseasy_b_area` VALUES('393','云浮市','100');
INSERT INTO `cmseasy_b_area` VALUES('394','海口市','102');
INSERT INTO `cmseasy_b_area` VALUES('395','三亚市','102');
INSERT INTO `cmseasy_b_area` VALUES('396','省直辖行政单位','102');
INSERT INTO `cmseasy_b_area` VALUES('397','贵阳市','105');
INSERT INTO `cmseasy_b_area` VALUES('398','六盘水市','105');
INSERT INTO `cmseasy_b_area` VALUES('399','遵义市','105');
INSERT INTO `cmseasy_b_area` VALUES('400','安顺市','105');
INSERT INTO `cmseasy_b_area` VALUES('401','铜仁地区','105');
INSERT INTO `cmseasy_b_area` VALUES('402','毕节地区','105');
INSERT INTO `cmseasy_b_area` VALUES('403','黔西南布依族苗族自治州','105');
INSERT INTO `cmseasy_b_area` VALUES('404','黔东南南苗族侗族自治州','105');
INSERT INTO `cmseasy_b_area` VALUES('405','黔南布依族苗族自治州','105');
INSERT INTO `cmseasy_b_area` VALUES('406','昆明市','106');
INSERT INTO `cmseasy_b_area` VALUES('407','曲靖市','106');
INSERT INTO `cmseasy_b_area` VALUES('408','玉溪市','106');
INSERT INTO `cmseasy_b_area` VALUES('409','保山市','106');
INSERT INTO `cmseasy_b_area` VALUES('410','昭通市','106');
INSERT INTO `cmseasy_b_area` VALUES('411','思茅地区','106');
INSERT INTO `cmseasy_b_area` VALUES('412','临沧地区','106');
INSERT INTO `cmseasy_b_area` VALUES('413','丽江地区','106');
INSERT INTO `cmseasy_b_area` VALUES('414','文山壮族苗族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('415','红河哈尼族彝族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('416','西双版纳傣族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('417','楚雄彝族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('418','大理白族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('419','德宏傣族景颇族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('420','怒江傈僳族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('421','迪庆藏族自治州','106');
INSERT INTO `cmseasy_b_area` VALUES('422','成都市','104');
INSERT INTO `cmseasy_b_area` VALUES('423','自贡市','104');
INSERT INTO `cmseasy_b_area` VALUES('424','攀枝花市','104');
INSERT INTO `cmseasy_b_area` VALUES('425','泸州市','104');
INSERT INTO `cmseasy_b_area` VALUES('426','德阳市','104');
INSERT INTO `cmseasy_b_area` VALUES('427','绵阳市','104');
INSERT INTO `cmseasy_b_area` VALUES('428','广元市','104');
INSERT INTO `cmseasy_b_area` VALUES('429','遂宁市','104');
INSERT INTO `cmseasy_b_area` VALUES('430','内江市','104');
INSERT INTO `cmseasy_b_area` VALUES('431','乐山市','104');
INSERT INTO `cmseasy_b_area` VALUES('432','南充市','104');
INSERT INTO `cmseasy_b_area` VALUES('433','宜宾市','104');
INSERT INTO `cmseasy_b_area` VALUES('434','广安市','104');
INSERT INTO `cmseasy_b_area` VALUES('435','达州市','104');
INSERT INTO `cmseasy_b_area` VALUES('436','眉山市','104');
INSERT INTO `cmseasy_b_area` VALUES('437','雅安市','104');
INSERT INTO `cmseasy_b_area` VALUES('438','巴中市','104');
INSERT INTO `cmseasy_b_area` VALUES('439','资阳市','104');
INSERT INTO `cmseasy_b_area` VALUES('440','阿坝藏族羌族自治州','104');
INSERT INTO `cmseasy_b_area` VALUES('441','甘孜藏族自治州','104');
INSERT INTO `cmseasy_b_area` VALUES('442','凉山彝族自治州','104');
INSERT INTO `cmseasy_b_area` VALUES('443','长沙市','99');
INSERT INTO `cmseasy_b_area` VALUES('444','株洲市','99');
INSERT INTO `cmseasy_b_area` VALUES('445','湘潭市','99');
INSERT INTO `cmseasy_b_area` VALUES('446','衡阳市','99');
INSERT INTO `cmseasy_b_area` VALUES('447','邵阳市','99');
INSERT INTO `cmseasy_b_area` VALUES('448','岳阳市','99');
INSERT INTO `cmseasy_b_area` VALUES('449','常德市','99');
INSERT INTO `cmseasy_b_area` VALUES('450','张家界市','99');
INSERT INTO `cmseasy_b_area` VALUES('451','益阳市','99');
INSERT INTO `cmseasy_b_area` VALUES('452','郴州市','99');
INSERT INTO `cmseasy_b_area` VALUES('453','永州市','99');
INSERT INTO `cmseasy_b_area` VALUES('454','怀化市','99');
INSERT INTO `cmseasy_b_area` VALUES('455','娄底市','99');
INSERT INTO `cmseasy_b_area` VALUES('456','湘西土家族苗族自治州','99');
INSERT INTO `cmseasy_b_area` VALUES('457','武汉市','98');
INSERT INTO `cmseasy_b_area` VALUES('458','黄石市','98');
INSERT INTO `cmseasy_b_area` VALUES('459','襄樊市','98');
INSERT INTO `cmseasy_b_area` VALUES('460','十堰市','98');
INSERT INTO `cmseasy_b_area` VALUES('461','荆州市','98');
INSERT INTO `cmseasy_b_area` VALUES('462','宜昌市','98');
INSERT INTO `cmseasy_b_area` VALUES('463','荆门市','98');
INSERT INTO `cmseasy_b_area` VALUES('464','鄂州市','98');
INSERT INTO `cmseasy_b_area` VALUES('465','孝感市','98');
INSERT INTO `cmseasy_b_area` VALUES('466','黄冈市','98');
INSERT INTO `cmseasy_b_area` VALUES('467','咸宁市','98');
INSERT INTO `cmseasy_b_area` VALUES('468','随州市','98');
INSERT INTO `cmseasy_b_area` VALUES('469','恩施土家族苗族自治州','98');
INSERT INTO `cmseasy_b_area` VALUES('470','省直辖行政单位','98');
INSERT INTO `cmseasy_b_area` VALUES('471','西安市','108');
INSERT INTO `cmseasy_b_area` VALUES('472','铜川市','108');
INSERT INTO `cmseasy_b_area` VALUES('473','宝鸡市','108');
INSERT INTO `cmseasy_b_area` VALUES('474','咸阳市','108');
INSERT INTO `cmseasy_b_area` VALUES('475','渭南市','108');
INSERT INTO `cmseasy_b_area` VALUES('476','延安市','108');
INSERT INTO `cmseasy_b_area` VALUES('477','汉中市','108');
INSERT INTO `cmseasy_b_area` VALUES('478','榆林市','108');
INSERT INTO `cmseasy_b_area` VALUES('479','安康市','108');
INSERT INTO `cmseasy_b_area` VALUES('480','商洛市','108');
INSERT INTO `cmseasy_b_area` VALUES('481','兰州市','109');
INSERT INTO `cmseasy_b_area` VALUES('482','金昌市','109');
INSERT INTO `cmseasy_b_area` VALUES('483','白银市','109');
INSERT INTO `cmseasy_b_area` VALUES('484','天水市','109');
INSERT INTO `cmseasy_b_area` VALUES('485','嘉峪关市','109');
INSERT INTO `cmseasy_b_area` VALUES('486','武威市','109');
INSERT INTO `cmseasy_b_area` VALUES('487','张掖市','109');
INSERT INTO `cmseasy_b_area` VALUES('488','平凉市','109');
INSERT INTO `cmseasy_b_area` VALUES('489','酒泉市','109');
INSERT INTO `cmseasy_b_area` VALUES('490','庆阳市','109');
INSERT INTO `cmseasy_b_area` VALUES('491','定西地区','109');
INSERT INTO `cmseasy_b_area` VALUES('492','陇南地区','109');
INSERT INTO `cmseasy_b_area` VALUES('493','甘南藏族自治州','109');
INSERT INTO `cmseasy_b_area` VALUES('494','临夏回族自治州','109');
INSERT INTO `cmseasy_b_area` VALUES('495','西宁市','110');
INSERT INTO `cmseasy_b_area` VALUES('496','海东地区','110');
INSERT INTO `cmseasy_b_area` VALUES('497','海北藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('498','黄南藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('499','海南藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('500','果洛藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('501','玉树藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('502','海西蒙古族藏族自治州','110');
INSERT INTO `cmseasy_b_area` VALUES('503','呼和浩特市','86');
INSERT INTO `cmseasy_b_area` VALUES('504','包头市','86');
INSERT INTO `cmseasy_b_area` VALUES('505','乌海市','86');
INSERT INTO `cmseasy_b_area` VALUES('506','赤峰市','86');
INSERT INTO `cmseasy_b_area` VALUES('507','通辽市','86');
INSERT INTO `cmseasy_b_area` VALUES('508','鄂尔多斯市','86');
INSERT INTO `cmseasy_b_area` VALUES('509','呼伦贝尔市','86');
INSERT INTO `cmseasy_b_area` VALUES('510','乌兰察布盟','86');
INSERT INTO `cmseasy_b_area` VALUES('511','锡林郭勒盟','86');
INSERT INTO `cmseasy_b_area` VALUES('512','巴彦淖尔盟','86');
INSERT INTO `cmseasy_b_area` VALUES('513','阿拉善盟','86');
INSERT INTO `cmseasy_b_area` VALUES('514','兴安盟','86');
INSERT INTO `cmseasy_b_area` VALUES('515','拉萨市','107');
INSERT INTO `cmseasy_b_area` VALUES('516','那曲地区','107');
INSERT INTO `cmseasy_b_area` VALUES('517','昌都地区','107');
INSERT INTO `cmseasy_b_area` VALUES('518','山南地区','107');
INSERT INTO `cmseasy_b_area` VALUES('519','日喀则地区','107');
INSERT INTO `cmseasy_b_area` VALUES('520','阿里地区','107');
INSERT INTO `cmseasy_b_area` VALUES('521','林芝地区','107');
INSERT INTO `cmseasy_b_area` VALUES('522','乌鲁木齐市','112');
INSERT INTO `cmseasy_b_area` VALUES('523','克拉玛依市','112');
INSERT INTO `cmseasy_b_area` VALUES('524','吐鲁番地区','112');
INSERT INTO `cmseasy_b_area` VALUES('525','哈密地区','112');
INSERT INTO `cmseasy_b_area` VALUES('526','和田地区','112');
INSERT INTO `cmseasy_b_area` VALUES('527','阿克苏地区','112');
INSERT INTO `cmseasy_b_area` VALUES('528','喀什地区','112');
INSERT INTO `cmseasy_b_area` VALUES('529','克孜勒苏柯尔克孜自治州','112');
INSERT INTO `cmseasy_b_area` VALUES('530','巴音郭楞州','112');
INSERT INTO `cmseasy_b_area` VALUES('531','昌吉州','112');
INSERT INTO `cmseasy_b_area` VALUES('532','博尔塔拉州','112');
INSERT INTO `cmseasy_b_area` VALUES('533','伊犁哈萨克自治州','112');
INSERT INTO `cmseasy_b_area` VALUES('534','塔城地区','112');
INSERT INTO `cmseasy_b_area` VALUES('535','阿勒泰州','112');
INSERT INTO `cmseasy_b_area` VALUES('536','省直辖行政单位','112');
INSERT INTO `cmseasy_b_area` VALUES('537','南宁市','101');
INSERT INTO `cmseasy_b_area` VALUES('538','柳州市','101');
INSERT INTO `cmseasy_b_area` VALUES('539','桂林市','101');
INSERT INTO `cmseasy_b_area` VALUES('540','梧州市','101');
INSERT INTO `cmseasy_b_area` VALUES('541','北海市','101');
INSERT INTO `cmseasy_b_area` VALUES('542','防城港市','101');
INSERT INTO `cmseasy_b_area` VALUES('543','钦州市','101');
INSERT INTO `cmseasy_b_area` VALUES('544','贵港市','101');
INSERT INTO `cmseasy_b_area` VALUES('545','玉林市','101');
INSERT INTO `cmseasy_b_area` VALUES('546','百色市','101');
INSERT INTO `cmseasy_b_area` VALUES('547','贺州市','101');
INSERT INTO `cmseasy_b_area` VALUES('548','河池市','101');
INSERT INTO `cmseasy_b_area` VALUES('549','来宾市','101');
INSERT INTO `cmseasy_b_area` VALUES('550','崇左市','101');
INSERT INTO `cmseasy_b_area` VALUES('551','银川市','111');
INSERT INTO `cmseasy_b_area` VALUES('552','石嘴山市','111');
INSERT INTO `cmseasy_b_area` VALUES('553','吴忠市','111');
INSERT INTO `cmseasy_b_area` VALUES('554','固原市','111');
INSERT INTO `cmseasy_b_area` VALUES('557','台北市','113');
INSERT INTO `cmseasy_b_area` VALUES('558','高雄市','113');
INSERT INTO `cmseasy_b_area` VALUES('559','基隆市','113');
INSERT INTO `cmseasy_b_area` VALUES('560','台中市','113');
INSERT INTO `cmseasy_b_area` VALUES('561','台南市','113');
INSERT INTO `cmseasy_b_area` VALUES('562','新竹市','113');
INSERT INTO `cmseasy_b_area` VALUES('563','嘉义市','113');
INSERT INTO `cmseasy_b_area` VALUES('564','北县','113');
INSERT INTO `cmseasy_b_area` VALUES('565','板桥市','113');
INSERT INTO `cmseasy_b_area` VALUES('566','宜兰县','113');
INSERT INTO `cmseasy_b_area` VALUES('567','宜兰市','113');
INSERT INTO `cmseasy_b_area` VALUES('568','桃园县','113');
INSERT INTO `cmseasy_b_area` VALUES('569','桃园市','113');
INSERT INTO `cmseasy_b_area` VALUES('570','新竹县','113');
INSERT INTO `cmseasy_b_area` VALUES('571','竹北市','113');
INSERT INTO `cmseasy_b_area` VALUES('572','苗栗县','113');
INSERT INTO `cmseasy_b_area` VALUES('573','苗栗市','113');
INSERT INTO `cmseasy_b_area` VALUES('574','台中县','113');
INSERT INTO `cmseasy_b_area` VALUES('575','丰原市','113');
INSERT INTO `cmseasy_b_area` VALUES('576','彰化县','113');
INSERT INTO `cmseasy_b_area` VALUES('577','彰化市','113');
INSERT INTO `cmseasy_b_area` VALUES('578','南投县','113');
INSERT INTO `cmseasy_b_area` VALUES('579','南投市','113');
INSERT INTO `cmseasy_b_area` VALUES('580','云林县','113');
INSERT INTO `cmseasy_b_area` VALUES('581','斗六市','113');
INSERT INTO `cmseasy_b_area` VALUES('582','嘉义县','113');
INSERT INTO `cmseasy_b_area` VALUES('583','太保市','113');
INSERT INTO `cmseasy_b_area` VALUES('584','台南县','113');
INSERT INTO `cmseasy_b_area` VALUES('585','新营市','113');
INSERT INTO `cmseasy_b_area` VALUES('586','高雄县','113');
INSERT INTO `cmseasy_b_area` VALUES('587','凤山市','113');
INSERT INTO `cmseasy_b_area` VALUES('588','屏东县','113');
INSERT INTO `cmseasy_b_area` VALUES('589','屏东市','113');
INSERT INTO `cmseasy_b_area` VALUES('590','澎湖县','113');
INSERT INTO `cmseasy_b_area` VALUES('591','马东市','113');
INSERT INTO `cmseasy_b_area` VALUES('592','台东县','113');
INSERT INTO `cmseasy_b_area` VALUES('593','台东市','113');
INSERT INTO `cmseasy_b_area` VALUES('594','花莲县','113');
INSERT INTO `cmseasy_b_area` VALUES('595','花莲市','113');
INSERT INTO `cmseasy_b_area` VALUES('596','金门县','113');
INSERT INTO `cmseasy_b_area` VALUES('597','连江县','113');
INSERT INTO `cmseasy_b_area` VALUES('598','九龙城区','114');
INSERT INTO `cmseasy_b_area` VALUES('599','观塘区','114');
INSERT INTO `cmseasy_b_area` VALUES('600','深水埗区','114');
INSERT INTO `cmseasy_b_area` VALUES('601','黄大仙区','114');
INSERT INTO `cmseasy_b_area` VALUES('602','湾仔区','114');
INSERT INTO `cmseasy_b_area` VALUES('603','油尖旺区','114');
INSERT INTO `cmseasy_b_area` VALUES('604','离岛区','114');
INSERT INTO `cmseasy_b_area` VALUES('605','葵青区','114');
INSERT INTO `cmseasy_b_area` VALUES('606','西贡区','114');
INSERT INTO `cmseasy_b_area` VALUES('607','沙田区','114');
INSERT INTO `cmseasy_b_area` VALUES('608','屯门区','114');
INSERT INTO `cmseasy_b_area` VALUES('609','大埔区','114');
INSERT INTO `cmseasy_b_area` VALUES('610','荃湾区','114');
INSERT INTO `cmseasy_b_area` VALUES('611','元朗区','114');
INSERT INTO `cmseasy_b_area` VALUES('612','花王堂區','115');
INSERT INTO `cmseasy_b_area` VALUES('613','望德堂區','115');
INSERT INTO `cmseasy_b_area` VALUES('614','風順堂區','115');
INSERT INTO `cmseasy_b_area` VALUES('615','大堂區','115');
INSERT INTO `cmseasy_b_area` VALUES('616','花地瑪堂區','115');
INSERT INTO `cmseasy_b_area` VALUES('617','嘉模堂區(氹仔)','115');
INSERT INTO `cmseasy_b_area` VALUES('618','聖方濟各堂區(路環)','115');
INSERT INTO `cmseasy_b_area` VALUES('619','芙蓉区','443');
INSERT INTO `cmseasy_b_area` VALUES('620','岳麓区','443');
INSERT INTO `cmseasy_b_area` VALUES('621','雨花区','443');
INSERT INTO `cmseasy_b_area` VALUES('622','望城县','443');
INSERT INTO `cmseasy_b_area` VALUES('623','浏阳市','443');
INSERT INTO `cmseasy_b_area` VALUES('624','天心区','443');
INSERT INTO `cmseasy_b_area` VALUES('625','开福区','443');
INSERT INTO `cmseasy_b_area` VALUES('626','长沙县','443');
INSERT INTO `cmseasy_b_area` VALUES('627','宁乡县','443');
INSERT INTO `cmseasy_b_area` VALUES('629','荷塘区','444');
INSERT INTO `cmseasy_b_area` VALUES('630','石峰区','444');
INSERT INTO `cmseasy_b_area` VALUES('631','株洲县','444');
INSERT INTO `cmseasy_b_area` VALUES('632','茶陵县','444');
INSERT INTO `cmseasy_b_area` VALUES('633','醴陵市','444');
INSERT INTO `cmseasy_b_area` VALUES('634','芦淞区','444');
INSERT INTO `cmseasy_b_area` VALUES('635','天元区','444');
INSERT INTO `cmseasy_b_area` VALUES('636','攸县','444');
INSERT INTO `cmseasy_b_area` VALUES('637','炎陵县','444');
INSERT INTO `cmseasy_b_area` VALUES('638','雨湖区','445');
INSERT INTO `cmseasy_b_area` VALUES('639','湘潭县','445');
INSERT INTO `cmseasy_b_area` VALUES('640','韶山市','445');
INSERT INTO `cmseasy_b_area` VALUES('641','岳塘区','445');
INSERT INTO `cmseasy_b_area` VALUES('642','湘乡市','445');
INSERT INTO `cmseasy_b_area` VALUES('643','珠晖区','446');
INSERT INTO `cmseasy_b_area` VALUES('644','石鼓区','446');
INSERT INTO `cmseasy_b_area` VALUES('645','南岳区','446');
INSERT INTO `cmseasy_b_area` VALUES('646','衡南县','446');
INSERT INTO `cmseasy_b_area` VALUES('647','衡东县','446');
INSERT INTO `cmseasy_b_area` VALUES('648','耒阳市','446');
INSERT INTO `cmseasy_b_area` VALUES('649','常宁市','446');
INSERT INTO `cmseasy_b_area` VALUES('650','雁峰区','446');
INSERT INTO `cmseasy_b_area` VALUES('651','蒸湘区','446');
INSERT INTO `cmseasy_b_area` VALUES('652','衡阳县','446');
INSERT INTO `cmseasy_b_area` VALUES('653','衡山县','446');
INSERT INTO `cmseasy_b_area` VALUES('654','祁东县','446');
INSERT INTO `cmseasy_b_area` VALUES('655','双清区','447');
INSERT INTO `cmseasy_b_area` VALUES('656','北塔区','447');
INSERT INTO `cmseasy_b_area` VALUES('657','新邵县','447');
INSERT INTO `cmseasy_b_area` VALUES('658','隆回县','447');
INSERT INTO `cmseasy_b_area` VALUES('659','绥宁县','447');
INSERT INTO `cmseasy_b_area` VALUES('660','城步苗族自治县','447');
INSERT INTO `cmseasy_b_area` VALUES('661','武冈市','447');
INSERT INTO `cmseasy_b_area` VALUES('662','大祥区','447');
INSERT INTO `cmseasy_b_area` VALUES('663','邵东县','447');
INSERT INTO `cmseasy_b_area` VALUES('664','邵阳县','447');
INSERT INTO `cmseasy_b_area` VALUES('665','洞口县','447');
INSERT INTO `cmseasy_b_area` VALUES('666','新宁县','447');
INSERT INTO `cmseasy_b_area` VALUES('667','临湘市','448');
INSERT INTO `cmseasy_b_area` VALUES('668','岳阳楼区','448');
INSERT INTO `cmseasy_b_area` VALUES('669','君山区','448');
INSERT INTO `cmseasy_b_area` VALUES('670','华容县','448');
INSERT INTO `cmseasy_b_area` VALUES('671','平江县','448');
INSERT INTO `cmseasy_b_area` VALUES('672','云溪区','448');
INSERT INTO `cmseasy_b_area` VALUES('673','岳阳县','448');
INSERT INTO `cmseasy_b_area` VALUES('674','湘阴县','448');
INSERT INTO `cmseasy_b_area` VALUES('675','汨罗市','448');
INSERT INTO `cmseasy_b_area` VALUES('676','武陵区','449');
INSERT INTO `cmseasy_b_area` VALUES('677','安乡县','449');
INSERT INTO `cmseasy_b_area` VALUES('678','澧县','449');
INSERT INTO `cmseasy_b_area` VALUES('679','桃源县','449');
INSERT INTO `cmseasy_b_area` VALUES('680','津市市','449');
INSERT INTO `cmseasy_b_area` VALUES('681','鼎城区','449');
INSERT INTO `cmseasy_b_area` VALUES('682','汉寿县','449');
INSERT INTO `cmseasy_b_area` VALUES('683','临澧县','449');
INSERT INTO `cmseasy_b_area` VALUES('684','石门县','449');
INSERT INTO `cmseasy_b_area` VALUES('685','永定区','450');
INSERT INTO `cmseasy_b_area` VALUES('686','慈利县','450');
INSERT INTO `cmseasy_b_area` VALUES('687','桑植县','450');
INSERT INTO `cmseasy_b_area` VALUES('688','武陵源区','450');
INSERT INTO `cmseasy_b_area` VALUES('689','资阳区','451');
INSERT INTO `cmseasy_b_area` VALUES('690','南县','451');
INSERT INTO `cmseasy_b_area` VALUES('691','安化县','451');
INSERT INTO `cmseasy_b_area` VALUES('692','沅江市','451');
INSERT INTO `cmseasy_b_area` VALUES('693','赫山区','451');
INSERT INTO `cmseasy_b_area` VALUES('694','桃江县','451');
INSERT INTO `cmseasy_b_area` VALUES('695','北湖区','452');
INSERT INTO `cmseasy_b_area` VALUES('696','桂阳县','452');
INSERT INTO `cmseasy_b_area` VALUES('697','永兴县','452');
INSERT INTO `cmseasy_b_area` VALUES('698','临武县','452');
INSERT INTO `cmseasy_b_area` VALUES('699','桂东县','452');
INSERT INTO `cmseasy_b_area` VALUES('700','资兴市','452');
INSERT INTO `cmseasy_b_area` VALUES('701','苏仙区','452');
INSERT INTO `cmseasy_b_area` VALUES('702','宜章县','452');
INSERT INTO `cmseasy_b_area` VALUES('703','嘉禾县','452');
INSERT INTO `cmseasy_b_area` VALUES('704','汝城县','452');
INSERT INTO `cmseasy_b_area` VALUES('705','安仁县','452');
INSERT INTO `cmseasy_b_area` VALUES('706','芝山区','453');
INSERT INTO `cmseasy_b_area` VALUES('707','祁阳县','453');
INSERT INTO `cmseasy_b_area` VALUES('708','双牌县','453');
INSERT INTO `cmseasy_b_area` VALUES('709','江永县','453');
INSERT INTO `cmseasy_b_area` VALUES('710','蓝山县','453');
INSERT INTO `cmseasy_b_area` VALUES('711','江华瑶族自治县','453');
INSERT INTO `cmseasy_b_area` VALUES('712','冷水滩区','453');
INSERT INTO `cmseasy_b_area` VALUES('713','东安县','453');
INSERT INTO `cmseasy_b_area` VALUES('714','道县','453');
INSERT INTO `cmseasy_b_area` VALUES('715','宁远县','453');
INSERT INTO `cmseasy_b_area` VALUES('716','新田县','453');
INSERT INTO `cmseasy_b_area` VALUES('717','鹤城区','454');
INSERT INTO `cmseasy_b_area` VALUES('718','沅陵县','454');
INSERT INTO `cmseasy_b_area` VALUES('719','溆浦县','454');
INSERT INTO `cmseasy_b_area` VALUES('720','麻阳苗族自治县','454');
INSERT INTO `cmseasy_b_area` VALUES('721','芷江侗族自治县','454');
INSERT INTO `cmseasy_b_area` VALUES('722','通道侗族自治县','454');
INSERT INTO `cmseasy_b_area` VALUES('723','洪江市','454');
INSERT INTO `cmseasy_b_area` VALUES('724','中方县','454');
INSERT INTO `cmseasy_b_area` VALUES('725','辰溪县','454');
INSERT INTO `cmseasy_b_area` VALUES('726','会同县','454');
INSERT INTO `cmseasy_b_area` VALUES('727','新晃侗族自治县','454');
INSERT INTO `cmseasy_b_area` VALUES('728','靖州苗族侗族自治县','454');
INSERT INTO `cmseasy_b_area` VALUES('729','娄星区','455');
INSERT INTO `cmseasy_b_area` VALUES('730','新化县','455');
INSERT INTO `cmseasy_b_area` VALUES('731','涟源市','455');
INSERT INTO `cmseasy_b_area` VALUES('732','双峰县','455');
INSERT INTO `cmseasy_b_area` VALUES('733','冷水江市','455');
INSERT INTO `cmseasy_b_area` VALUES('734','吉首市','456');
INSERT INTO `cmseasy_b_area` VALUES('735','凤凰县','456');
INSERT INTO `cmseasy_b_area` VALUES('736','保靖县','456');
INSERT INTO `cmseasy_b_area` VALUES('737','永顺县','456');
INSERT INTO `cmseasy_b_area` VALUES('738','龙山县','456');
INSERT INTO `cmseasy_b_area` VALUES('739','泸溪县','456');
INSERT INTO `cmseasy_b_area` VALUES('740','花垣县','456');
INSERT INTO `cmseasy_b_area` VALUES('741','古丈县','456');
INSERT INTO `cmseasy_b_area` VALUES('742','和平区','221');
INSERT INTO `cmseasy_b_area` VALUES('743','大东区','221');
INSERT INTO `cmseasy_b_area` VALUES('744','铁西区','221');
INSERT INTO `cmseasy_b_area` VALUES('745','东陵区','221');
INSERT INTO `cmseasy_b_area` VALUES('746','于洪区','221');
INSERT INTO `cmseasy_b_area` VALUES('747','康平县','221');
INSERT INTO `cmseasy_b_area` VALUES('748','新民市','221');
INSERT INTO `cmseasy_b_area` VALUES('749','沈河区','221');
INSERT INTO `cmseasy_b_area` VALUES('750','皇姑区','221');
INSERT INTO `cmseasy_b_area` VALUES('751','苏家屯区','221');
INSERT INTO `cmseasy_b_area` VALUES('752','新城子区','221');
INSERT INTO `cmseasy_b_area` VALUES('753','辽中县','221');
INSERT INTO `cmseasy_b_area` VALUES('754','法库县','221');
INSERT INTO `cmseasy_b_area` VALUES('755','中山区','222');
INSERT INTO `cmseasy_b_area` VALUES('756','沙河口区','222');
INSERT INTO `cmseasy_b_area` VALUES('757','旅顺口区','222');
INSERT INTO `cmseasy_b_area` VALUES('758','长海县','222');
INSERT INTO `cmseasy_b_area` VALUES('759','普兰店市','222');
INSERT INTO `cmseasy_b_area` VALUES('760','庄河市','222');
INSERT INTO `cmseasy_b_area` VALUES('761','西岗区','222');
INSERT INTO `cmseasy_b_area` VALUES('762','甘井子区','222');
INSERT INTO `cmseasy_b_area` VALUES('763','金州区','222');
INSERT INTO `cmseasy_b_area` VALUES('764','瓦房店市','222');
INSERT INTO `cmseasy_b_area` VALUES('765','铁东区','223');
INSERT INTO `cmseasy_b_area` VALUES('766','立山区','223');
INSERT INTO `cmseasy_b_area` VALUES('767','台安县','223');
INSERT INTO `cmseasy_b_area` VALUES('768','海城市','223');
INSERT INTO `cmseasy_b_area` VALUES('769','铁西区','223');
INSERT INTO `cmseasy_b_area` VALUES('770','千山区','223');
INSERT INTO `cmseasy_b_area` VALUES('771','岫岩满族自治县','223');
INSERT INTO `cmseasy_b_area` VALUES('772','新抚区','224');
INSERT INTO `cmseasy_b_area` VALUES('773','望花区','224');
INSERT INTO `cmseasy_b_area` VALUES('774','抚顺县','224');
INSERT INTO `cmseasy_b_area` VALUES('775','清原满族自治县','224');
INSERT INTO `cmseasy_b_area` VALUES('776','东洲区','224');
INSERT INTO `cmseasy_b_area` VALUES('777','顺城区','224');
INSERT INTO `cmseasy_b_area` VALUES('778','新宾满族自治县','224');
INSERT INTO `cmseasy_b_area` VALUES('779','平山区','225');
INSERT INTO `cmseasy_b_area` VALUES('780','明山区','225');
INSERT INTO `cmseasy_b_area` VALUES('781','本溪满族自治县','225');
INSERT INTO `cmseasy_b_area` VALUES('782','桓仁满族自治县','225');
INSERT INTO `cmseasy_b_area` VALUES('783','溪湖区','225');
INSERT INTO `cmseasy_b_area` VALUES('784','南芬区','225');
INSERT INTO `cmseasy_b_area` VALUES('785','元宝区','226');
INSERT INTO `cmseasy_b_area` VALUES('786','振安区','226');
INSERT INTO `cmseasy_b_area` VALUES('787','东港市','226');
INSERT INTO `cmseasy_b_area` VALUES('788','凤城市','226');
INSERT INTO `cmseasy_b_area` VALUES('789','振兴区','226');
INSERT INTO `cmseasy_b_area` VALUES('790','宽甸满族自治县','226');
INSERT INTO `cmseasy_b_area` VALUES('791','古塔区','227');
INSERT INTO `cmseasy_b_area` VALUES('792','太和区','227');
INSERT INTO `cmseasy_b_area` VALUES('793','义县','227');
INSERT INTO `cmseasy_b_area` VALUES('794','北宁市','227');
INSERT INTO `cmseasy_b_area` VALUES('795','凌河区','227');
INSERT INTO `cmseasy_b_area` VALUES('796','黑山县','227');
INSERT INTO `cmseasy_b_area` VALUES('797','凌海市','227');
INSERT INTO `cmseasy_b_area` VALUES('798','连山区','228');
INSERT INTO `cmseasy_b_area` VALUES('799','南票区','228');
INSERT INTO `cmseasy_b_area` VALUES('800','建昌县','228');
INSERT INTO `cmseasy_b_area` VALUES('801','兴城市','228');
INSERT INTO `cmseasy_b_area` VALUES('802','龙港区','228');
INSERT INTO `cmseasy_b_area` VALUES('803','绥中县','228');
INSERT INTO `cmseasy_b_area` VALUES('804','站前区','229');
INSERT INTO `cmseasy_b_area` VALUES('805','鲅鱼圈区','229');
INSERT INTO `cmseasy_b_area` VALUES('806','盖州市','229');
INSERT INTO `cmseasy_b_area` VALUES('807','大石桥市','229');
INSERT INTO `cmseasy_b_area` VALUES('808','西市区','229');
INSERT INTO `cmseasy_b_area` VALUES('809','老边区','229');
INSERT INTO `cmseasy_b_area` VALUES('810','双台子区','230');
INSERT INTO `cmseasy_b_area` VALUES('811','大洼县','230');
INSERT INTO `cmseasy_b_area` VALUES('812','盘山县','230');
INSERT INTO `cmseasy_b_area` VALUES('813','兴隆台区','230');
INSERT INTO `cmseasy_b_area` VALUES('814','海州区','231');
INSERT INTO `cmseasy_b_area` VALUES('815','太平区','231');
INSERT INTO `cmseasy_b_area` VALUES('816','细河区','231');
INSERT INTO `cmseasy_b_area` VALUES('817','彰武县','231');
INSERT INTO `cmseasy_b_area` VALUES('818','新邱区','231');
INSERT INTO `cmseasy_b_area` VALUES('819','清河门区','231');
INSERT INTO `cmseasy_b_area` VALUES('820','阜新蒙古族自治县','231');
INSERT INTO `cmseasy_b_area` VALUES('821','白塔区','232');
INSERT INTO `cmseasy_b_area` VALUES('822','宏伟区','232');
INSERT INTO `cmseasy_b_area` VALUES('823','太子河区','232');
INSERT INTO `cmseasy_b_area` VALUES('824','灯塔市','232');
INSERT INTO `cmseasy_b_area` VALUES('825','文圣区','232');
INSERT INTO `cmseasy_b_area` VALUES('826','弓长岭区','232');
INSERT INTO `cmseasy_b_area` VALUES('827','辽阳县','232');
INSERT INTO `cmseasy_b_area` VALUES('828','银州区','233');
INSERT INTO `cmseasy_b_area` VALUES('829','铁岭县','233');
INSERT INTO `cmseasy_b_area` VALUES('830','昌图县','233');
INSERT INTO `cmseasy_b_area` VALUES('831','开原市','233');
INSERT INTO `cmseasy_b_area` VALUES('832','清河区','233');
INSERT INTO `cmseasy_b_area` VALUES('833','西丰县','233');
INSERT INTO `cmseasy_b_area` VALUES('834','双塔区','234');
INSERT INTO `cmseasy_b_area` VALUES('835','朝阳县','234');
INSERT INTO `cmseasy_b_area` VALUES('836','喀喇沁左翼蒙古族自治县','234');
INSERT INTO `cmseasy_b_area` VALUES('837','凌源市','234');
INSERT INTO `cmseasy_b_area` VALUES('838','龙城区','234');
INSERT INTO `cmseasy_b_area` VALUES('839','建平县','234');
INSERT INTO `cmseasy_b_area` VALUES('840','北票市','234');
INSERT INTO `cmseasy_b_area` VALUES('841','南关区','235');
INSERT INTO `cmseasy_b_area` VALUES('842','朝阳区','235');
INSERT INTO `cmseasy_b_area` VALUES('843','绿园区','235');
INSERT INTO `cmseasy_b_area` VALUES('844','农安县','235');
INSERT INTO `cmseasy_b_area` VALUES('845','榆树市','235');
INSERT INTO `cmseasy_b_area` VALUES('846','德惠市','235');
INSERT INTO `cmseasy_b_area` VALUES('847','宽城区','235');
INSERT INTO `cmseasy_b_area` VALUES('848','二道区','235');
INSERT INTO `cmseasy_b_area` VALUES('849','双阳区','235');
INSERT INTO `cmseasy_b_area` VALUES('850','九台市','235');
INSERT INTO `cmseasy_b_area` VALUES('851','昌邑区','236');
INSERT INTO `cmseasy_b_area` VALUES('852','船营区','236');
INSERT INTO `cmseasy_b_area` VALUES('853','永吉县','236');
INSERT INTO `cmseasy_b_area` VALUES('854','桦甸市','236');
INSERT INTO `cmseasy_b_area` VALUES('855','磐石市','236');
INSERT INTO `cmseasy_b_area` VALUES('856','龙潭区','236');
INSERT INTO `cmseasy_b_area` VALUES('857','丰满区','236');
INSERT INTO `cmseasy_b_area` VALUES('858','蛟河市','236');
INSERT INTO `cmseasy_b_area` VALUES('859','舒兰市','236');
INSERT INTO `cmseasy_b_area` VALUES('860','铁西区','237');
INSERT INTO `cmseasy_b_area` VALUES('861','梨树县','237');
INSERT INTO `cmseasy_b_area` VALUES('862','公主岭市','237');
INSERT INTO `cmseasy_b_area` VALUES('863','双辽市','237');
INSERT INTO `cmseasy_b_area` VALUES('864','铁东区','237');
INSERT INTO `cmseasy_b_area` VALUES('865','伊通满族自治县','237');
INSERT INTO `cmseasy_b_area` VALUES('866','龙山区','238');
INSERT INTO `cmseasy_b_area` VALUES('867','东丰县','238');
INSERT INTO `cmseasy_b_area` VALUES('868','东辽县','238');
INSERT INTO `cmseasy_b_area` VALUES('869','西安区','238');
INSERT INTO `cmseasy_b_area` VALUES('870','东昌区','239');
INSERT INTO `cmseasy_b_area` VALUES('871','通化县','239');
INSERT INTO `cmseasy_b_area` VALUES('872','柳河县','239');
INSERT INTO `cmseasy_b_area` VALUES('873','集安市','239');
INSERT INTO `cmseasy_b_area` VALUES('874','二道江区','239');
INSERT INTO `cmseasy_b_area` VALUES('875','辉南县','239');
INSERT INTO `cmseasy_b_area` VALUES('876','梅河口市','239');
INSERT INTO `cmseasy_b_area` VALUES('877','八道江区','240');
INSERT INTO `cmseasy_b_area` VALUES('878','靖宇县','240');
INSERT INTO `cmseasy_b_area` VALUES('879','江源县','240');
INSERT INTO `cmseasy_b_area` VALUES('880','临江市','240');
INSERT INTO `cmseasy_b_area` VALUES('881','抚松县','240');
INSERT INTO `cmseasy_b_area` VALUES('882','长白朝鲜族自治县','240');
INSERT INTO `cmseasy_b_area` VALUES('883','延吉市','241');
INSERT INTO `cmseasy_b_area` VALUES('884','敦化市','241');
INSERT INTO `cmseasy_b_area` VALUES('885','龙井市','241');
INSERT INTO `cmseasy_b_area` VALUES('886','安图县','241');
INSERT INTO `cmseasy_b_area` VALUES('887','汪清县','241');
INSERT INTO `cmseasy_b_area` VALUES('888','图们市','241');
INSERT INTO `cmseasy_b_area` VALUES('889','珲春市','241');
INSERT INTO `cmseasy_b_area` VALUES('890','和龙市','241');
INSERT INTO `cmseasy_b_area` VALUES('891','洮北区','242');
INSERT INTO `cmseasy_b_area` VALUES('892','通榆县','242');
INSERT INTO `cmseasy_b_area` VALUES('893','大安市','242');
INSERT INTO `cmseasy_b_area` VALUES('894','镇赉县','242');
INSERT INTO `cmseasy_b_area` VALUES('895','洮南市','242');
INSERT INTO `cmseasy_b_area` VALUES('896','宁江区','243');
INSERT INTO `cmseasy_b_area` VALUES('897','长岭县','243');
INSERT INTO `cmseasy_b_area` VALUES('898','扶余县','243');
INSERT INTO `cmseasy_b_area` VALUES('899','前郭尔罗斯蒙古族自治县','243');
INSERT INTO `cmseasy_b_area` VALUES('900','乾安县','243');
INSERT INTO `cmseasy_b_area` VALUES('901','道里区','244');
INSERT INTO `cmseasy_b_area` VALUES('902','道外区','244');
INSERT INTO `cmseasy_b_area` VALUES('903','动力区','244');
INSERT INTO `cmseasy_b_area` VALUES('904','松北区','244');
INSERT INTO `cmseasy_b_area` VALUES('905','依兰县','244');
INSERT INTO `cmseasy_b_area` VALUES('906','宾县','244');
INSERT INTO `cmseasy_b_area` VALUES('907','木兰县','244');
INSERT INTO `cmseasy_b_area` VALUES('908','延寿县','244');
INSERT INTO `cmseasy_b_area` VALUES('909','双城市','244');
INSERT INTO `cmseasy_b_area` VALUES('910','五常市','244');
INSERT INTO `cmseasy_b_area` VALUES('911','南岗区','244');
INSERT INTO `cmseasy_b_area` VALUES('912','香坊区','244');
INSERT INTO `cmseasy_b_area` VALUES('913','平房区','244');
INSERT INTO `cmseasy_b_area` VALUES('914','呼兰区','244');
INSERT INTO `cmseasy_b_area` VALUES('915','方正县','244');
INSERT INTO `cmseasy_b_area` VALUES('916','巴彦县','244');
INSERT INTO `cmseasy_b_area` VALUES('917','通河县','244');
INSERT INTO `cmseasy_b_area` VALUES('918','阿城市','244');
INSERT INTO `cmseasy_b_area` VALUES('919','尚志市','244');
INSERT INTO `cmseasy_b_area` VALUES('920','龙沙区','245');
INSERT INTO `cmseasy_b_area` VALUES('921','铁锋区','245');
INSERT INTO `cmseasy_b_area` VALUES('922','富拉尔基区','245');
INSERT INTO `cmseasy_b_area` VALUES('923','梅里斯达斡尔族区','245');
INSERT INTO `cmseasy_b_area` VALUES('924','依安县','245');
INSERT INTO `cmseasy_b_area` VALUES('925','甘南县','245');
INSERT INTO `cmseasy_b_area` VALUES('926','克山县','245');
INSERT INTO `cmseasy_b_area` VALUES('927','拜泉县','245');
INSERT INTO `cmseasy_b_area` VALUES('928','建华区','245');
INSERT INTO `cmseasy_b_area` VALUES('929','昂昂溪区','245');
INSERT INTO `cmseasy_b_area` VALUES('930','碾子山区','245');
INSERT INTO `cmseasy_b_area` VALUES('931','龙江县','245');
INSERT INTO `cmseasy_b_area` VALUES('932','泰来县','245');
INSERT INTO `cmseasy_b_area` VALUES('933','富裕县','245');
INSERT INTO `cmseasy_b_area` VALUES('934','克东县','245');
INSERT INTO `cmseasy_b_area` VALUES('935','讷河市','245');
INSERT INTO `cmseasy_b_area` VALUES('936','向阳区','246');
INSERT INTO `cmseasy_b_area` VALUES('937','南山区','246');
INSERT INTO `cmseasy_b_area` VALUES('938','东山区','246');
INSERT INTO `cmseasy_b_area` VALUES('939','萝北县','246');
INSERT INTO `cmseasy_b_area` VALUES('940','工农区','246');
INSERT INTO `cmseasy_b_area` VALUES('941','兴安区','246');
INSERT INTO `cmseasy_b_area` VALUES('942','兴山区','246');
INSERT INTO `cmseasy_b_area` VALUES('943','绥滨县','246');
INSERT INTO `cmseasy_b_area` VALUES('944','尖山区','247');
INSERT INTO `cmseasy_b_area` VALUES('945','四方台区','247');
INSERT INTO `cmseasy_b_area` VALUES('946','集贤县','247');
INSERT INTO `cmseasy_b_area` VALUES('947','宝清县','247');
INSERT INTO `cmseasy_b_area` VALUES('948','岭东区','247');
INSERT INTO `cmseasy_b_area` VALUES('949','宝山区','247');
INSERT INTO `cmseasy_b_area` VALUES('950','友谊县','247');
INSERT INTO `cmseasy_b_area` VALUES('951','饶河县','247');
INSERT INTO `cmseasy_b_area` VALUES('952','鸡冠区','248');
INSERT INTO `cmseasy_b_area` VALUES('953','滴道区','248');
INSERT INTO `cmseasy_b_area` VALUES('954','城子河区','248');
INSERT INTO `cmseasy_b_area` VALUES('955','鸡东县','248');
INSERT INTO `cmseasy_b_area` VALUES('956','密山市','248');
INSERT INTO `cmseasy_b_area` VALUES('957','恒山区','248');
INSERT INTO `cmseasy_b_area` VALUES('958','梨树区','248');
INSERT INTO `cmseasy_b_area` VALUES('959','麻山区','248');
INSERT INTO `cmseasy_b_area` VALUES('960','虎林市','248');
INSERT INTO `cmseasy_b_area` VALUES('961','萨尔图区','249');
INSERT INTO `cmseasy_b_area` VALUES('962','让胡路区','249');
INSERT INTO `cmseasy_b_area` VALUES('963','大同区','249');
INSERT INTO `cmseasy_b_area` VALUES('964','肇源县','249');
INSERT INTO `cmseasy_b_area` VALUES('965','杜尔伯特蒙古族自治县','249');
INSERT INTO `cmseasy_b_area` VALUES('966','龙凤区','249');
INSERT INTO `cmseasy_b_area` VALUES('967','红岗区','249');
INSERT INTO `cmseasy_b_area` VALUES('968','肇州县','249');
INSERT INTO `cmseasy_b_area` VALUES('969','林甸县','249');
INSERT INTO `cmseasy_b_area` VALUES('970','伊春区','250');
INSERT INTO `cmseasy_b_area` VALUES('971','友好区','250');
INSERT INTO `cmseasy_b_area` VALUES('972','翠峦区','250');
INSERT INTO `cmseasy_b_area` VALUES('973','美溪区','250');
INSERT INTO `cmseasy_b_area` VALUES('974','五营区','250');
INSERT INTO `cmseasy_b_area` VALUES('975','汤旺河区','250');
INSERT INTO `cmseasy_b_area` VALUES('976','乌伊岭区','250');
INSERT INTO `cmseasy_b_area` VALUES('977','上甘岭区','250');
INSERT INTO `cmseasy_b_area` VALUES('978','铁力市','250');
INSERT INTO `cmseasy_b_area` VALUES('979','南岔区','250');
INSERT INTO `cmseasy_b_area` VALUES('980','西\r\n\r\n林区','250');
INSERT INTO `cmseasy_b_area` VALUES('981','新青区','250');
INSERT INTO `cmseasy_b_area` VALUES('982','金山屯区','250');
INSERT INTO `cmseasy_b_area` VALUES('983','乌马河区','250');
INSERT INTO `cmseasy_b_area` VALUES('984','带岭区','250');
INSERT INTO `cmseasy_b_area` VALUES('985','红星区','250');
INSERT INTO `cmseasy_b_area` VALUES('986','嘉荫县','250');
INSERT INTO `cmseasy_b_area` VALUES('987','东安区','251');
INSERT INTO `cmseasy_b_area` VALUES('988','爱民区','251');
INSERT INTO `cmseasy_b_area` VALUES('989','东宁县','251');
INSERT INTO `cmseasy_b_area` VALUES('990','绥芬河市','251');
INSERT INTO `cmseasy_b_area` VALUES('991','宁安市','251');
INSERT INTO `cmseasy_b_area` VALUES('992','阳明区','251');
INSERT INTO `cmseasy_b_area` VALUES('993','西安区','251');
INSERT INTO `cmseasy_b_area` VALUES('994','林口县','251');
INSERT INTO `cmseasy_b_area` VALUES('995','海林市','251');
INSERT INTO `cmseasy_b_area` VALUES('996','穆棱市','251');
INSERT INTO `cmseasy_b_area` VALUES('997','永红区','252');
INSERT INTO `cmseasy_b_area` VALUES('998','前进区','252');
INSERT INTO `cmseasy_b_area` VALUES('999','郊区','252');
INSERT INTO `cmseasy_b_area` VALUES('1000','桦川县','252');
INSERT INTO `cmseasy_b_area` VALUES('1001','抚远县','252');
INSERT INTO `cmseasy_b_area` VALUES('1002','富锦市','252');
INSERT INTO `cmseasy_b_area` VALUES('1003','向阳区','252');
INSERT INTO `cmseasy_b_area` VALUES('1004','东风区','252');
INSERT INTO `cmseasy_b_area` VALUES('1005','桦南县','252');
INSERT INTO `cmseasy_b_area` VALUES('1006','汤原县','252');
INSERT INTO `cmseasy_b_area` VALUES('1007','同江市','252');
INSERT INTO `cmseasy_b_area` VALUES('1008','新兴区','253');
INSERT INTO `cmseasy_b_area` VALUES('1009','桃山区','253');
INSERT INTO `cmseasy_b_area` VALUES('1010','茄子河区','253');
INSERT INTO `cmseasy_b_area` VALUES('1011','勃利县','253');
INSERT INTO `cmseasy_b_area` VALUES('1012','爱辉区','254');
INSERT INTO `cmseasy_b_area` VALUES('1013','逊克县','254');
INSERT INTO `cmseasy_b_area` VALUES('1014','北安市','254');
INSERT INTO `cmseasy_b_area` VALUES('1015','嫩江县','254');
INSERT INTO `cmseasy_b_area` VALUES('1016','孙吴县','254');
INSERT INTO `cmseasy_b_area` VALUES('1017','五大连池市','254');
INSERT INTO `cmseasy_b_area` VALUES('1018','北林区','255');
INSERT INTO `cmseasy_b_area` VALUES('1019','兰西县','255');
INSERT INTO `cmseasy_b_area` VALUES('1020','庆安县','255');
INSERT INTO `cmseasy_b_area` VALUES('1021','绥棱县','255');
INSERT INTO `cmseasy_b_area` VALUES('1022','肇东市','255');
INSERT INTO `cmseasy_b_area` VALUES('1023','望奎县','255');
INSERT INTO `cmseasy_b_area` VALUES('1024','青冈县','255');
INSERT INTO `cmseasy_b_area` VALUES('1025','明水县','255');
INSERT INTO `cmseasy_b_area` VALUES('1026','安达市','255');
INSERT INTO `cmseasy_b_area` VALUES('1027','海伦市','255');
INSERT INTO `cmseasy_b_area` VALUES('1028','呼玛县','256');
INSERT INTO `cmseasy_b_area` VALUES('1029','漠河县','256');
INSERT INTO `cmseasy_b_area` VALUES('1030','塔河县','256');
INSERT INTO `cmseasy_b_area` VALUES('1031','长安区','257');
INSERT INTO `cmseasy_b_area` VALUES('1032','桥西区','257');
INSERT INTO `cmseasy_b_area` VALUES('1033','井陉矿区','257');
INSERT INTO `cmseasy_b_area` VALUES('1034','井陉县','257');
INSERT INTO `cmseasy_b_area` VALUES('1035','栾城县','257');
INSERT INTO `cmseasy_b_area` VALUES('1036','灵寿县','257');
INSERT INTO `cmseasy_b_area` VALUES('1037','深泽县','257');
INSERT INTO `cmseasy_b_area` VALUES('1038','无极县','257');
INSERT INTO `cmseasy_b_area` VALUES('1039','元氏县','257');
INSERT INTO `cmseasy_b_area` VALUES('1040','辛集市','257');
INSERT INTO `cmseasy_b_area` VALUES('1041','晋州市','257');
INSERT INTO `cmseasy_b_area` VALUES('1042','鹿泉市','257');
INSERT INTO `cmseasy_b_area` VALUES('1043','桥东区','257');
INSERT INTO `cmseasy_b_area` VALUES('1044','新华区','257');
INSERT INTO `cmseasy_b_area` VALUES('1045','裕华区','257');
INSERT INTO `cmseasy_b_area` VALUES('1046','正定县','257');
INSERT INTO `cmseasy_b_area` VALUES('1047','行唐县','257');
INSERT INTO `cmseasy_b_area` VALUES('1048','高邑县','257');
INSERT INTO `cmseasy_b_area` VALUES('1049','赞皇县','257');
INSERT INTO `cmseasy_b_area` VALUES('1050','平山县','257');
INSERT INTO `cmseasy_b_area` VALUES('1051','赵县','257');
INSERT INTO `cmseasy_b_area` VALUES('1052','藁城市','257');
INSERT INTO `cmseasy_b_area` VALUES('1053','新乐市','257');
INSERT INTO `cmseasy_b_area` VALUES('1054','路南区','258');
INSERT INTO `cmseasy_b_area` VALUES('1055','古冶区','258');
INSERT INTO `cmseasy_b_area` VALUES('1056','丰南区','258');
INSERT INTO `cmseasy_b_area` VALUES('1057','滦县','258');
INSERT INTO `cmseasy_b_area` VALUES('1058','乐亭县','258');
INSERT INTO `cmseasy_b_area` VALUES('1059','玉田县','258');
INSERT INTO `cmseasy_b_area` VALUES('1060','遵化市','258');
INSERT INTO `cmseasy_b_area` VALUES('1061','路北区','258');
INSERT INTO `cmseasy_b_area` VALUES('1062','开平区','258');
INSERT INTO `cmseasy_b_area` VALUES('1063','丰润区','258');
INSERT INTO `cmseasy_b_area` VALUES('1064','滦南县','258');
INSERT INTO `cmseasy_b_area` VALUES('1065','迁西县','258');
INSERT INTO `cmseasy_b_area` VALUES('1066','唐海县','258');
INSERT INTO `cmseasy_b_area` VALUES('1067','迁安市','258');
INSERT INTO `cmseasy_b_area` VALUES('1068','海港区','259');
INSERT INTO `cmseasy_b_area` VALUES('1069','北戴河区','259');
INSERT INTO `cmseasy_b_area` VALUES('1070','昌黎县','259');
INSERT INTO `cmseasy_b_area` VALUES('1071','卢龙县','259');
INSERT INTO `cmseasy_b_area` VALUES('1072','山海关区','259');
INSERT INTO `cmseasy_b_area` VALUES('1073','青龙满族自治县','259');
INSERT INTO `cmseasy_b_area` VALUES('1074','抚宁县','259');
INSERT INTO `cmseasy_b_area` VALUES('1075','新华区','267');
INSERT INTO `cmseasy_b_area` VALUES('1076','沧县','267');
INSERT INTO `cmseasy_b_area` VALUES('1077','东光县','267');
INSERT INTO `cmseasy_b_area` VALUES('1078','盐山县','267');
INSERT INTO `cmseasy_b_area` VALUES('1079','南皮县','267');
INSERT INTO `cmseasy_b_area` VALUES('1080','献县','267');
INSERT INTO `cmseasy_b_area` VALUES('1081','泊头市','267');
INSERT INTO `cmseasy_b_area` VALUES('1082','黄骅市','267');
INSERT INTO `cmseasy_b_area` VALUES('1083','运河区','267');
INSERT INTO `cmseasy_b_area` VALUES('1084','青县','267');
INSERT INTO `cmseasy_b_area` VALUES('1085','海兴县','267');
INSERT INTO `cmseasy_b_area` VALUES('1086','肃宁县','267');
INSERT INTO `cmseasy_b_area` VALUES('1087','吴桥县','267');
INSERT INTO `cmseasy_b_area` VALUES('1088','孟村回族自治县','267');
INSERT INTO `cmseasy_b_area` VALUES('1089','任丘市','267');
INSERT INTO `cmseasy_b_area` VALUES('1090','河间市','267');
INSERT INTO `cmseasy_b_area` VALUES('1091','桃城区','266');
INSERT INTO `cmseasy_b_area` VALUES('1092','武邑县','266');
INSERT INTO `cmseasy_b_area` VALUES('1093','饶阳县','266');
INSERT INTO `cmseasy_b_area` VALUES('1094','故城县','266');
INSERT INTO `cmseasy_b_area` VALUES('1095','阜城县','266');
INSERT INTO `cmseasy_b_area` VALUES('1096','深州市','266');
INSERT INTO `cmseasy_b_area` VALUES('1097','枣强县','266');
INSERT INTO `cmseasy_b_area` VALUES('1098','武强县','266');
INSERT INTO `cmseasy_b_area` VALUES('1099','安平县','266');
INSERT INTO `cmseasy_b_area` VALUES('1100','景县','266');
INSERT INTO `cmseasy_b_area` VALUES('1101','冀州市','266');
INSERT INTO `cmseasy_b_area` VALUES('1102','邯山区','260');
INSERT INTO `cmseasy_b_area` VALUES('1103','复兴区','260');
INSERT INTO `cmseasy_b_area` VALUES('1104','邯郸县','260');
INSERT INTO `cmseasy_b_area` VALUES('1105','成安县','260');
INSERT INTO `cmseasy_b_area` VALUES('1106','涉县','260');
INSERT INTO `cmseasy_b_area` VALUES('1107','肥乡县','260');
INSERT INTO `cmseasy_b_area` VALUES('1108','邱县','260');
INSERT INTO `cmseasy_b_area` VALUES('1109','广平县','260');
INSERT INTO `cmseasy_b_area` VALUES('1110','魏县','260');
INSERT INTO `cmseasy_b_area` VALUES('1111','武安市','260');
INSERT INTO `cmseasy_b_area` VALUES('1112','丛台区','260');
INSERT INTO `cmseasy_b_area` VALUES('1113','峰峰矿区','260');
INSERT INTO `cmseasy_b_area` VALUES('1114','临漳县','260');
INSERT INTO `cmseasy_b_area` VALUES('1115','大名县','260');
INSERT INTO `cmseasy_b_area` VALUES('1116','磁县','260');
INSERT INTO `cmseasy_b_area` VALUES('1117','永年县','260');
INSERT INTO `cmseasy_b_area` VALUES('1118','鸡泽县','260');
INSERT INTO `cmseasy_b_area` VALUES('1119','馆陶县','260');
INSERT INTO `cmseasy_b_area` VALUES('1120','曲周县','260');
INSERT INTO `cmseasy_b_area` VALUES('1121','桥东区','261');
INSERT INTO `cmseasy_b_area` VALUES('1122','邢台县','261');
INSERT INTO `cmseasy_b_area` VALUES('1123','内丘县','261');
INSERT INTO `cmseasy_b_area` VALUES('1124','隆尧县','261');
INSERT INTO `cmseasy_b_area` VALUES('1125','南和县','261');
INSERT INTO `cmseasy_b_area` VALUES('1126','巨鹿县','261');
INSERT INTO `cmseasy_b_area` VALUES('1127','广宗县','261');
INSERT INTO `cmseasy_b_area` VALUES('1128','威县','261');
INSERT INTO `cmseasy_b_area` VALUES('1129','临西县','261');
INSERT INTO `cmseasy_b_area` VALUES('1130','沙河市','261');
INSERT INTO `cmseasy_b_area` VALUES('1131','桥西区','261');
INSERT INTO `cmseasy_b_area` VALUES('1132','临\r\n城县','261');
INSERT INTO `cmseasy_b_area` VALUES('1133','柏乡县','261');
INSERT INTO `cmseasy_b_area` VALUES('1134','任县','261');
INSERT INTO `cmseasy_b_area` VALUES('1135','宁晋县','261');
INSERT INTO `cmseasy_b_area` VALUES('1136','新河县','261');
INSERT INTO `cmseasy_b_area` VALUES('1137','平乡县','261');
INSERT INTO `cmseasy_b_area` VALUES('1138','清河县','261');
INSERT INTO `cmseasy_b_area` VALUES('1139','南宫市','261');
INSERT INTO `cmseasy_b_area` VALUES('1140','新市区','262');
INSERT INTO `cmseasy_b_area` VALUES('1141','南市区','262');
INSERT INTO `cmseasy_b_area` VALUES('1142','清苑县','262');
INSERT INTO `cmseasy_b_area` VALUES('1143','阜平县','262');
INSERT INTO `cmseasy_b_area` VALUES('1144','定兴县','262');
INSERT INTO `cmseasy_b_area` VALUES('1145','高阳县','262');
INSERT INTO `cmseasy_b_area` VALUES('1146','涞源县','262');
INSERT INTO `cmseasy_b_area` VALUES('1147','安新县','262');
INSERT INTO `cmseasy_b_area` VALUES('1148','曲阳县','262');
INSERT INTO `cmseasy_b_area` VALUES('1149','顺平县','262');
INSERT INTO `cmseasy_b_area` VALUES('1150','雄县','262');
INSERT INTO `cmseasy_b_area` VALUES('1151','定\r\n州市','262');
INSERT INTO `cmseasy_b_area` VALUES('1152','高碑店市','262');
INSERT INTO `cmseasy_b_area` VALUES('1153','北市区','262');
INSERT INTO `cmseasy_b_area` VALUES('1154','满城县','262');
INSERT INTO `cmseasy_b_area` VALUES('1155','涞水县','262');
INSERT INTO `cmseasy_b_area` VALUES('1156','徐水县','262');
INSERT INTO `cmseasy_b_area` VALUES('1157','唐县','262');
INSERT INTO `cmseasy_b_area` VALUES('1158','容城县','262');
INSERT INTO `cmseasy_b_area` VALUES('1159','望都县','262');
INSERT INTO `cmseasy_b_area` VALUES('1160','易县','262');
INSERT INTO `cmseasy_b_area` VALUES('1161','蠡县','262');
INSERT INTO `cmseasy_b_area` VALUES('1162','博野县','262');
INSERT INTO `cmseasy_b_area` VALUES('1163','涿州市','262');
INSERT INTO `cmseasy_b_area` VALUES('1164','安国市','262');
INSERT INTO `cmseasy_b_area` VALUES('1165','桥东区','263');
INSERT INTO `cmseasy_b_area` VALUES('1166','宣化区','263');
INSERT INTO `cmseasy_b_area` VALUES('1167','宣化县','263');
INSERT INTO `cmseasy_b_area` VALUES('1168','康保县','263');
INSERT INTO `cmseasy_b_area` VALUES('1169','尚义县','263');
INSERT INTO `cmseasy_b_area` VALUES('1170','阳原县','263');
INSERT INTO `cmseasy_b_area` VALUES('1171','万全县','263');
INSERT INTO `cmseasy_b_area` VALUES('1172','涿鹿县','263');
INSERT INTO `cmseasy_b_area` VALUES('1173','崇礼县','263');
INSERT INTO `cmseasy_b_area` VALUES('1174','桥西区','263');
INSERT INTO `cmseasy_b_area` VALUES('1175','下花园区','263');
INSERT INTO `cmseasy_b_area` VALUES('1176','张北县','263');
INSERT INTO `cmseasy_b_area` VALUES('1177','沽源县','263');
INSERT INTO `cmseasy_b_area` VALUES('1178','蔚县','263');
INSERT INTO `cmseasy_b_area` VALUES('1179','怀安县','263');
INSERT INTO `cmseasy_b_area` VALUES('1180','怀来县','263');
INSERT INTO `cmseasy_b_area` VALUES('1181','赤城县','263');
INSERT INTO `cmseasy_b_area` VALUES('1182','双桥区','264');
INSERT INTO `cmseasy_b_area` VALUES('1183','鹰手营子矿区','264');
INSERT INTO `cmseasy_b_area` VALUES('1184','兴隆县','264');
INSERT INTO `cmseasy_b_area` VALUES('1185','滦平县','264');
INSERT INTO `cmseasy_b_area` VALUES('1186','丰宁满族自治县','264');
INSERT INTO `cmseasy_b_area` VALUES('1187','围场满族蒙古族自治县','264');
INSERT INTO `cmseasy_b_area` VALUES('1188','双滦区','264');
INSERT INTO `cmseasy_b_area` VALUES('1189','承德县','264');
INSERT INTO `cmseasy_b_area` VALUES('1190','平泉县','264');
INSERT INTO `cmseasy_b_area` VALUES('1191','隆化县','264');
INSERT INTO `cmseasy_b_area` VALUES('1192','宽城满族自治县','264');
INSERT INTO `cmseasy_b_area` VALUES('1193','安次区','265');
INSERT INTO `cmseasy_b_area` VALUES('1194','固安县','265');
INSERT INTO `cmseasy_b_area` VALUES('1195','香河县','265');
INSERT INTO `cmseasy_b_area` VALUES('1196','文安县','265');
INSERT INTO `cmseasy_b_area` VALUES('1197','霸州市','265');
INSERT INTO `cmseasy_b_area` VALUES('1198','广阳区','265');
INSERT INTO `cmseasy_b_area` VALUES('1199','永清县','265');
INSERT INTO `cmseasy_b_area` VALUES('1200','大城县','265');
INSERT INTO `cmseasy_b_area` VALUES('1201','大厂回族自治县','265');
INSERT INTO `cmseasy_b_area` VALUES('1202','三河市','265');
INSERT INTO `cmseasy_b_area` VALUES('1203','小店区','268');
INSERT INTO `cmseasy_b_area` VALUES('1204','杏花岭区','268');
INSERT INTO `cmseasy_b_area` VALUES('1205','万柏林区','268');
INSERT INTO `cmseasy_b_area` VALUES('1206','清徐县','268');
INSERT INTO `cmseasy_b_area` VALUES('1207','娄烦县','268');
INSERT INTO `cmseasy_b_area` VALUES('1208','古交市','268');
INSERT INTO `cmseasy_b_area` VALUES('1209','迎泽区','268');
INSERT INTO `cmseasy_b_area` VALUES('1210','尖草坪区','268');
INSERT INTO `cmseasy_b_area` VALUES('1211','晋源区','268');
INSERT INTO `cmseasy_b_area` VALUES('1212','阳曲县','268');
INSERT INTO `cmseasy_b_area` VALUES('1213','城区','269');
INSERT INTO `cmseasy_b_area` VALUES('1214','南郊区','269');
INSERT INTO `cmseasy_b_area` VALUES('1215','阳高县','269');
INSERT INTO `cmseasy_b_area` VALUES('1216','广灵县','269');
INSERT INTO `cmseasy_b_area` VALUES('1217','浑源县','269');
INSERT INTO `cmseasy_b_area` VALUES('1218','大同县','269');
INSERT INTO `cmseasy_b_area` VALUES('1219','矿区','269');
INSERT INTO `cmseasy_b_area` VALUES('1220','新荣区','269');
INSERT INTO `cmseasy_b_area` VALUES('1221','天镇县','269');
INSERT INTO `cmseasy_b_area` VALUES('1222','灵丘县','269');
INSERT INTO `cmseasy_b_area` VALUES('1223','左云县','269');
INSERT INTO `cmseasy_b_area` VALUES('1224','城区','270');
INSERT INTO `cmseasy_b_area` VALUES('1225','郊区','270');
INSERT INTO `cmseasy_b_area` VALUES('1226','盂县','270');
INSERT INTO `cmseasy_b_area` VALUES('1227','矿区','270');
INSERT INTO `cmseasy_b_area` VALUES('1228','平定县','270');
INSERT INTO `cmseasy_b_area` VALUES('1229','城区','271');
INSERT INTO `cmseasy_b_area` VALUES('1230','长治县','271');
INSERT INTO `cmseasy_b_area` VALUES('1231','屯留县','271');
INSERT INTO `cmseasy_b_area` VALUES('1232','黎城县','271');
INSERT INTO `cmseasy_b_area` VALUES('1233','长子县','271');
INSERT INTO `cmseasy_b_area` VALUES('1234','沁县','271');
INSERT INTO `cmseasy_b_area` VALUES('1235','潞城市','271');
INSERT INTO `cmseasy_b_area` VALUES('1236','郊区','271');
INSERT INTO `cmseasy_b_area` VALUES('1237','襄垣县','271');
INSERT INTO `cmseasy_b_area` VALUES('1238','平顺县','271');
INSERT INTO `cmseasy_b_area` VALUES('1239','壶关县','271');
INSERT INTO `cmseasy_b_area` VALUES('1240','武乡县','271');
INSERT INTO `cmseasy_b_area` VALUES('1241','沁源县','271');
INSERT INTO `cmseasy_b_area` VALUES('1242','城区','272');
INSERT INTO `cmseasy_b_area` VALUES('1243','阳城县','272');
INSERT INTO `cmseasy_b_area` VALUES('1244','泽州县','272');
INSERT INTO `cmseasy_b_area` VALUES('1245','高平市','272');
INSERT INTO `cmseasy_b_area` VALUES('1246','沁水县','272');
INSERT INTO `cmseasy_b_area` VALUES('1247','陵川县','272');
INSERT INTO `cmseasy_b_area` VALUES('1248','朔城区','273');
INSERT INTO `cmseasy_b_area` VALUES('1249','怀仁县','273');
INSERT INTO `cmseasy_b_area` VALUES('1250','平鲁区','273');
INSERT INTO `cmseasy_b_area` VALUES('1251','山阴县','273');
INSERT INTO `cmseasy_b_area` VALUES('1252','右玉县','273');
INSERT INTO `cmseasy_b_area` VALUES('1253','应县','273');
INSERT INTO `cmseasy_b_area` VALUES('1254','榆次区','274');
INSERT INTO `cmseasy_b_area` VALUES('1255','左权县','274');
INSERT INTO `cmseasy_b_area` VALUES('1256','昔阳县','274');
INSERT INTO `cmseasy_b_area` VALUES('1257','太谷县','274');
INSERT INTO `cmseasy_b_area` VALUES('1258','平遥县','274');
INSERT INTO `cmseasy_b_area` VALUES('1259','介休市','274');
INSERT INTO `cmseasy_b_area` VALUES('1260','榆社县','274');
INSERT INTO `cmseasy_b_area` VALUES('1261','和顺县','274');
INSERT INTO `cmseasy_b_area` VALUES('1262','寿阳县','274');
INSERT INTO `cmseasy_b_area` VALUES('1263','祁县','274');
INSERT INTO `cmseasy_b_area` VALUES('1264','灵石县','274');
INSERT INTO `cmseasy_b_area` VALUES('1265','盐湖区','275');
INSERT INTO `cmseasy_b_area` VALUES('1266','万荣县','275');
INSERT INTO `cmseasy_b_area` VALUES('1267','稷山县','275');
INSERT INTO `cmseasy_b_area` VALUES('1268','绛县','275');
INSERT INTO `cmseasy_b_area` VALUES('1269','夏县','275');
INSERT INTO `cmseasy_b_area` VALUES('1270','芮城县','275');
INSERT INTO `cmseasy_b_area` VALUES('1271','河津市','275');
INSERT INTO `cmseasy_b_area` VALUES('1272','临猗县','275');
INSERT INTO `cmseasy_b_area` VALUES('1273','闻喜县','275');
INSERT INTO `cmseasy_b_area` VALUES('1274','新绛县','275');
INSERT INTO `cmseasy_b_area` VALUES('1275','垣曲县','275');
INSERT INTO `cmseasy_b_area` VALUES('1276','平陆\r\n县','275');
INSERT INTO `cmseasy_b_area` VALUES('1277','永济市','275');
INSERT INTO `cmseasy_b_area` VALUES('1278','忻府区','276');
INSERT INTO `cmseasy_b_area` VALUES('1279','五台县','276');
INSERT INTO `cmseasy_b_area` VALUES('1280','繁峙县','276');
INSERT INTO `cmseasy_b_area` VALUES('1281','静乐县','276');
INSERT INTO `cmseasy_b_area` VALUES('1282','五寨县','276');
INSERT INTO `cmseasy_b_area` VALUES('1283','河曲县','276');
INSERT INTO `cmseasy_b_area` VALUES('1284','偏关县','276');
INSERT INTO `cmseasy_b_area` VALUES('1285','原平市','276');
INSERT INTO `cmseasy_b_area` VALUES('1286','定襄县','276');
INSERT INTO `cmseasy_b_area` VALUES('1287','代县','276');
INSERT INTO `cmseasy_b_area` VALUES('1288','宁武县','276');
INSERT INTO `cmseasy_b_area` VALUES('1289','神池县','276');
INSERT INTO `cmseasy_b_area` VALUES('1290','岢岚县','276');
INSERT INTO `cmseasy_b_area` VALUES('1291','保德县','276');
INSERT INTO `cmseasy_b_area` VALUES('1292','尧都区','277');
INSERT INTO `cmseasy_b_area` VALUES('1293','翼城县','277');
INSERT INTO `cmseasy_b_area` VALUES('1294','洪洞县','277');
INSERT INTO `cmseasy_b_area` VALUES('1295','安泽县','277');
INSERT INTO `cmseasy_b_area` VALUES('1296','吉县','277');
INSERT INTO `cmseasy_b_area` VALUES('1297','大宁县','277');
INSERT INTO `cmseasy_b_area` VALUES('1298','永和县','277');
INSERT INTO `cmseasy_b_area` VALUES('1299','汾西县','277');
INSERT INTO `cmseasy_b_area` VALUES('1300','霍州市','277');
INSERT INTO `cmseasy_b_area` VALUES('1301','曲沃县','277');
INSERT INTO `cmseasy_b_area` VALUES('1302','襄汾县','277');
INSERT INTO `cmseasy_b_area` VALUES('1303','古县','277');
INSERT INTO `cmseasy_b_area` VALUES('1304','浮山县乡宁县','277');
INSERT INTO `cmseasy_b_area` VALUES('1305','隰县','277');
INSERT INTO `cmseasy_b_area` VALUES('1306','蒲县','277');
INSERT INTO `cmseasy_b_area` VALUES('1307','侯马市','277');
INSERT INTO `cmseasy_b_area` VALUES('1308','离石区','278');
INSERT INTO `cmseasy_b_area` VALUES('1309','交城县','278');
INSERT INTO `cmseasy_b_area` VALUES('1310','临县','278');
INSERT INTO `cmseasy_b_area` VALUES('1311','石楼县','278');
INSERT INTO `cmseasy_b_area` VALUES('1312','方山县','278');
INSERT INTO `cmseasy_b_area` VALUES('1313','交口县','278');
INSERT INTO `cmseasy_b_area` VALUES('1314','汾阳市','278');
INSERT INTO `cmseasy_b_area` VALUES('1315','文水县','278');
INSERT INTO `cmseasy_b_area` VALUES('1316','兴县','278');
INSERT INTO `cmseasy_b_area` VALUES('1317','柳林县','278');
INSERT INTO `cmseasy_b_area` VALUES('1318','岚县','278');
INSERT INTO `cmseasy_b_area` VALUES('1319','中阳县','278');
INSERT INTO `cmseasy_b_area` VALUES('1320','孝义市','278');
INSERT INTO `cmseasy_b_area` VALUES('1321','驿城区','294');
INSERT INTO `cmseasy_b_area` VALUES('1322','上蔡县','294');
INSERT INTO `cmseasy_b_area` VALUES('1323','正阳县','294');
INSERT INTO `cmseasy_b_area` VALUES('1324','泌阳县','294');
INSERT INTO `cmseasy_b_area` VALUES('1325','遂平县','294');
INSERT INTO `cmseasy_b_area` VALUES('1326','新蔡县','294');
INSERT INTO `cmseasy_b_area` VALUES('1327','西平县','294');
INSERT INTO `cmseasy_b_area` VALUES('1328','平舆县','294');
INSERT INTO `cmseasy_b_area` VALUES('1329','确山县','294');
INSERT INTO `cmseasy_b_area` VALUES('1330','汝南县','294');
INSERT INTO `cmseasy_b_area` VALUES('1331','川汇区','293');
INSERT INTO `cmseasy_b_area` VALUES('1332','西华县','293');
INSERT INTO `cmseasy_b_area` VALUES('1333','沈丘县','293');
INSERT INTO `cmseasy_b_area` VALUES('1334','淮阳县','293');
INSERT INTO `cmseasy_b_area` VALUES('1335','鹿邑县','293');
INSERT INTO `cmseasy_b_area` VALUES('1336','项城市','293');
INSERT INTO `cmseasy_b_area` VALUES('1337','扶沟县','293');
INSERT INTO `cmseasy_b_area` VALUES('1338','商水县','293');
INSERT INTO `cmseasy_b_area` VALUES('1339','郸城县','293');
INSERT INTO `cmseasy_b_area` VALUES('1340','太康县','293');
INSERT INTO `cmseasy_b_area` VALUES('1341','师河区','292');
INSERT INTO `cmseasy_b_area` VALUES('1342','罗山县','292');
INSERT INTO `cmseasy_b_area` VALUES('1343','新县','292');
INSERT INTO `cmseasy_b_area` VALUES('1344','固始县','292');
INSERT INTO `cmseasy_b_area` VALUES('1345','淮滨县','292');
INSERT INTO `cmseasy_b_area` VALUES('1346','息县','292');
INSERT INTO `cmseasy_b_area` VALUES('1347','平桥区','292');
INSERT INTO `cmseasy_b_area` VALUES('1348','光山县','292');
INSERT INTO `cmseasy_b_area` VALUES('1349','商城县','292');
INSERT INTO `cmseasy_b_area` VALUES('1350','潢川县','292');
INSERT INTO `cmseasy_b_area` VALUES('1351','梁园区','291');
INSERT INTO `cmseasy_b_area` VALUES('1352','民权县','291');
INSERT INTO `cmseasy_b_area` VALUES('1353','宁陵县','291');
INSERT INTO `cmseasy_b_area` VALUES('1354','虞城县','291');
INSERT INTO `cmseasy_b_area` VALUES('1355','永城市','291');
INSERT INTO `cmseasy_b_area` VALUES('1356','睢阳区','291');
INSERT INTO `cmseasy_b_area` VALUES('1357','睢县','291');
INSERT INTO `cmseasy_b_area` VALUES('1358','柘城县','291');
INSERT INTO `cmseasy_b_area` VALUES('1359','夏邑县','291');
INSERT INTO `cmseasy_b_area` VALUES('1360','宛城区','290');
INSERT INTO `cmseasy_b_area` VALUES('1361','南召县','290');
INSERT INTO `cmseasy_b_area` VALUES('1362','西峡县','290');
INSERT INTO `cmseasy_b_area` VALUES('1363','内乡县','290');
INSERT INTO `cmseasy_b_area` VALUES('1364','社旗县','290');
INSERT INTO `cmseasy_b_area` VALUES('1365','新野县','290');
INSERT INTO `cmseasy_b_area` VALUES('1366','邓州市','290');
INSERT INTO `cmseasy_b_area` VALUES('1367','卧龙区','290');
INSERT INTO `cmseasy_b_area` VALUES('1368','方城县','290');
INSERT INTO `cmseasy_b_area` VALUES('1369','镇平县','290');
INSERT INTO `cmseasy_b_area` VALUES('1370','淅川县','290');
INSERT INTO `cmseasy_b_area` VALUES('1371','唐河县','290');
INSERT INTO `cmseasy_b_area` VALUES('1372','桐柏县','290');
INSERT INTO `cmseasy_b_area` VALUES('1373','湖滨区','289');
INSERT INTO `cmseasy_b_area` VALUES('1374','陕县','289');
INSERT INTO `cmseasy_b_area` VALUES('1375','义马市','289');
INSERT INTO `cmseasy_b_area` VALUES('1376','灵宝市','289');
INSERT INTO `cmseasy_b_area` VALUES('1377','渑池县','289');
INSERT INTO `cmseasy_b_area` VALUES('1378','卢氏县','289');
INSERT INTO `cmseasy_b_area` VALUES('1379','源汇区','288');
INSERT INTO `cmseasy_b_area` VALUES('1380','召陵区','288');
INSERT INTO `cmseasy_b_area` VALUES('1381','临颍县','288');
INSERT INTO `cmseasy_b_area` VALUES('1382','郾城区','288');
INSERT INTO `cmseasy_b_area` VALUES('1383','舞阳县','288');
INSERT INTO `cmseasy_b_area` VALUES('1384','魏都区','287');
INSERT INTO `cmseasy_b_area` VALUES('1385','鄢陵县','287');
INSERT INTO `cmseasy_b_area` VALUES('1386','禹州市','287');
INSERT INTO `cmseasy_b_area` VALUES('1387','长葛市','287');
INSERT INTO `cmseasy_b_area` VALUES('1388','许昌县','287');
INSERT INTO `cmseasy_b_area` VALUES('1389','襄城县','287');
INSERT INTO `cmseasy_b_area` VALUES('1390','清丰县','286');
INSERT INTO `cmseasy_b_area` VALUES('1391','范县','286');
INSERT INTO `cmseasy_b_area` VALUES('1392','濮阳县','286');
INSERT INTO `cmseasy_b_area` VALUES('1393','南乐县','286');
INSERT INTO `cmseasy_b_area` VALUES('1394','台前县','286');
INSERT INTO `cmseasy_b_area` VALUES('1395','文峰区','285');
INSERT INTO `cmseasy_b_area` VALUES('1396','殷都区','285');
INSERT INTO `cmseasy_b_area` VALUES('1397','安阳县','285');
INSERT INTO `cmseasy_b_area` VALUES('1398','滑县','285');
INSERT INTO `cmseasy_b_area` VALUES('1399','北关区','285');
INSERT INTO `cmseasy_b_area` VALUES('1400','龙安区','285');
INSERT INTO `cmseasy_b_area` VALUES('1401','汤阴县','285');
INSERT INTO `cmseasy_b_area` VALUES('1402','内黄县','285');
INSERT INTO `cmseasy_b_area` VALUES('1403','红旗区','284');
INSERT INTO `cmseasy_b_area` VALUES('1404','获嘉县','284');
INSERT INTO `cmseasy_b_area` VALUES('1405','延津县','284');
INSERT INTO `cmseasy_b_area` VALUES('1406','长垣县','284');
INSERT INTO `cmseasy_b_area` VALUES('1407','红旗区','284');
INSERT INTO `cmseasy_b_area` VALUES('1408','获嘉县','284');
INSERT INTO `cmseasy_b_area` VALUES('1409','延津县','284');
INSERT INTO `cmseasy_b_area` VALUES('1410','长垣县','284');
INSERT INTO `cmseasy_b_area` VALUES('1411','鹤山区','283');
INSERT INTO `cmseasy_b_area` VALUES('1412','淇滨区','283');
INSERT INTO `cmseasy_b_area` VALUES('1413','淇县','283');
INSERT INTO `cmseasy_b_area` VALUES('1414','山城区','283');
INSERT INTO `cmseasy_b_area` VALUES('1415','浚县','283');
INSERT INTO `cmseasy_b_area` VALUES('1416','解放区','282');
INSERT INTO `cmseasy_b_area` VALUES('1417','马村区','282');
INSERT INTO `cmseasy_b_area` VALUES('1418','修武县','282');
INSERT INTO `cmseasy_b_area` VALUES('1419','武陟县','282');
INSERT INTO `cmseasy_b_area` VALUES('1420','济源市','282');
INSERT INTO `cmseasy_b_area` VALUES('1421','孟州市','282');
INSERT INTO `cmseasy_b_area` VALUES('1422','中站区','282');
INSERT INTO `cmseasy_b_area` VALUES('1423','山阳区','282');
INSERT INTO `cmseasy_b_area` VALUES('1424','博爱县','282');
INSERT INTO `cmseasy_b_area` VALUES('1425','温县','282');
INSERT INTO `cmseasy_b_area` VALUES('1426','沁阳市','282');
INSERT INTO `cmseasy_b_area` VALUES('1427','新华区','281');
INSERT INTO `cmseasy_b_area` VALUES('1428','石龙区','281');
INSERT INTO `cmseasy_b_area` VALUES('1429','宝丰县','281');
INSERT INTO `cmseasy_b_area` VALUES('1430','鲁山县','281');
INSERT INTO `cmseasy_b_area` VALUES('1431','舞钢市','281');
INSERT INTO `cmseasy_b_area` VALUES('1432','汝州市','281');
INSERT INTO `cmseasy_b_area` VALUES('1433','卫东区','281');
INSERT INTO `cmseasy_b_area` VALUES('1434','湛河区','281');
INSERT INTO `cmseasy_b_area` VALUES('1435','叶县','281');
INSERT INTO `cmseasy_b_area` VALUES('1436','郏县','281');
INSERT INTO `cmseasy_b_area` VALUES('1437','林州市','281');
INSERT INTO `cmseasy_b_area` VALUES('1438','洛阳市','97');
INSERT INTO `cmseasy_b_area` VALUES('1439','老城区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1440','廛河回族区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1441','吉利区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1442','孟津县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1443','栾川县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1444','汝阳县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1445','洛宁县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1446','偃师市','1438');
INSERT INTO `cmseasy_b_area` VALUES('1447','西工区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1448','涧西区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1449','洛龙\r\n区','1438');
INSERT INTO `cmseasy_b_area` VALUES('1450','新安县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1451','嵩县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1452','宜阳县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1453','伊川县','1438');
INSERT INTO `cmseasy_b_area` VALUES('1454','龙亭区','280');
INSERT INTO `cmseasy_b_area` VALUES('1455','鼓楼区','280');
INSERT INTO `cmseasy_b_area` VALUES('1456','郊区','280');
INSERT INTO `cmseasy_b_area` VALUES('1457','通许县','280');
INSERT INTO `cmseasy_b_area` VALUES('1458','开封县','280');
INSERT INTO `cmseasy_b_area` VALUES('1459','兰考县','280');
INSERT INTO `cmseasy_b_area` VALUES('1460','顺河回族区','280');
INSERT INTO `cmseasy_b_area` VALUES('1461','南关区','280');
INSERT INTO `cmseasy_b_area` VALUES('1462','杞县','280');
INSERT INTO `cmseasy_b_area` VALUES('1463','尉氏县','280');
INSERT INTO `cmseasy_b_area` VALUES('1464','中原区','279');
INSERT INTO `cmseasy_b_area` VALUES('1465','管城回族区','279');
INSERT INTO `cmseasy_b_area` VALUES('1466','上街区','279');
INSERT INTO `cmseasy_b_area` VALUES('1467','中牟县','279');
INSERT INTO `cmseasy_b_area` VALUES('1468','荥阳市','279');
INSERT INTO `cmseasy_b_area` VALUES('1469','新郑市','279');
INSERT INTO `cmseasy_b_area` VALUES('1470','登封市','279');
INSERT INTO `cmseasy_b_area` VALUES('1471','二七区','279');
INSERT INTO `cmseasy_b_area` VALUES('1472','金水区','279');
INSERT INTO `cmseasy_b_area` VALUES('1473','邙山区','279');
INSERT INTO `cmseasy_b_area` VALUES('1474','巩义\r\n市','279');
INSERT INTO `cmseasy_b_area` VALUES('1475','新密市','279');
INSERT INTO `cmseasy_b_area` VALUES('1476','历下区','295');
INSERT INTO `cmseasy_b_area` VALUES('1477','槐荫区','295');
INSERT INTO `cmseasy_b_area` VALUES('1478','历城区','295');
INSERT INTO `cmseasy_b_area` VALUES('1479','平阴县','295');
INSERT INTO `cmseasy_b_area` VALUES('1480','商河县','295');
INSERT INTO `cmseasy_b_area` VALUES('1481','章丘市','295');
INSERT INTO `cmseasy_b_area` VALUES('1482','市中区','295');
INSERT INTO `cmseasy_b_area` VALUES('1483','天桥区','295');
INSERT INTO `cmseasy_b_area` VALUES('1484','长清区','295');
INSERT INTO `cmseasy_b_area` VALUES('1485','济阳县','295');
INSERT INTO `cmseasy_b_area` VALUES('1486','市南区','296');
INSERT INTO `cmseasy_b_area` VALUES('1487','四方区','296');
INSERT INTO `cmseasy_b_area` VALUES('1488','崂山区','296');
INSERT INTO `cmseasy_b_area` VALUES('1489','城阳区','296');
INSERT INTO `cmseasy_b_area` VALUES('1490','即墨市','296');
INSERT INTO `cmseasy_b_area` VALUES('1491','胶南市','296');
INSERT INTO `cmseasy_b_area` VALUES('1492','莱西市','296');
INSERT INTO `cmseasy_b_area` VALUES('1493','市北区','296');
INSERT INTO `cmseasy_b_area` VALUES('1494','黄岛区','296');
INSERT INTO `cmseasy_b_area` VALUES('1495','李沧区','296');
INSERT INTO `cmseasy_b_area` VALUES('1496','胶州市','296');
INSERT INTO `cmseasy_b_area` VALUES('1497','平度市','296');
INSERT INTO `cmseasy_b_area` VALUES('1498','淄川区','297');
INSERT INTO `cmseasy_b_area` VALUES('1499','博山区','297');
INSERT INTO `cmseasy_b_area` VALUES('1500','周村区','297');
INSERT INTO `cmseasy_b_area` VALUES('1501','高青县','297');
INSERT INTO `cmseasy_b_area` VALUES('1502','沂源县','297');
INSERT INTO `cmseasy_b_area` VALUES('1503','张店区','297');
INSERT INTO `cmseasy_b_area` VALUES('1504','临淄区','297');
INSERT INTO `cmseasy_b_area` VALUES('1505','桓台县','297');
INSERT INTO `cmseasy_b_area` VALUES('1506','市中区','298');
INSERT INTO `cmseasy_b_area` VALUES('1507','峄城区','298');
INSERT INTO `cmseasy_b_area` VALUES('1508','山亭区','298');
INSERT INTO `cmseasy_b_area` VALUES('1509','滕州市','298');
INSERT INTO `cmseasy_b_area` VALUES('1510','薛城区','298');
INSERT INTO `cmseasy_b_area` VALUES('1511','台儿庄区','298');
INSERT INTO `cmseasy_b_area` VALUES('1512','东营区','299');
INSERT INTO `cmseasy_b_area` VALUES('1513','垦利县','299');
INSERT INTO `cmseasy_b_area` VALUES('1514','广饶县','299');
INSERT INTO `cmseasy_b_area` VALUES('1515','河口区','299');
INSERT INTO `cmseasy_b_area` VALUES('1516','利津县','299');
INSERT INTO `cmseasy_b_area` VALUES('1517','潍城区','300');
INSERT INTO `cmseasy_b_area` VALUES('1518','坊子区','300');
INSERT INTO `cmseasy_b_area` VALUES('1519','临朐县','300');
INSERT INTO `cmseasy_b_area` VALUES('1520','青州市','300');
INSERT INTO `cmseasy_b_area` VALUES('1521','寿光市','300');
INSERT INTO `cmseasy_b_area` VALUES('1522','高密市','300');
INSERT INTO `cmseasy_b_area` VALUES('1523','昌邑市','300');
INSERT INTO `cmseasy_b_area` VALUES('1524','寒亭区','300');
INSERT INTO `cmseasy_b_area` VALUES('1525','奎文区','300');
INSERT INTO `cmseasy_b_area` VALUES('1526','昌乐县','300');
INSERT INTO `cmseasy_b_area` VALUES('1527','诸城市','300');
INSERT INTO `cmseasy_b_area` VALUES('1528','安丘市','300');
INSERT INTO `cmseasy_b_area` VALUES('1529','芝罘区','301');
INSERT INTO `cmseasy_b_area` VALUES('1530','牟平区','301');
INSERT INTO `cmseasy_b_area` VALUES('1531','长岛县','301');
INSERT INTO `cmseasy_b_area` VALUES('1532','莱阳市','301');
INSERT INTO `cmseasy_b_area` VALUES('1533','蓬莱市','301');
INSERT INTO `cmseasy_b_area` VALUES('1534','栖霞市','301');
INSERT INTO `cmseasy_b_area` VALUES('1535','海阳市','301');
INSERT INTO `cmseasy_b_area` VALUES('1536','福山区','301');
INSERT INTO `cmseasy_b_area` VALUES('1537','莱山区','301');
INSERT INTO `cmseasy_b_area` VALUES('1538','龙口市','301');
INSERT INTO `cmseasy_b_area` VALUES('1539','莱州市','301');
INSERT INTO `cmseasy_b_area` VALUES('1540','招远市','301');
INSERT INTO `cmseasy_b_area` VALUES('1541','环翠区','302');
INSERT INTO `cmseasy_b_area` VALUES('1542','荣成市','302');
INSERT INTO `cmseasy_b_area` VALUES('1543','乳山市','302');
INSERT INTO `cmseasy_b_area` VALUES('1544','文登市','302');
INSERT INTO `cmseasy_b_area` VALUES('1545','市中区','303');
INSERT INTO `cmseasy_b_area` VALUES('1546','微山县','303');
INSERT INTO `cmseasy_b_area` VALUES('1547','金乡县','303');
INSERT INTO `cmseasy_b_area` VALUES('1548','汶上县','303');
INSERT INTO `cmseasy_b_area` VALUES('1549','梁山县','303');
INSERT INTO `cmseasy_b_area` VALUES('1550','兖州市','303');
INSERT INTO `cmseasy_b_area` VALUES('1551','邹城市','303');
INSERT INTO `cmseasy_b_area` VALUES('1552','任城区','303');
INSERT INTO `cmseasy_b_area` VALUES('1553','鱼台县','303');
INSERT INTO `cmseasy_b_area` VALUES('1554','嘉祥县','303');
INSERT INTO `cmseasy_b_area` VALUES('1555','泗水县','303');
INSERT INTO `cmseasy_b_area` VALUES('1556','曲阜市','303');
INSERT INTO `cmseasy_b_area` VALUES('1557','泰山区','304');
INSERT INTO `cmseasy_b_area` VALUES('1558','宁阳县','304');
INSERT INTO `cmseasy_b_area` VALUES('1559','新泰市','304');
INSERT INTO `cmseasy_b_area` VALUES('1560','肥城市','304');
INSERT INTO `cmseasy_b_area` VALUES('1561','岱岳区','304');
INSERT INTO `cmseasy_b_area` VALUES('1562','东平县','304');
INSERT INTO `cmseasy_b_area` VALUES('1563','东港区','305');
INSERT INTO `cmseasy_b_area` VALUES('1564','五莲县','305');
INSERT INTO `cmseasy_b_area` VALUES('1565','莒县','305');
INSERT INTO `cmseasy_b_area` VALUES('1566','岚山区','305');
INSERT INTO `cmseasy_b_area` VALUES('1567','莱城区','306');
INSERT INTO `cmseasy_b_area` VALUES('1568','钢城区','306');
INSERT INTO `cmseasy_b_area` VALUES('1569','兰山区','307');
INSERT INTO `cmseasy_b_area` VALUES('1570','河东区','307');
INSERT INTO `cmseasy_b_area` VALUES('1571','郯城县','307');
INSERT INTO `cmseasy_b_area` VALUES('1572','苍山县','307');
INSERT INTO `cmseasy_b_area` VALUES('1573','平邑县','307');
INSERT INTO `cmseasy_b_area` VALUES('1574','蒙阴县','307');
INSERT INTO `cmseasy_b_area` VALUES('1575','临沭县','307');
INSERT INTO `cmseasy_b_area` VALUES('1576','罗庄区','307');
INSERT INTO `cmseasy_b_area` VALUES('1577','沂南县','307');
INSERT INTO `cmseasy_b_area` VALUES('1578','沂水县','307');
INSERT INTO `cmseasy_b_area` VALUES('1579','费县','307');
INSERT INTO `cmseasy_b_area` VALUES('1580','莒南县','307');
INSERT INTO `cmseasy_b_area` VALUES('1581','德城区','308');
INSERT INTO `cmseasy_b_area` VALUES('1582','宁津县','308');
INSERT INTO `cmseasy_b_area` VALUES('1583','临邑县','308');
INSERT INTO `cmseasy_b_area` VALUES('1584','平原县','308');
INSERT INTO `cmseasy_b_area` VALUES('1585','武城县','308');
INSERT INTO `cmseasy_b_area` VALUES('1586','禹城市','308');
INSERT INTO `cmseasy_b_area` VALUES('1587','陵县','308');
INSERT INTO `cmseasy_b_area` VALUES('1588','庆云县','308');
INSERT INTO `cmseasy_b_area` VALUES('1589','齐河县','308');
INSERT INTO `cmseasy_b_area` VALUES('1590','夏津县','308');
INSERT INTO `cmseasy_b_area` VALUES('1591','乐陵市','308');
INSERT INTO `cmseasy_b_area` VALUES('1592','东昌府区','309');
INSERT INTO `cmseasy_b_area` VALUES('1593','莘县','309');
INSERT INTO `cmseasy_b_area` VALUES('1594','东阿县','309');
INSERT INTO `cmseasy_b_area` VALUES('1595','高唐县','309');
INSERT INTO `cmseasy_b_area` VALUES('1596','临清市','309');
INSERT INTO `cmseasy_b_area` VALUES('1597','阳谷县','309');
INSERT INTO `cmseasy_b_area` VALUES('1598','茌平县','309');
INSERT INTO `cmseasy_b_area` VALUES('1599','冠县','309');
INSERT INTO `cmseasy_b_area` VALUES('1600','滨城区','310');
INSERT INTO `cmseasy_b_area` VALUES('1601','阳信县','310');
INSERT INTO `cmseasy_b_area` VALUES('1602','沾化县','310');
INSERT INTO `cmseasy_b_area` VALUES('1603','邹平县','310');
INSERT INTO `cmseasy_b_area` VALUES('1604','惠民县','310');
INSERT INTO `cmseasy_b_area` VALUES('1605','无棣县','310');
INSERT INTO `cmseasy_b_area` VALUES('1606','博兴县','310');
INSERT INTO `cmseasy_b_area` VALUES('1607','牡丹区','311');
INSERT INTO `cmseasy_b_area` VALUES('1608','单县','311');
INSERT INTO `cmseasy_b_area` VALUES('1609','巨野县','311');
INSERT INTO `cmseasy_b_area` VALUES('1610','东明县','311');
INSERT INTO `cmseasy_b_area` VALUES('1611','曹县','311');
INSERT INTO `cmseasy_b_area` VALUES('1612','成武县','311');
INSERT INTO `cmseasy_b_area` VALUES('1613','郓城县','311');
INSERT INTO `cmseasy_b_area` VALUES('1614','鄄城县','311');
INSERT INTO `cmseasy_b_area` VALUES('1615','定陶县','311');
INSERT INTO `cmseasy_b_area` VALUES('1616','玄武区','312');
INSERT INTO `cmseasy_b_area` VALUES('1617','秦淮区','312');
INSERT INTO `cmseasy_b_area` VALUES('1618','鼓楼区','312');
INSERT INTO `cmseasy_b_area` VALUES('1619','浦口区','312');
INSERT INTO `cmseasy_b_area` VALUES('1620','雨花台区','312');
INSERT INTO `cmseasy_b_area` VALUES('1621','六合区','312');
INSERT INTO `cmseasy_b_area` VALUES('1622','高淳县','312');
INSERT INTO `cmseasy_b_area` VALUES('1623','白下区','312');
INSERT INTO `cmseasy_b_area` VALUES('1624','建邺区','312');
INSERT INTO `cmseasy_b_area` VALUES('1625','下关区','312');
INSERT INTO `cmseasy_b_area` VALUES('1626','栖霞区','312');
INSERT INTO `cmseasy_b_area` VALUES('1627','江宁区','312');
INSERT INTO `cmseasy_b_area` VALUES('1628','溧水县','312');
INSERT INTO `cmseasy_b_area` VALUES('1629','鼓楼区','313');
INSERT INTO `cmseasy_b_area` VALUES('1630','九里区','313');
INSERT INTO `cmseasy_b_area` VALUES('1631','泉山区','313');
INSERT INTO `cmseasy_b_area` VALUES('1632','沛县','313');
INSERT INTO `cmseasy_b_area` VALUES('1633','睢宁县','313');
INSERT INTO `cmseasy_b_area` VALUES('1634','邳州市','313');
INSERT INTO `cmseasy_b_area` VALUES('1635','云龙区','313');
INSERT INTO `cmseasy_b_area` VALUES('1636','贾汪区','313');
INSERT INTO `cmseasy_b_area` VALUES('1637','丰县','313');
INSERT INTO `cmseasy_b_area` VALUES('1638','铜山县','313');
INSERT INTO `cmseasy_b_area` VALUES('1639','新沂市','313');
INSERT INTO `cmseasy_b_area` VALUES('1640','连云区','314');
INSERT INTO `cmseasy_b_area` VALUES('1641','海州区','314');
INSERT INTO `cmseasy_b_area` VALUES('1642','东海县','314');
INSERT INTO `cmseasy_b_area` VALUES('1643','灌南县','314');
INSERT INTO `cmseasy_b_area` VALUES('1644','新浦区','314');
INSERT INTO `cmseasy_b_area` VALUES('1645','赣榆县','314');
INSERT INTO `cmseasy_b_area` VALUES('1646','灌云县','314');
INSERT INTO `cmseasy_b_area` VALUES('1647','清河区','315');
INSERT INTO `cmseasy_b_area` VALUES('1648','淮阴区','315');
INSERT INTO `cmseasy_b_area` VALUES('1649','涟水县','315');
INSERT INTO `cmseasy_b_area` VALUES('1650','盱眙县','315');
INSERT INTO `cmseasy_b_area` VALUES('1651','金湖县','315');
INSERT INTO `cmseasy_b_area` VALUES('1652','楚州区','315');
INSERT INTO `cmseasy_b_area` VALUES('1653','清浦区','315');
INSERT INTO `cmseasy_b_area` VALUES('1654','洪泽县','315');
INSERT INTO `cmseasy_b_area` VALUES('1655','宿城区','316');
INSERT INTO `cmseasy_b_area` VALUES('1656','沭阳县','316');
INSERT INTO `cmseasy_b_area` VALUES('1657','泗洪县','316');
INSERT INTO `cmseasy_b_area` VALUES('1658','宿豫区','316');
INSERT INTO `cmseasy_b_area` VALUES('1659','泗阳县','316');
INSERT INTO `cmseasy_b_area` VALUES('1660','盐都区','317');
INSERT INTO `cmseasy_b_area` VALUES('1661','滨海县','317');
INSERT INTO `cmseasy_b_area` VALUES('1662','射阳县','317');
INSERT INTO `cmseasy_b_area` VALUES('1663','东台市','317');
INSERT INTO `cmseasy_b_area` VALUES('1664','大丰市','317');
INSERT INTO `cmseasy_b_area` VALUES('1665','响水县','317');
INSERT INTO `cmseasy_b_area` VALUES('1666','阜宁县','317');
INSERT INTO `cmseasy_b_area` VALUES('1667','建湖县','317');
INSERT INTO `cmseasy_b_area` VALUES('1668','广陵区','318');
INSERT INTO `cmseasy_b_area` VALUES('1669','宝应县','318');
INSERT INTO `cmseasy_b_area` VALUES('1670','高邮市','318');
INSERT INTO `cmseasy_b_area` VALUES('1671','江都市','318');
INSERT INTO `cmseasy_b_area` VALUES('1672','邗江区','318');
INSERT INTO `cmseasy_b_area` VALUES('1673','仪征市','318');
INSERT INTO `cmseasy_b_area` VALUES('1674','海陵区','319');
INSERT INTO `cmseasy_b_area` VALUES('1675','姜堰市','319');
INSERT INTO `cmseasy_b_area` VALUES('1676','高港区','319');
INSERT INTO `cmseasy_b_area` VALUES('1677','兴化市','319');
INSERT INTO `cmseasy_b_area` VALUES('1678','泰兴市','319');
INSERT INTO `cmseasy_b_area` VALUES('1679','靖江市','319');
INSERT INTO `cmseasy_b_area` VALUES('1680','海门市','320');
INSERT INTO `cmseasy_b_area` VALUES('1681','崇川区','320');
INSERT INTO `cmseasy_b_area` VALUES('1682','海安县','320');
INSERT INTO `cmseasy_b_area` VALUES('1683','启东市','320');
INSERT INTO `cmseasy_b_area` VALUES('1684','通州市','320');
INSERT INTO `cmseasy_b_area` VALUES('1685','港闸区','320');
INSERT INTO `cmseasy_b_area` VALUES('1686','如东县','320');
INSERT INTO `cmseasy_b_area` VALUES('1687','如皋市','320');
INSERT INTO `cmseasy_b_area` VALUES('1688','京口区','321');
INSERT INTO `cmseasy_b_area` VALUES('1689','丹徒区','321');
INSERT INTO `cmseasy_b_area` VALUES('1690','扬中市','321');
INSERT INTO `cmseasy_b_area` VALUES('1691','句容市','321');
INSERT INTO `cmseasy_b_area` VALUES('1692','润州区','321');
INSERT INTO `cmseasy_b_area` VALUES('1693','丹阳市','321');
INSERT INTO `cmseasy_b_area` VALUES('1694','天宁区','322');
INSERT INTO `cmseasy_b_area` VALUES('1695','戚墅堰区','322');
INSERT INTO `cmseasy_b_area` VALUES('1696','溧阳市','322');
INSERT INTO `cmseasy_b_area` VALUES('1697','金坛市','322');
INSERT INTO `cmseasy_b_area` VALUES('1698','钟楼区','322');
INSERT INTO `cmseasy_b_area` VALUES('1699','武进区','322');
INSERT INTO `cmseasy_b_area` VALUES('1700','崇安区','323');
INSERT INTO `cmseasy_b_area` VALUES('1701','北塘区','323');
INSERT INTO `cmseasy_b_area` VALUES('1702','惠山区','323');
INSERT INTO `cmseasy_b_area` VALUES('1703','宜兴市','323');
INSERT INTO `cmseasy_b_area` VALUES('1704','南长区','323');
INSERT INTO `cmseasy_b_area` VALUES('1705','锡山区','323');
INSERT INTO `cmseasy_b_area` VALUES('1706','江阴市','323');
INSERT INTO `cmseasy_b_area` VALUES('1707','沧浪区','324');
INSERT INTO `cmseasy_b_area` VALUES('1708','金阊区','324');
INSERT INTO `cmseasy_b_area` VALUES('1709','吴中区','324');
INSERT INTO `cmseasy_b_area` VALUES('1710','常熟市','324');
INSERT INTO `cmseasy_b_area` VALUES('1711','昆山市','324');
INSERT INTO `cmseasy_b_area` VALUES('1712','太仓市','324');
INSERT INTO `cmseasy_b_area` VALUES('1713','平江区','324');
INSERT INTO `cmseasy_b_area` VALUES('1714','虎丘区','324');
INSERT INTO `cmseasy_b_area` VALUES('1715','相城区','324');
INSERT INTO `cmseasy_b_area` VALUES('1716','张家港市','324');
INSERT INTO `cmseasy_b_area` VALUES('1717','吴江市','324');
INSERT INTO `cmseasy_b_area` VALUES('1718','瑶海区','325');
INSERT INTO `cmseasy_b_area` VALUES('1719','庐阳区','325');
INSERT INTO `cmseasy_b_area` VALUES('1720','蜀山区','325');
INSERT INTO `cmseasy_b_area` VALUES('1721','包河区','325');
INSERT INTO `cmseasy_b_area` VALUES('1722','长丰县','325');
INSERT INTO `cmseasy_b_area` VALUES('1723','肥东县','325');
INSERT INTO `cmseasy_b_area` VALUES('1724','肥西县','325');
INSERT INTO `cmseasy_b_area` VALUES('1725','镜湖区','326');
INSERT INTO `cmseasy_b_area` VALUES('1726','新芜区','326');
INSERT INTO `cmseasy_b_area` VALUES('1727','芜湖县','326');
INSERT INTO `cmseasy_b_area` VALUES('1728','南陵县','326');
INSERT INTO `cmseasy_b_area` VALUES('1729','马塘区','326');
INSERT INTO `cmseasy_b_area` VALUES('1730','鸠江区','326');
INSERT INTO `cmseasy_b_area` VALUES('1731','繁昌县','326');
INSERT INTO `cmseasy_b_area` VALUES('1732','龙子湖区','327');
INSERT INTO `cmseasy_b_area` VALUES('1733','禹会区','327');
INSERT INTO `cmseasy_b_area` VALUES('1734','怀远县','327');
INSERT INTO `cmseasy_b_area` VALUES('1735','固镇县','327');
INSERT INTO `cmseasy_b_area` VALUES('1736','蚌山区','327');
INSERT INTO `cmseasy_b_area` VALUES('1737','淮上区','327');
INSERT INTO `cmseasy_b_area` VALUES('1738','五河县','327');
INSERT INTO `cmseasy_b_area` VALUES('1739','大通区','328');
INSERT INTO `cmseasy_b_area` VALUES('1740','谢家集区','328');
INSERT INTO `cmseasy_b_area` VALUES('1741','潘集区','328');
INSERT INTO `cmseasy_b_area` VALUES('1742','凤台县','328');
INSERT INTO `cmseasy_b_area` VALUES('1743','田家庵区','328');
INSERT INTO `cmseasy_b_area` VALUES('1744','八公山区','328');
INSERT INTO `cmseasy_b_area` VALUES('1745','金家庄区','329');
INSERT INTO `cmseasy_b_area` VALUES('1746','雨山区','329');
INSERT INTO `cmseasy_b_area` VALUES('1747','当涂县','329');
INSERT INTO `cmseasy_b_area` VALUES('1748','花山区','329');
INSERT INTO `cmseasy_b_area` VALUES('1749','杜集区','330');
INSERT INTO `cmseasy_b_area` VALUES('1750','烈山区','330');
INSERT INTO `cmseasy_b_area` VALUES('1751','濉溪县','330');
INSERT INTO `cmseasy_b_area` VALUES('1752','相山区','330');
INSERT INTO `cmseasy_b_area` VALUES('1753','铜官山区','331');
INSERT INTO `cmseasy_b_area` VALUES('1754','郊区','331');
INSERT INTO `cmseasy_b_area` VALUES('1755','铜陵县','331');
INSERT INTO `cmseasy_b_area` VALUES('1756','狮子山区','331');
INSERT INTO `cmseasy_b_area` VALUES('1757','迎江区','332');
INSERT INTO `cmseasy_b_area` VALUES('1758','郊区','332');
INSERT INTO `cmseasy_b_area` VALUES('1759','枞阳县','332');
INSERT INTO `cmseasy_b_area` VALUES('1760','太湖县','332');
INSERT INTO `cmseasy_b_area` VALUES('1761','望江县','332');
INSERT INTO `cmseasy_b_area` VALUES('1762','桐城市','332');
INSERT INTO `cmseasy_b_area` VALUES('1763','大观区','332');
INSERT INTO `cmseasy_b_area` VALUES('1764','怀宁县','332');
INSERT INTO `cmseasy_b_area` VALUES('1765','潜山县','332');
INSERT INTO `cmseasy_b_area` VALUES('1766','宿松县','332');
INSERT INTO `cmseasy_b_area` VALUES('1767','岳西县','332');
INSERT INTO `cmseasy_b_area` VALUES('1768','屯溪区','333');
INSERT INTO `cmseasy_b_area` VALUES('1769','徽州区','333');
INSERT INTO `cmseasy_b_area` VALUES('1770','休宁县','333');
INSERT INTO `cmseasy_b_area` VALUES('1771','祁门县','333');
INSERT INTO `cmseasy_b_area` VALUES('1772','黄山区','333');
INSERT INTO `cmseasy_b_area` VALUES('1773','歙县','333');
INSERT INTO `cmseasy_b_area` VALUES('1774','黟县','333');
INSERT INTO `cmseasy_b_area` VALUES('1775','琅琊区','334');
INSERT INTO `cmseasy_b_area` VALUES('1776','来安县','334');
INSERT INTO `cmseasy_b_area` VALUES('1777','定远县','334');
INSERT INTO `cmseasy_b_area` VALUES('1778','天长市','334');
INSERT INTO `cmseasy_b_area` VALUES('1779','明光市','334');
INSERT INTO `cmseasy_b_area` VALUES('1780','南谯区','334');
INSERT INTO `cmseasy_b_area` VALUES('1781','全椒县','334');
INSERT INTO `cmseasy_b_area` VALUES('1782','凤阳县','334');
INSERT INTO `cmseasy_b_area` VALUES('1783','颍州区','335');
INSERT INTO `cmseasy_b_area` VALUES('1784','颍泉区','335');
INSERT INTO `cmseasy_b_area` VALUES('1785','太和县','335');
INSERT INTO `cmseasy_b_area` VALUES('1786','颍上县','335');
INSERT INTO `cmseasy_b_area` VALUES('1787','界首市','335');
INSERT INTO `cmseasy_b_area` VALUES('1788','颍东区','335');
INSERT INTO `cmseasy_b_area` VALUES('1789','临泉县','335');
INSERT INTO `cmseasy_b_area` VALUES('1790','阜南县','335');
INSERT INTO `cmseasy_b_area` VALUES('1791','墉桥区','336');
INSERT INTO `cmseasy_b_area` VALUES('1792','萧县','336');
INSERT INTO `cmseasy_b_area` VALUES('1793','泗县','336');
INSERT INTO `cmseasy_b_area` VALUES('1794','砀山县','336');
INSERT INTO `cmseasy_b_area` VALUES('1795','灵璧县','336');
INSERT INTO `cmseasy_b_area` VALUES('1796','居巢区','337');
INSERT INTO `cmseasy_b_area` VALUES('1797','无为县','337');
INSERT INTO `cmseasy_b_area` VALUES('1798','和县','337');
INSERT INTO `cmseasy_b_area` VALUES('1799','庐江县','337');
INSERT INTO `cmseasy_b_area` VALUES('1800','含山县','337');
INSERT INTO `cmseasy_b_area` VALUES('1801','金安区','338');
INSERT INTO `cmseasy_b_area` VALUES('1802','寿县','338');
INSERT INTO `cmseasy_b_area` VALUES('1803','舒城县','338');
INSERT INTO `cmseasy_b_area` VALUES('1804','裕安区','338');
INSERT INTO `cmseasy_b_area` VALUES('1805','霍邱县','338');
INSERT INTO `cmseasy_b_area` VALUES('1806','金寨县','338');
INSERT INTO `cmseasy_b_area` VALUES('1807','谯城区','339');
INSERT INTO `cmseasy_b_area` VALUES('1808','蒙城县','339');
INSERT INTO `cmseasy_b_area` VALUES('1809','利辛县','339');
INSERT INTO `cmseasy_b_area` VALUES('1810','涡阳县','339');
INSERT INTO `cmseasy_b_area` VALUES('1811','贵池区','340');
INSERT INTO `cmseasy_b_area` VALUES('1812','石台县','340');
INSERT INTO `cmseasy_b_area` VALUES('1813','青阳县','340');
INSERT INTO `cmseasy_b_area` VALUES('1814','东至县','340');
INSERT INTO `cmseasy_b_area` VALUES('1815','宣州区','341');
INSERT INTO `cmseasy_b_area` VALUES('1816','广德县','341');
INSERT INTO `cmseasy_b_area` VALUES('1817','绩溪县','341');
INSERT INTO `cmseasy_b_area` VALUES('1818','宁国市','341');
INSERT INTO `cmseasy_b_area` VALUES('1819','郎溪县','341');
INSERT INTO `cmseasy_b_area` VALUES('1820','泾县','341');
INSERT INTO `cmseasy_b_area` VALUES('1821','旌德县','341');
INSERT INTO `cmseasy_b_area` VALUES('1822','东湖区','342');
INSERT INTO `cmseasy_b_area` VALUES('1823','青云谱区','342');
INSERT INTO `cmseasy_b_area` VALUES('1824','南昌县','342');
INSERT INTO `cmseasy_b_area` VALUES('1825','安义县','342');
INSERT INTO `cmseasy_b_area` VALUES('1826','进贤县','342');
INSERT INTO `cmseasy_b_area` VALUES('1827','西湖区','342');
INSERT INTO `cmseasy_b_area` VALUES('1828','湾里区','342');
INSERT INTO `cmseasy_b_area` VALUES('1829','新建县','342');
INSERT INTO `cmseasy_b_area` VALUES('1830','昌江区','343');
INSERT INTO `cmseasy_b_area` VALUES('1831','浮梁县','343');
INSERT INTO `cmseasy_b_area` VALUES('1832','乐平市','343');
INSERT INTO `cmseasy_b_area` VALUES('1833','珠山区','343');
INSERT INTO `cmseasy_b_area` VALUES('1834','安源区','344');
INSERT INTO `cmseasy_b_area` VALUES('1835','莲花县','344');
INSERT INTO `cmseasy_b_area` VALUES('1836','芦溪县','344');
INSERT INTO `cmseasy_b_area` VALUES('1837','湘东区','344');
INSERT INTO `cmseasy_b_area` VALUES('1838','上栗县','344');
INSERT INTO `cmseasy_b_area` VALUES('1839','庐山区','345');
INSERT INTO `cmseasy_b_area` VALUES('1840','九江县','345');
INSERT INTO `cmseasy_b_area` VALUES('1841','修水县','345');
INSERT INTO `cmseasy_b_area` VALUES('1842','德安县','345');
INSERT INTO `cmseasy_b_area` VALUES('1843','都昌县','345');
INSERT INTO `cmseasy_b_area` VALUES('1844','彭泽县','345');
INSERT INTO `cmseasy_b_area` VALUES('1845','瑞昌市','345');
INSERT INTO `cmseasy_b_area` VALUES('1846','浔阳区','345');
INSERT INTO `cmseasy_b_area` VALUES('1847','武宁县','345');
INSERT INTO `cmseasy_b_area` VALUES('1848','永修县','345');
INSERT INTO `cmseasy_b_area` VALUES('1849','星子县','345');
INSERT INTO `cmseasy_b_area` VALUES('1850','湖口县','345');
INSERT INTO `cmseasy_b_area` VALUES('1851','渝水区','346');
INSERT INTO `cmseasy_b_area` VALUES('1852','分宜县','346');
INSERT INTO `cmseasy_b_area` VALUES('1853','月湖区','347');
INSERT INTO `cmseasy_b_area` VALUES('1854','贵溪市','347');
INSERT INTO `cmseasy_b_area` VALUES('1855','余江县','347');
INSERT INTO `cmseasy_b_area` VALUES('1856','章贡区','348');
INSERT INTO `cmseasy_b_area` VALUES('1857','信丰县','348');
INSERT INTO `cmseasy_b_area` VALUES('1858','上犹县','348');
INSERT INTO `cmseasy_b_area` VALUES('1859','安远县','348');
INSERT INTO `cmseasy_b_area` VALUES('1860','定南县','348');
INSERT INTO `cmseasy_b_area` VALUES('1861','宁都县','348');
INSERT INTO `cmseasy_b_area` VALUES('1862','兴国县','348');
INSERT INTO `cmseasy_b_area` VALUES('1863','寻乌县','348');
INSERT INTO `cmseasy_b_area` VALUES('1864','瑞金市','348');
INSERT INTO `cmseasy_b_area` VALUES('1865','南康市','348');
INSERT INTO `cmseasy_b_area` VALUES('1866','赣县','348');
INSERT INTO `cmseasy_b_area` VALUES('1867','大余县','348');
INSERT INTO `cmseasy_b_area` VALUES('1868','崇义县','348');
INSERT INTO `cmseasy_b_area` VALUES('1869','龙南县','348');
INSERT INTO `cmseasy_b_area` VALUES('1870','全南县','348');
INSERT INTO `cmseasy_b_area` VALUES('1871','于都县','348');
INSERT INTO `cmseasy_b_area` VALUES('1872','会昌县','348');
INSERT INTO `cmseasy_b_area` VALUES('1873','石城县','348');
INSERT INTO `cmseasy_b_area` VALUES('1874','吉州区','349');
INSERT INTO `cmseasy_b_area` VALUES('1875','吉安县','349');
INSERT INTO `cmseasy_b_area` VALUES('1876','峡江县','349');
INSERT INTO `cmseasy_b_area` VALUES('1877','永丰县','349');
INSERT INTO `cmseasy_b_area` VALUES('1878','遂川县','349');
INSERT INTO `cmseasy_b_area` VALUES('1879','安福县','349');
INSERT INTO `cmseasy_b_area` VALUES('1880','井冈山市','349');
INSERT INTO `cmseasy_b_area` VALUES('1881','青原区','349');
INSERT INTO `cmseasy_b_area` VALUES('1882','吉水县','349');
INSERT INTO `cmseasy_b_area` VALUES('1883','新干县','349');
INSERT INTO `cmseasy_b_area` VALUES('1884','泰和县','349');
INSERT INTO `cmseasy_b_area` VALUES('1885','万安县','349');
INSERT INTO `cmseasy_b_area` VALUES('1886','永新县','349');
INSERT INTO `cmseasy_b_area` VALUES('1887','袁州区','350');
INSERT INTO `cmseasy_b_area` VALUES('1888','万载县','350');
INSERT INTO `cmseasy_b_area` VALUES('1889','宜丰县','350');
INSERT INTO `cmseasy_b_area` VALUES('1890','铜鼓县','350');
INSERT INTO `cmseasy_b_area` VALUES('1891','樟树市','350');
INSERT INTO `cmseasy_b_area` VALUES('1892','高安市','350');
INSERT INTO `cmseasy_b_area` VALUES('1893','奉新县','350');
INSERT INTO `cmseasy_b_area` VALUES('1894','上高县','350');
INSERT INTO `cmseasy_b_area` VALUES('1895','靖安县','350');
INSERT INTO `cmseasy_b_area` VALUES('1896','丰城市','350');
INSERT INTO `cmseasy_b_area` VALUES('1897','临川区','351');
INSERT INTO `cmseasy_b_area` VALUES('1898','黎川县','351');
INSERT INTO `cmseasy_b_area` VALUES('1899','崇仁县','351');
INSERT INTO `cmseasy_b_area` VALUES('1900','宜黄县','351');
INSERT INTO `cmseasy_b_area` VALUES('1901','资溪县','351');
INSERT INTO `cmseasy_b_area` VALUES('1902','广昌县','351');
INSERT INTO `cmseasy_b_area` VALUES('1903','南城县','351');
INSERT INTO `cmseasy_b_area` VALUES('1904','南丰县','351');
INSERT INTO `cmseasy_b_area` VALUES('1905','乐安县','351');
INSERT INTO `cmseasy_b_area` VALUES('1906','金溪县','351');
INSERT INTO `cmseasy_b_area` VALUES('1907','东乡县','351');
INSERT INTO `cmseasy_b_area` VALUES('1908','信州区','352');
INSERT INTO `cmseasy_b_area` VALUES('1909','广丰县','352');
INSERT INTO `cmseasy_b_area` VALUES('1910','铅山县','352');
INSERT INTO `cmseasy_b_area` VALUES('1911','弋阳县','352');
INSERT INTO `cmseasy_b_area` VALUES('1912','鄱阳县','352');
INSERT INTO `cmseasy_b_area` VALUES('1913','婺源县','352');
INSERT INTO `cmseasy_b_area` VALUES('1914','德兴市','352');
INSERT INTO `cmseasy_b_area` VALUES('1915','上饶县','352');
INSERT INTO `cmseasy_b_area` VALUES('1916','玉山县','352');
INSERT INTO `cmseasy_b_area` VALUES('1917','横峰县','352');
INSERT INTO `cmseasy_b_area` VALUES('1918','余干县','352');
INSERT INTO `cmseasy_b_area` VALUES('1919','万年县','352');
INSERT INTO `cmseasy_b_area` VALUES('1920','上城区','353');
INSERT INTO `cmseasy_b_area` VALUES('1921','江干区','353');
INSERT INTO `cmseasy_b_area` VALUES('1922','西湖区','353');
INSERT INTO `cmseasy_b_area` VALUES('1923','萧山区','353');
INSERT INTO `cmseasy_b_area` VALUES('1924','桐庐县','353');
INSERT INTO `cmseasy_b_area` VALUES('1925','建德市','353');
INSERT INTO `cmseasy_b_area` VALUES('1926','临安市','353');
INSERT INTO `cmseasy_b_area` VALUES('1927','下城区','353');
INSERT INTO `cmseasy_b_area` VALUES('1928','拱墅区','353');
INSERT INTO `cmseasy_b_area` VALUES('1929','滨江区','353');
INSERT INTO `cmseasy_b_area` VALUES('1930','余杭区','353');
INSERT INTO `cmseasy_b_area` VALUES('1931','淳安县','353');
INSERT INTO `cmseasy_b_area` VALUES('1932','富阳市','353');
INSERT INTO `cmseasy_b_area` VALUES('1933','海曙区','354');
INSERT INTO `cmseasy_b_area` VALUES('1934','江北区','354');
INSERT INTO `cmseasy_b_area` VALUES('1935','镇海区','354');
INSERT INTO `cmseasy_b_area` VALUES('1936','象山县','354');
INSERT INTO `cmseasy_b_area` VALUES('1937','余姚市','354');
INSERT INTO `cmseasy_b_area` VALUES('1938','奉化市','354');
INSERT INTO `cmseasy_b_area` VALUES('1939','江东区','354');
INSERT INTO `cmseasy_b_area` VALUES('1940','北仑区','354');
INSERT INTO `cmseasy_b_area` VALUES('1941','鄞州区','354');
INSERT INTO `cmseasy_b_area` VALUES('1942','宁海县','354');
INSERT INTO `cmseasy_b_area` VALUES('1943','慈溪市','354');
INSERT INTO `cmseasy_b_area` VALUES('1944','鹿城区','355');
INSERT INTO `cmseasy_b_area` VALUES('1945','瓯海区','355');
INSERT INTO `cmseasy_b_area` VALUES('1946','永嘉县','355');
INSERT INTO `cmseasy_b_area` VALUES('1947','苍南县','355');
INSERT INTO `cmseasy_b_area` VALUES('1948','泰顺县','355');
INSERT INTO `cmseasy_b_area` VALUES('1949','乐清市','355');
INSERT INTO `cmseasy_b_area` VALUES('1950','龙湾区','355');
INSERT INTO `cmseasy_b_area` VALUES('1951','洞头县','355');
INSERT INTO `cmseasy_b_area` VALUES('1952','平阳县','355');
INSERT INTO `cmseasy_b_area` VALUES('1953','文成县','355');
INSERT INTO `cmseasy_b_area` VALUES('1954','瑞安市','355');
INSERT INTO `cmseasy_b_area` VALUES('1955','秀城区','356');
INSERT INTO `cmseasy_b_area` VALUES('1956','海盐县','356');
INSERT INTO `cmseasy_b_area` VALUES('1957','桐乡市','356');
INSERT INTO `cmseasy_b_area` VALUES('1958','平湖市','356');
INSERT INTO `cmseasy_b_area` VALUES('1959','嘉善县','356');
INSERT INTO `cmseasy_b_area` VALUES('1960','海宁市','356');
INSERT INTO `cmseasy_b_area` VALUES('1961','吴兴区','357');
INSERT INTO `cmseasy_b_area` VALUES('1962','德清县','357');
INSERT INTO `cmseasy_b_area` VALUES('1963','安吉县','357');
INSERT INTO `cmseasy_b_area` VALUES('1964','南浔区','357');
INSERT INTO `cmseasy_b_area` VALUES('1965','长兴县','357');
INSERT INTO `cmseasy_b_area` VALUES('1966','越城区','358');
INSERT INTO `cmseasy_b_area` VALUES('1967','嵊州市','358');
INSERT INTO `cmseasy_b_area` VALUES('1968','绍兴县','358');
INSERT INTO `cmseasy_b_area` VALUES('1969','新昌县','358');
INSERT INTO `cmseasy_b_area` VALUES('1970','上虞市','358');
INSERT INTO `cmseasy_b_area` VALUES('1971','诸暨市','358');
INSERT INTO `cmseasy_b_area` VALUES('1972','婺城区','359');
INSERT INTO `cmseasy_b_area` VALUES('1973','武义县','359');
INSERT INTO `cmseasy_b_area` VALUES('1974','磐安县','359');
INSERT INTO `cmseasy_b_area` VALUES('1975','义乌市','359');
INSERT INTO `cmseasy_b_area` VALUES('1976','永康市','359');
INSERT INTO `cmseasy_b_area` VALUES('1977','金东区','359');
INSERT INTO `cmseasy_b_area` VALUES('1978','浦江县','359');
INSERT INTO `cmseasy_b_area` VALUES('1979','兰溪市','359');
INSERT INTO `cmseasy_b_area` VALUES('1980','东阳市','359');
INSERT INTO `cmseasy_b_area` VALUES('1981','柯城区','360');
INSERT INTO `cmseasy_b_area` VALUES('1982','常山县','360');
INSERT INTO `cmseasy_b_area` VALUES('1983','龙游县','360');
INSERT INTO `cmseasy_b_area` VALUES('1984','江山市','360');
INSERT INTO `cmseasy_b_area` VALUES('1985','衢江区','360');
INSERT INTO `cmseasy_b_area` VALUES('1986','开化县','360');
INSERT INTO `cmseasy_b_area` VALUES('1987','定海区','361');
INSERT INTO `cmseasy_b_area` VALUES('1988','岱山县','361');
INSERT INTO `cmseasy_b_area` VALUES('1989','嵊泗县','361');
INSERT INTO `cmseasy_b_area` VALUES('1990','普陀区','361');
INSERT INTO `cmseasy_b_area` VALUES('1991','椒江区','362');
INSERT INTO `cmseasy_b_area` VALUES('1992','路桥区','362');
INSERT INTO `cmseasy_b_area` VALUES('1993','三门县','362');
INSERT INTO `cmseasy_b_area` VALUES('1994','仙居县','362');
INSERT INTO `cmseasy_b_area` VALUES('1995','临海市','362');
INSERT INTO `cmseasy_b_area` VALUES('1996','黄岩区','362');
INSERT INTO `cmseasy_b_area` VALUES('1997','玉环县','362');
INSERT INTO `cmseasy_b_area` VALUES('1998','天台县','362');
INSERT INTO `cmseasy_b_area` VALUES('1999','温岭市','362');
INSERT INTO `cmseasy_b_area` VALUES('2000','莲都区','363');
INSERT INTO `cmseasy_b_area` VALUES('2001','缙云县','363');
INSERT INTO `cmseasy_b_area` VALUES('2002','松阳县','363');
INSERT INTO `cmseasy_b_area` VALUES('2003','庆元县','363');
INSERT INTO `cmseasy_b_area` VALUES('2004','龙泉市','363');
INSERT INTO `cmseasy_b_area` VALUES('2005','青田县','363');
INSERT INTO `cmseasy_b_area` VALUES('2006','遂昌县','363');
INSERT INTO `cmseasy_b_area` VALUES('2007','云和县','363');
INSERT INTO `cmseasy_b_area` VALUES('2008','景宁畲族自治县','363');
INSERT INTO `cmseasy_b_area` VALUES('2009','鼓楼区','364');
INSERT INTO `cmseasy_b_area` VALUES('2010','仓山区','364');
INSERT INTO `cmseasy_b_area` VALUES('2011','晋安区','364');
INSERT INTO `cmseasy_b_area` VALUES('2012','连江县','364');
INSERT INTO `cmseasy_b_area` VALUES('2013','闽清县','364');
INSERT INTO `cmseasy_b_area` VALUES('2014','平潭县','364');
INSERT INTO `cmseasy_b_area` VALUES('2015','长乐市','364');
INSERT INTO `cmseasy_b_area` VALUES('2016','台江区','364');
INSERT INTO `cmseasy_b_area` VALUES('2017','马尾区','364');
INSERT INTO `cmseasy_b_area` VALUES('2018','闽侯县','364');
INSERT INTO `cmseasy_b_area` VALUES('2019','罗源县','364');
INSERT INTO `cmseasy_b_area` VALUES('2020','永泰县','364');
INSERT INTO `cmseasy_b_area` VALUES('2021','福清市','364');
INSERT INTO `cmseasy_b_area` VALUES('2022','思明区','365');
INSERT INTO `cmseasy_b_area` VALUES('2023','湖里区','365');
INSERT INTO `cmseasy_b_area` VALUES('2024','同安区','365');
INSERT INTO `cmseasy_b_area` VALUES('2025','翔安区','365');
INSERT INTO `cmseasy_b_area` VALUES('2026','海沧区','365');
INSERT INTO `cmseasy_b_area` VALUES('2027','集美区','365');
INSERT INTO `cmseasy_b_area` VALUES('2028','梅列区','366');
INSERT INTO `cmseasy_b_area` VALUES('2029','明溪县','366');
INSERT INTO `cmseasy_b_area` VALUES('2030','宁化县','366');
INSERT INTO `cmseasy_b_area` VALUES('2031','尤溪县','366');
INSERT INTO `cmseasy_b_area` VALUES('2032','将乐县','366');
INSERT INTO `cmseasy_b_area` VALUES('2033','建宁县','366');
INSERT INTO `cmseasy_b_area` VALUES('2034','永安市','366');
INSERT INTO `cmseasy_b_area` VALUES('2035','三元区','366');
INSERT INTO `cmseasy_b_area` VALUES('2036','清流县','366');
INSERT INTO `cmseasy_b_area` VALUES('2037','大田县','366');
INSERT INTO `cmseasy_b_area` VALUES('2038','沙县','366');
INSERT INTO `cmseasy_b_area` VALUES('2039','泰宁县','366');
INSERT INTO `cmseasy_b_area` VALUES('2040','城厢区','367');
INSERT INTO `cmseasy_b_area` VALUES('2041','荔城区','367');
INSERT INTO `cmseasy_b_area` VALUES('2042','仙游县','367');
INSERT INTO `cmseasy_b_area` VALUES('2043','涵江区','367');
INSERT INTO `cmseasy_b_area` VALUES('2044','秀屿区','367');
INSERT INTO `cmseasy_b_area` VALUES('2045','鲤城区','368');
INSERT INTO `cmseasy_b_area` VALUES('2046','洛江区','368');
INSERT INTO `cmseasy_b_area` VALUES('2047','惠安县','368');
INSERT INTO `cmseasy_b_area` VALUES('2048','永春县','368');
INSERT INTO `cmseasy_b_area` VALUES('2049','金门县','368');
INSERT INTO `cmseasy_b_area` VALUES('2050','晋江市','368');
INSERT INTO `cmseasy_b_area` VALUES('2051','南安市','368');
INSERT INTO `cmseasy_b_area` VALUES('2052','丰泽区','368');
INSERT INTO `cmseasy_b_area` VALUES('2053','泉港区','368');
INSERT INTO `cmseasy_b_area` VALUES('2054','安溪县','368');
INSERT INTO `cmseasy_b_area` VALUES('2055','德化县','368');
INSERT INTO `cmseasy_b_area` VALUES('2056','石狮市','368');
INSERT INTO `cmseasy_b_area` VALUES('2057','芗城区','369');
INSERT INTO `cmseasy_b_area` VALUES('2058','云霄县','369');
INSERT INTO `cmseasy_b_area` VALUES('2059','诏安县','369');
INSERT INTO `cmseasy_b_area` VALUES('2060','东山县','369');
INSERT INTO `cmseasy_b_area` VALUES('2061','平和县','369');
INSERT INTO `cmseasy_b_area` VALUES('2062','龙海市','369');
INSERT INTO `cmseasy_b_area` VALUES('2063','龙文区','369');
INSERT INTO `cmseasy_b_area` VALUES('2064','漳浦县','369');
INSERT INTO `cmseasy_b_area` VALUES('2065','长泰县','369');
INSERT INTO `cmseasy_b_area` VALUES('2066','南靖县','369');
INSERT INTO `cmseasy_b_area` VALUES('2067','华安县','369');
INSERT INTO `cmseasy_b_area` VALUES('2068','延平区','370');
INSERT INTO `cmseasy_b_area` VALUES('2069','浦城县','370');
INSERT INTO `cmseasy_b_area` VALUES('2070','松溪县','370');
INSERT INTO `cmseasy_b_area` VALUES('2071','邵武市','370');
INSERT INTO `cmseasy_b_area` VALUES('2072','建瓯市','370');
INSERT INTO `cmseasy_b_area` VALUES('2073','建阳市','370');
INSERT INTO `cmseasy_b_area` VALUES('2074','顺昌县','370');
INSERT INTO `cmseasy_b_area` VALUES('2075','光泽县','370');
INSERT INTO `cmseasy_b_area` VALUES('2076','政和县','370');
INSERT INTO `cmseasy_b_area` VALUES('2077','武夷山市','370');
INSERT INTO `cmseasy_b_area` VALUES('2078','新罗区','371');
INSERT INTO `cmseasy_b_area` VALUES('2079','永定县','371');
INSERT INTO `cmseasy_b_area` VALUES('2080','武平县','371');
INSERT INTO `cmseasy_b_area` VALUES('2081','漳平市','371');
INSERT INTO `cmseasy_b_area` VALUES('2082','长汀县','371');
INSERT INTO `cmseasy_b_area` VALUES('2083','上杭县','371');
INSERT INTO `cmseasy_b_area` VALUES('2084','连城县','371');
INSERT INTO `cmseasy_b_area` VALUES('2085','蕉城区','372');
INSERT INTO `cmseasy_b_area` VALUES('2086','古田县','372');
INSERT INTO `cmseasy_b_area` VALUES('2087','寿宁县','372');
INSERT INTO `cmseasy_b_area` VALUES('2088','柘荣县','372');
INSERT INTO `cmseasy_b_area` VALUES('2089','福鼎市','372');
INSERT INTO `cmseasy_b_area` VALUES('2090','霞浦县','372');
INSERT INTO `cmseasy_b_area` VALUES('2091','屏南县','372');
INSERT INTO `cmseasy_b_area` VALUES('2092','周宁县','372');
INSERT INTO `cmseasy_b_area` VALUES('2093','福安市','372');
INSERT INTO `cmseasy_b_area` VALUES('2094','东山区','373');
INSERT INTO `cmseasy_b_area` VALUES('2095','越秀区','373');
INSERT INTO `cmseasy_b_area` VALUES('2096','天河区','373');
INSERT INTO `cmseasy_b_area` VALUES('2097','白云区','373');
INSERT INTO `cmseasy_b_area` VALUES('2098','番禺区','373');
INSERT INTO `cmseasy_b_area` VALUES('2099','增城市','373');
INSERT INTO `cmseasy_b_area` VALUES('2100','从化市','373');
INSERT INTO `cmseasy_b_area` VALUES('2101','荔湾区','373');
INSERT INTO `cmseasy_b_area` VALUES('2102','海珠区','373');
INSERT INTO `cmseasy_b_area` VALUES('2103','芳村区','373');
INSERT INTO `cmseasy_b_area` VALUES('2104','黄埔区','373');
INSERT INTO `cmseasy_b_area` VALUES('2105','花都区','373');
INSERT INTO `cmseasy_b_area` VALUES('2106','罗湖区','374');
INSERT INTO `cmseasy_b_area` VALUES('2107','福田区','374');
INSERT INTO `cmseasy_b_area` VALUES('2108','南山区','374');
INSERT INTO `cmseasy_b_area` VALUES('2109','宝安区','374');
INSERT INTO `cmseasy_b_area` VALUES('2110','龙岗区','374');
INSERT INTO `cmseasy_b_area` VALUES('2111','盐田区','374');
INSERT INTO `cmseasy_b_area` VALUES('2112','香洲区','375');
INSERT INTO `cmseasy_b_area` VALUES('2113','拱北区','375');
INSERT INTO `cmseasy_b_area` VALUES('2114','前山区','375');
INSERT INTO `cmseasy_b_area` VALUES('2115','金湾区','375');
INSERT INTO `cmseasy_b_area` VALUES('2116','斗门区','375');
INSERT INTO `cmseasy_b_area` VALUES('2117','龙湖区','376');
INSERT INTO `cmseasy_b_area` VALUES('2118','濠江区','376');
INSERT INTO `cmseasy_b_area` VALUES('2119','潮南区','376');
INSERT INTO `cmseasy_b_area` VALUES('2120','澄海区','376');
INSERT INTO `cmseasy_b_area` VALUES('2121','金平区','376');
INSERT INTO `cmseasy_b_area` VALUES('2122','潮阳区','376');
INSERT INTO `cmseasy_b_area` VALUES('2123','南澳县','376');
INSERT INTO `cmseasy_b_area` VALUES('2124','武江区','377');
INSERT INTO `cmseasy_b_area` VALUES('2125','曲江区','377');
INSERT INTO `cmseasy_b_area` VALUES('2126','仁化县','377');
INSERT INTO `cmseasy_b_area` VALUES('2127','乳源瑶族自治县','377');
INSERT INTO `cmseasy_b_area` VALUES('2128','乐昌市','377');
INSERT INTO `cmseasy_b_area` VALUES('2129','南雄市','377');
INSERT INTO `cmseasy_b_area` VALUES('2130','浈江区','377');
INSERT INTO `cmseasy_b_area` VALUES('2131','始兴县','377');
INSERT INTO `cmseasy_b_area` VALUES('2132','翁源县','377');
INSERT INTO `cmseasy_b_area` VALUES('2133','新丰县','377');
INSERT INTO `cmseasy_b_area` VALUES('2134','惠城区','378');
INSERT INTO `cmseasy_b_area` VALUES('2135','博罗县','378');
INSERT INTO `cmseasy_b_area` VALUES('2136','龙门县','378');
INSERT INTO `cmseasy_b_area` VALUES('2137','惠阳区','378');
INSERT INTO `cmseasy_b_area` VALUES('2138','惠东县','378');
INSERT INTO `cmseasy_b_area` VALUES('2139','东源县','379');
INSERT INTO `cmseasy_b_area` VALUES('2140','源城区','379');
INSERT INTO `cmseasy_b_area` VALUES('2141','龙川县','379');
INSERT INTO `cmseasy_b_area` VALUES('2142','和平县','379');
INSERT INTO `cmseasy_b_area` VALUES('2143','紫金县','379');
INSERT INTO `cmseasy_b_area` VALUES('2144','连平县','379');
INSERT INTO `cmseasy_b_area` VALUES('2145','梅江区','380');
INSERT INTO `cmseasy_b_area` VALUES('2146','大埔县','380');
INSERT INTO `cmseasy_b_area` VALUES('2147','五华县','380');
INSERT INTO `cmseasy_b_area` VALUES('2148','蕉岭县','380');
INSERT INTO `cmseasy_b_area` VALUES('2149','兴宁市','380');
INSERT INTO `cmseasy_b_area` VALUES('2150','梅县','380');
INSERT INTO `cmseasy_b_area` VALUES('2151','丰顺县','380');
INSERT INTO `cmseasy_b_area` VALUES('2152','平远县','380');
INSERT INTO `cmseasy_b_area` VALUES('2153','城区','381');
INSERT INTO `cmseasy_b_area` VALUES('2154','陆河县','381');
INSERT INTO `cmseasy_b_area` VALUES('2155','陆丰市','381');
INSERT INTO `cmseasy_b_area` VALUES('2156','海丰县','381');
INSERT INTO `cmseasy_b_area` VALUES('2157','蓬江区','384');
INSERT INTO `cmseasy_b_area` VALUES('2158','恩平市','384');
INSERT INTO `cmseasy_b_area` VALUES('2159','江海区','384');
INSERT INTO `cmseasy_b_area` VALUES('2160','新会区','384');
INSERT INTO `cmseasy_b_area` VALUES('2161','开平市','384');
INSERT INTO `cmseasy_b_area` VALUES('2162','台山市','384');
INSERT INTO `cmseasy_b_area` VALUES('2163','鹤山市','384');
INSERT INTO `cmseasy_b_area` VALUES('2164','禅城区','385');
INSERT INTO `cmseasy_b_area` VALUES('2165','顺德区','385');
INSERT INTO `cmseasy_b_area` VALUES('2166','高明区','385');
INSERT INTO `cmseasy_b_area` VALUES('2167','南海区','385');
INSERT INTO `cmseasy_b_area` VALUES('2168','三水区','385');
INSERT INTO `cmseasy_b_area` VALUES('2169','江城区','386');
INSERT INTO `cmseasy_b_area` VALUES('2170','阳东县','386');
INSERT INTO `cmseasy_b_area` VALUES('2171','阳春市','386');
INSERT INTO `cmseasy_b_area` VALUES('2172','阳西县','386');
INSERT INTO `cmseasy_b_area` VALUES('2173','赤坎区','387');
INSERT INTO `cmseasy_b_area` VALUES('2174','坡头区','387');
INSERT INTO `cmseasy_b_area` VALUES('2175','遂溪县','387');
INSERT INTO `cmseasy_b_area` VALUES('2176','廉江市','387');
INSERT INTO `cmseasy_b_area` VALUES('2177','吴川市','387');
INSERT INTO `cmseasy_b_area` VALUES('2178','霞山区','387');
INSERT INTO `cmseasy_b_area` VALUES('2179','麻章区','387');
INSERT INTO `cmseasy_b_area` VALUES('2180','徐闻县','387');
INSERT INTO `cmseasy_b_area` VALUES('2181','雷州市','387');
INSERT INTO `cmseasy_b_area` VALUES('2182','茂南区','388');
INSERT INTO `cmseasy_b_area` VALUES('2183','电白县','388');
INSERT INTO `cmseasy_b_area` VALUES('2184','化州市','388');
INSERT INTO `cmseasy_b_area` VALUES('2185','信宜市','388');
INSERT INTO `cmseasy_b_area` VALUES('2186','茂港区','388');
INSERT INTO `cmseasy_b_area` VALUES('2187','高州市','388');
INSERT INTO `cmseasy_b_area` VALUES('2188','端州区','389');
INSERT INTO `cmseasy_b_area` VALUES('2189','广宁县','389');
INSERT INTO `cmseasy_b_area` VALUES('2190','封开县','389');
INSERT INTO `cmseasy_b_area` VALUES('2191','高要市','389');
INSERT INTO `cmseasy_b_area` VALUES('2192','四会市','389');
INSERT INTO `cmseasy_b_area` VALUES('2193','鼎湖区','389');
INSERT INTO `cmseasy_b_area` VALUES('2194','怀集县','389');
INSERT INTO `cmseasy_b_area` VALUES('2195','德庆县','389');
INSERT INTO `cmseasy_b_area` VALUES('2196','清城区','390');
INSERT INTO `cmseasy_b_area` VALUES('2197','阳山县','390');
INSERT INTO `cmseasy_b_area` VALUES('2198','连南瑶族自治县','390');
INSERT INTO `cmseasy_b_area` VALUES('2199','英德市','390');
INSERT INTO `cmseasy_b_area` VALUES('2200','连州市','390');
INSERT INTO `cmseasy_b_area` VALUES('2201','佛冈县','390');
INSERT INTO `cmseasy_b_area` VALUES('2202','连山壮族瑶族自治县','390');
INSERT INTO `cmseasy_b_area` VALUES('2203','清新县','390');
INSERT INTO `cmseasy_b_area` VALUES('2204','湘桥区','391');
INSERT INTO `cmseasy_b_area` VALUES('2205','饶平县','391');
INSERT INTO `cmseasy_b_area` VALUES('2206','潮安县','391');
INSERT INTO `cmseasy_b_area` VALUES('2207','榕城区','392');
INSERT INTO `cmseasy_b_area` VALUES('2208','揭西县','392');
INSERT INTO `cmseasy_b_area` VALUES('2209','普宁市','392');
INSERT INTO `cmseasy_b_area` VALUES('2210','揭东县','392');
INSERT INTO `cmseasy_b_area` VALUES('2211','惠来县','392');
INSERT INTO `cmseasy_b_area` VALUES('2212','云城区','393');
INSERT INTO `cmseasy_b_area` VALUES('2213','郁南县','393');
INSERT INTO `cmseasy_b_area` VALUES('2214','罗定市','393');
INSERT INTO `cmseasy_b_area` VALUES('2215','新兴县','393');
INSERT INTO `cmseasy_b_area` VALUES('2216','云安县','393');
INSERT INTO `cmseasy_b_area` VALUES('2217','秀英区','394');
INSERT INTO `cmseasy_b_area` VALUES('2218','琼山区','394');
INSERT INTO `cmseasy_b_area` VALUES('2219','美兰区','394');
INSERT INTO `cmseasy_b_area` VALUES('2220','龙华区','394');
INSERT INTO `cmseasy_b_area` VALUES('2221','五指山市','396');
INSERT INTO `cmseasy_b_area` VALUES('2222','儋州市','396');
INSERT INTO `cmseasy_b_area` VALUES('2223','万宁市','396');
INSERT INTO `cmseasy_b_area` VALUES('2224','定安县','396');
INSERT INTO `cmseasy_b_area` VALUES('2225','澄迈县','396');
INSERT INTO `cmseasy_b_area` VALUES('2226','白沙黎族自治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2227','乐东黎族自治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2228','保亭黎族苗族自\r\n治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2229','西沙群岛','396');
INSERT INTO `cmseasy_b_area` VALUES('2230','中沙群岛的岛礁及其海域','396');
INSERT INTO `cmseasy_b_area` VALUES('2231','琼海市','396');
INSERT INTO `cmseasy_b_area` VALUES('2232','文昌市','396');
INSERT INTO `cmseasy_b_area` VALUES('2233','东方市','396');
INSERT INTO `cmseasy_b_area` VALUES('2234','屯昌县','396');
INSERT INTO `cmseasy_b_area` VALUES('2235','临高县','396');
INSERT INTO `cmseasy_b_area` VALUES('2236','昌江黎族自治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2237','陵水黎族自治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2238','琼中黎族苗族自治县','396');
INSERT INTO `cmseasy_b_area` VALUES('2239','南沙群岛','396');
INSERT INTO `cmseasy_b_area` VALUES('2240','南明区','397');
INSERT INTO `cmseasy_b_area` VALUES('2241','花溪区','397');
INSERT INTO `cmseasy_b_area` VALUES('2242','白云区','397');
INSERT INTO `cmseasy_b_area` VALUES('2243','开阳县','397');
INSERT INTO `cmseasy_b_area` VALUES('2244','修文县','397');
INSERT INTO `cmseasy_b_area` VALUES('2245','清镇市','397');
INSERT INTO `cmseasy_b_area` VALUES('2246','云岩区','397');
INSERT INTO `cmseasy_b_area` VALUES('2247','乌当区','397');
INSERT INTO `cmseasy_b_area` VALUES('2248','小河区','397');
INSERT INTO `cmseasy_b_area` VALUES('2249','息烽县','397');
INSERT INTO `cmseasy_b_area` VALUES('2250','钟山区','398');
INSERT INTO `cmseasy_b_area` VALUES('2251','水城县','398');
INSERT INTO `cmseasy_b_area` VALUES('2252','盘县','398');
INSERT INTO `cmseasy_b_area` VALUES('2253','六枝特区','398');
INSERT INTO `cmseasy_b_area` VALUES('2254','红花岗区','399');
INSERT INTO `cmseasy_b_area` VALUES('2255','遵义县','399');
INSERT INTO `cmseasy_b_area` VALUES('2256','绥阳县','399');
INSERT INTO `cmseasy_b_area` VALUES('2257','道真仡佬族苗族自治县','399');
INSERT INTO `cmseasy_b_area` VALUES('2258','凤冈县','399');
INSERT INTO `cmseasy_b_area` VALUES('2259','余庆县','399');
INSERT INTO `cmseasy_b_area` VALUES('2260','赤水市','399');
INSERT INTO `cmseasy_b_area` VALUES('2261','仁怀市','399');
INSERT INTO `cmseasy_b_area` VALUES('2262','汇川区','399');
INSERT INTO `cmseasy_b_area` VALUES('2263','桐梓县','399');
INSERT INTO `cmseasy_b_area` VALUES('2264','正安县','399');
INSERT INTO `cmseasy_b_area` VALUES('2265','务川仡佬族苗族自治县','399');
INSERT INTO `cmseasy_b_area` VALUES('2266','湄潭县','399');
INSERT INTO `cmseasy_b_area` VALUES('2267','习水县','399');
INSERT INTO `cmseasy_b_area` VALUES('2268','西秀区','400');
INSERT INTO `cmseasy_b_area` VALUES('2269','普定县','400');
INSERT INTO `cmseasy_b_area` VALUES('2270','关岭布依族苗族自治县','400');
INSERT INTO `cmseasy_b_area` VALUES('2271','紫云苗族布依族自治县','400');
INSERT INTO `cmseasy_b_area` VALUES('2272','平坝县','400');
INSERT INTO `cmseasy_b_area` VALUES('2273','镇宁布依族苗族自治县','400');
INSERT INTO `cmseasy_b_area` VALUES('2274','铜仁市','401');
INSERT INTO `cmseasy_b_area` VALUES('2275','玉屏侗族自治县','401');
INSERT INTO `cmseasy_b_area` VALUES('2276','思南县','401');
INSERT INTO `cmseasy_b_area` VALUES('2277','德江县','401');
INSERT INTO `cmseasy_b_area` VALUES('2278','松桃苗族自治县','401');
INSERT INTO `cmseasy_b_area` VALUES('2279','万山特区','401');
INSERT INTO `cmseasy_b_area` VALUES('2280','江口县','401');
INSERT INTO `cmseasy_b_area` VALUES('2281','石阡县','401');
INSERT INTO `cmseasy_b_area` VALUES('2282','印江土家族苗族自治县','401');
INSERT INTO `cmseasy_b_area` VALUES('2283','沿河土家族自治县','401');
INSERT INTO `cmseasy_b_area` VALUES('2284','毕节市','402');
INSERT INTO `cmseasy_b_area` VALUES('2285','黔西县','402');
INSERT INTO `cmseasy_b_area` VALUES('2286','织金县','402');
INSERT INTO `cmseasy_b_area` VALUES('2287','威宁彝族回族苗族自治县','402');
INSERT INTO `cmseasy_b_area` VALUES('2288','赫章县','402');
INSERT INTO `cmseasy_b_area` VALUES('2289','大方县','402');
INSERT INTO `cmseasy_b_area` VALUES('2290','金沙县','402');
INSERT INTO `cmseasy_b_area` VALUES('2291','纳雍县','402');
INSERT INTO `cmseasy_b_area` VALUES('2292','安龙县','403');
INSERT INTO `cmseasy_b_area` VALUES('2293','兴义市','403');
INSERT INTO `cmseasy_b_area` VALUES('2294','普安县','403');
INSERT INTO `cmseasy_b_area` VALUES('2295','贞丰县','403');
INSERT INTO `cmseasy_b_area` VALUES('2296','册亨县','403');
INSERT INTO `cmseasy_b_area` VALUES('2297','兴仁县','403');
INSERT INTO `cmseasy_b_area` VALUES('2298','晴隆县','403');
INSERT INTO `cmseasy_b_area` VALUES('2299','望谟县','403');
INSERT INTO `cmseasy_b_area` VALUES('2300','凯里市','404');
INSERT INTO `cmseasy_b_area` VALUES('2301','施秉县','404');
INSERT INTO `cmseasy_b_area` VALUES('2302','镇远县','404');
INSERT INTO `cmseasy_b_area` VALUES('2303','天柱县','404');
INSERT INTO `cmseasy_b_area` VALUES('2304','剑河县','404');
INSERT INTO `cmseasy_b_area` VALUES('2305','黎平县','404');
INSERT INTO `cmseasy_b_area` VALUES('2306','从江县','404');
INSERT INTO `cmseasy_b_area` VALUES('2307','麻江县','404');
INSERT INTO `cmseasy_b_area` VALUES('2308','丹寨县','404');
INSERT INTO `cmseasy_b_area` VALUES('2309','黄平县','404');
INSERT INTO `cmseasy_b_area` VALUES('2310','三穗县','404');
INSERT INTO `cmseasy_b_area` VALUES('2311','岑巩县','404');
INSERT INTO `cmseasy_b_area` VALUES('2312','锦屏县','404');
INSERT INTO `cmseasy_b_area` VALUES('2313','台江县','404');
INSERT INTO `cmseasy_b_area` VALUES('2314','榕江县','404');
INSERT INTO `cmseasy_b_area` VALUES('2315','雷山县','404');
INSERT INTO `cmseasy_b_area` VALUES('2316','都匀市','405');
INSERT INTO `cmseasy_b_area` VALUES('2317','荔波县','405');
INSERT INTO `cmseasy_b_area` VALUES('2318','瓮安县','405');
INSERT INTO `cmseasy_b_area` VALUES('2319','平塘县','405');
INSERT INTO `cmseasy_b_area` VALUES('2320','长顺县','405');
INSERT INTO `cmseasy_b_area` VALUES('2321','惠水县','405');
INSERT INTO `cmseasy_b_area` VALUES('2322','三都水族自治县','405');
INSERT INTO `cmseasy_b_area` VALUES('2323','福泉市','405');
INSERT INTO `cmseasy_b_area` VALUES('2324','贵定县','405');
INSERT INTO `cmseasy_b_area` VALUES('2325','独山县','405');
INSERT INTO `cmseasy_b_area` VALUES('2326','罗甸县','405');
INSERT INTO `cmseasy_b_area` VALUES('2327','龙里县','405');
INSERT INTO `cmseasy_b_area` VALUES('2328','五华区','406');
INSERT INTO `cmseasy_b_area` VALUES('2329','官渡区','406');
INSERT INTO `cmseasy_b_area` VALUES('2330','东川区','406');
INSERT INTO `cmseasy_b_area` VALUES('2331','晋宁县','406');
INSERT INTO `cmseasy_b_area` VALUES('2332','宜良县','406');
INSERT INTO `cmseasy_b_area` VALUES('2333','嵩明县','406');
INSERT INTO `cmseasy_b_area` VALUES('2334','寻甸回族彝族自治县','406');
INSERT INTO `cmseasy_b_area` VALUES('2335','盘龙区','406');
INSERT INTO `cmseasy_b_area` VALUES('2336','西山区','406');
INSERT INTO `cmseasy_b_area` VALUES('2337','呈贡县','406');
INSERT INTO `cmseasy_b_area` VALUES('2338','富民县','406');
INSERT INTO `cmseasy_b_area` VALUES('2339','石林彝族自治县','406');
INSERT INTO `cmseasy_b_area` VALUES('2340','禄劝彝族苗族自治县','406');
INSERT INTO `cmseasy_b_area` VALUES('2341','安宁市','406');
INSERT INTO `cmseasy_b_area` VALUES('2342','麒麟区','407');
INSERT INTO `cmseasy_b_area` VALUES('2343','陆良县','407');
INSERT INTO `cmseasy_b_area` VALUES('2344','罗平县','407');
INSERT INTO `cmseasy_b_area` VALUES('2345','会泽县','407');
INSERT INTO `cmseasy_b_area` VALUES('2346','马龙县','407');
INSERT INTO `cmseasy_b_area` VALUES('2347','师宗县','407');
INSERT INTO `cmseasy_b_area` VALUES('2348','富源县','407');
INSERT INTO `cmseasy_b_area` VALUES('2349','沾益县','407');
INSERT INTO `cmseasy_b_area` VALUES('2350','宣威市','407');
INSERT INTO `cmseasy_b_area` VALUES('2351','红塔区','408');
INSERT INTO `cmseasy_b_area` VALUES('2352','澄江县','408');
INSERT INTO `cmseasy_b_area` VALUES('2353','华宁县','408');
INSERT INTO `cmseasy_b_area` VALUES('2354','峨山彝族自治县','408');
INSERT INTO `cmseasy_b_area` VALUES('2355','元江哈尼族彝族傣族自治县','408');
INSERT INTO `cmseasy_b_area` VALUES('2356','江川县','408');
INSERT INTO `cmseasy_b_area` VALUES('2357','通海县','408');
INSERT INTO `cmseasy_b_area` VALUES('2358','易门县','408');
INSERT INTO `cmseasy_b_area` VALUES('2359','新平彝族傣族自治县','408');
INSERT INTO `cmseasy_b_area` VALUES('2360','隆阳区','409');
INSERT INTO `cmseasy_b_area` VALUES('2361','腾冲县','409');
INSERT INTO `cmseasy_b_area` VALUES('2362','昌宁县','409');
INSERT INTO `cmseasy_b_area` VALUES('2363','施甸县','409');
INSERT INTO `cmseasy_b_area` VALUES('2364','龙陵县','409');
INSERT INTO `cmseasy_b_area` VALUES('2365','昭阳区','410');
INSERT INTO `cmseasy_b_area` VALUES('2366','巧家县','410');
INSERT INTO `cmseasy_b_area` VALUES('2367','大关县','410');
INSERT INTO `cmseasy_b_area` VALUES('2368','绥江县','410');
INSERT INTO `cmseasy_b_area` VALUES('2369','彝良县','410');
INSERT INTO `cmseasy_b_area` VALUES('2370','水富县','410');
INSERT INTO `cmseasy_b_area` VALUES('2371','鲁甸县','410');
INSERT INTO `cmseasy_b_area` VALUES('2372','盐津县','410');
INSERT INTO `cmseasy_b_area` VALUES('2373','永善县','410');
INSERT INTO `cmseasy_b_area` VALUES('2374','镇雄县','410');
INSERT INTO `cmseasy_b_area` VALUES('2375','威信县','410');
INSERT INTO `cmseasy_b_area` VALUES('2376','翠云区','411');
INSERT INTO `cmseasy_b_area` VALUES('2377','墨江哈尼族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2378','景谷傣族彝族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2379','江城哈尼族彝族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2380','澜沧拉祜族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2381','西盟佤族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2382','普洱哈尼族彝族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2383','景东彝族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2384','镇沅彝族哈尼族拉祜族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2385','孟连傣族拉祜族佤族自治县','411');
INSERT INTO `cmseasy_b_area` VALUES('2386','临翔区','412');
INSERT INTO `cmseasy_b_area` VALUES('2387','云县','412');
INSERT INTO `cmseasy_b_area` VALUES('2388','镇康县','412');
INSERT INTO `cmseasy_b_area` VALUES('2389','耿马傣族佤族自治县','412');
INSERT INTO `cmseasy_b_area` VALUES('2390','沧源佤族自治县','412');
INSERT INTO `cmseasy_b_area` VALUES('2391','凤庆县','412');
INSERT INTO `cmseasy_b_area` VALUES('2392','永德县','412');
INSERT INTO `cmseasy_b_area` VALUES('2393','双江拉祜族佤族布朗族傣族自治县','412');
INSERT INTO `cmseasy_b_area` VALUES('2394','宁蒗彝族自治县','413');
INSERT INTO `cmseasy_b_area` VALUES('2395','古城区','413');
INSERT INTO `cmseasy_b_area` VALUES('2396','永胜县','413');
INSERT INTO `cmseasy_b_area` VALUES('2397','玉龙纳西族自治县','413');
INSERT INTO `cmseasy_b_area` VALUES('2398','华坪县','413');
INSERT INTO `cmseasy_b_area` VALUES('2399','富宁县','414');
INSERT INTO `cmseasy_b_area` VALUES('2400','文山县','414');
INSERT INTO `cmseasy_b_area` VALUES('2401','西畴县','414');
INSERT INTO `cmseasy_b_area` VALUES('2402','马关县','414');
INSERT INTO `cmseasy_b_area` VALUES('2403','广南县','414');
INSERT INTO `cmseasy_b_area` VALUES('2404','砚山县','414');
INSERT INTO `cmseasy_b_area` VALUES('2405','麻栗坡县','414');
INSERT INTO `cmseasy_b_area` VALUES('2406','丘北县','414');
INSERT INTO `cmseasy_b_area` VALUES('2407','个旧市','415');
INSERT INTO `cmseasy_b_area` VALUES('2408','蒙自县','415');
INSERT INTO `cmseasy_b_area` VALUES('2409','建水县','415');
INSERT INTO `cmseasy_b_area` VALUES('2410','弥勒县','415');
INSERT INTO `cmseasy_b_area` VALUES('2411','元阳县','415');
INSERT INTO `cmseasy_b_area` VALUES('2412','金平苗族瑶族傣族自治县','415');
INSERT INTO `cmseasy_b_area` VALUES('2413','河口瑶族自治县','415');
INSERT INTO `cmseasy_b_area` VALUES('2414','开远市','415');
INSERT INTO `cmseasy_b_area` VALUES('2415','屏边苗族自治县','415');
INSERT INTO `cmseasy_b_area` VALUES('2416','石屏县','415');
INSERT INTO `cmseasy_b_area` VALUES('2417','泸西县','415');
INSERT INTO `cmseasy_b_area` VALUES('2418','红河县','415');
INSERT INTO `cmseasy_b_area` VALUES('2419','绿春县','415');
INSERT INTO `cmseasy_b_area` VALUES('2420','景洪市','416');
INSERT INTO `cmseasy_b_area` VALUES('2421','勐腊县','416');
INSERT INTO `cmseasy_b_area` VALUES('2422','勐海县','416');
INSERT INTO `cmseasy_b_area` VALUES('2423','楚雄市','417');
INSERT INTO `cmseasy_b_area` VALUES('2424','牟定县','417');
INSERT INTO `cmseasy_b_area` VALUES('2425','姚安县','417');
INSERT INTO `cmseasy_b_area` VALUES('2426','永仁县','417');
INSERT INTO `cmseasy_b_area` VALUES('2427','武定县','417');
INSERT INTO `cmseasy_b_area` VALUES('2428','禄丰县','417');
INSERT INTO `cmseasy_b_area` VALUES('2429','双柏县','417');
INSERT INTO `cmseasy_b_area` VALUES('2430','南华县','417');
INSERT INTO `cmseasy_b_area` VALUES('2431','大姚县','417');
INSERT INTO `cmseasy_b_area` VALUES('2432','元谋县','417');
INSERT INTO `cmseasy_b_area` VALUES('2433','大理市','418');
INSERT INTO `cmseasy_b_area` VALUES('2434','祥云县','418');
INSERT INTO `cmseasy_b_area` VALUES('2435','弥渡县','418');
INSERT INTO `cmseasy_b_area` VALUES('2436','巍山彝族回族自治县','418');
INSERT INTO `cmseasy_b_area` VALUES('2437','云龙县','418');
INSERT INTO `cmseasy_b_area` VALUES('2438','剑川县','418');
INSERT INTO `cmseasy_b_area` VALUES('2439','鹤庆县','418');
INSERT INTO `cmseasy_b_area` VALUES('2440','漾濞彝族自治县','418');
INSERT INTO `cmseasy_b_area` VALUES('2441','宾川县','418');
INSERT INTO `cmseasy_b_area` VALUES('2442','南涧彝族自治县','418');
INSERT INTO `cmseasy_b_area` VALUES('2443','永平县','418');
INSERT INTO `cmseasy_b_area` VALUES('2444','洱源县','418');
INSERT INTO `cmseasy_b_area` VALUES('2445','瑞丽市','419');
INSERT INTO `cmseasy_b_area` VALUES('2446','梁河县','419');
INSERT INTO `cmseasy_b_area` VALUES('2447','陇川县','419');
INSERT INTO `cmseasy_b_area` VALUES('2448','潞西市','419');
INSERT INTO `cmseasy_b_area` VALUES('2449','盈江县','419');
INSERT INTO `cmseasy_b_area` VALUES('2450','泸水县','420');
INSERT INTO `cmseasy_b_area` VALUES('2451','贡山独龙族怒族自治县','420');
INSERT INTO `cmseasy_b_area` VALUES('2452','维西傈僳族自治县','420');
INSERT INTO `cmseasy_b_area` VALUES('2453','福贡县','420');
INSERT INTO `cmseasy_b_area` VALUES('2454','兰坪白族普米族自治县','420');
INSERT INTO `cmseasy_b_area` VALUES('2455','香格里拉县','421');
INSERT INTO `cmseasy_b_area` VALUES('2456','德钦县','421');
INSERT INTO `cmseasy_b_area` VALUES('2457','锦江区','422');
INSERT INTO `cmseasy_b_area` VALUES('2458','金牛区','422');
INSERT INTO `cmseasy_b_area` VALUES('2459','成华区','422');
INSERT INTO `cmseasy_b_area` VALUES('2460','青白江区','422');
INSERT INTO `cmseasy_b_area` VALUES('2461','金堂县','422');
INSERT INTO `cmseasy_b_area` VALUES('2462','温江县','422');
INSERT INTO `cmseasy_b_area` VALUES('2463','大邑县','422');
INSERT INTO `cmseasy_b_area` VALUES('2464','新津县','422');
INSERT INTO `cmseasy_b_area` VALUES('2465','彭州市','422');
INSERT INTO `cmseasy_b_area` VALUES('2466','崇州市','422');
INSERT INTO `cmseasy_b_area` VALUES('2467','青羊区','422');
INSERT INTO `cmseasy_b_area` VALUES('2468','武侯区','422');
INSERT INTO `cmseasy_b_area` VALUES('2469','龙泉驿区','422');
INSERT INTO `cmseasy_b_area` VALUES('2470','新都区','422');
INSERT INTO `cmseasy_b_area` VALUES('2471','双流县','422');
INSERT INTO `cmseasy_b_area` VALUES('2472','郫县','422');
INSERT INTO `cmseasy_b_area` VALUES('2473','蒲江县','422');
INSERT INTO `cmseasy_b_area` VALUES('2474','都江堰市','422');
INSERT INTO `cmseasy_b_area` VALUES('2475','邛崃市','422');
INSERT INTO `cmseasy_b_area` VALUES('2476','自流井区','423');
INSERT INTO `cmseasy_b_area` VALUES('2477','大安区','423');
INSERT INTO `cmseasy_b_area` VALUES('2478','荣县','423');
INSERT INTO `cmseasy_b_area` VALUES('2479','富顺县','423');
INSERT INTO `cmseasy_b_area` VALUES('2480','贡井区','423');
INSERT INTO `cmseasy_b_area` VALUES('2481','沿滩区','423');
INSERT INTO `cmseasy_b_area` VALUES('2482','东区','424');
INSERT INTO `cmseasy_b_area` VALUES('2483','仁和区','424');
INSERT INTO `cmseasy_b_area` VALUES('2484','盐边县','424');
INSERT INTO `cmseasy_b_area` VALUES('2485','西区','424');
INSERT INTO `cmseasy_b_area` VALUES('2486','米易县','424');
INSERT INTO `cmseasy_b_area` VALUES('2487','江阳区','425');
INSERT INTO `cmseasy_b_area` VALUES('2488','龙马潭区','425');
INSERT INTO `cmseasy_b_area` VALUES('2489','合江县','425');
INSERT INTO `cmseasy_b_area` VALUES('2490','古蔺县','425');
INSERT INTO `cmseasy_b_area` VALUES('2491','纳溪区','425');
INSERT INTO `cmseasy_b_area` VALUES('2492','泸县','425');
INSERT INTO `cmseasy_b_area` VALUES('2493','叙永县','425');
INSERT INTO `cmseasy_b_area` VALUES('2494','旌阳区','426');
INSERT INTO `cmseasy_b_area` VALUES('2495','罗江县','426');
INSERT INTO `cmseasy_b_area` VALUES('2496','什邡市','426');
INSERT INTO `cmseasy_b_area` VALUES('2497','绵竹市','426');
INSERT INTO `cmseasy_b_area` VALUES('2498','中江县','426');
INSERT INTO `cmseasy_b_area` VALUES('2499','广汉市','426');
INSERT INTO `cmseasy_b_area` VALUES('2500','涪城区','427');
INSERT INTO `cmseasy_b_area` VALUES('2501','三台县','427');
INSERT INTO `cmseasy_b_area` VALUES('2502','江油市','427');
INSERT INTO `cmseasy_b_area` VALUES('2503','游仙区','427');
INSERT INTO `cmseasy_b_area` VALUES('2504','盐亭县','427');
INSERT INTO `cmseasy_b_area` VALUES('2505','安县','427');
INSERT INTO `cmseasy_b_area` VALUES('2506','平武县','427');
INSERT INTO `cmseasy_b_area` VALUES('2507','梓潼县','427');
INSERT INTO `cmseasy_b_area` VALUES('2508','市中区','428');
INSERT INTO `cmseasy_b_area` VALUES('2509','朝天区','428');
INSERT INTO `cmseasy_b_area` VALUES('2510','青川县','428');
INSERT INTO `cmseasy_b_area` VALUES('2511','苍溪县','428');
INSERT INTO `cmseasy_b_area` VALUES('2512','元坝区','428');
INSERT INTO `cmseasy_b_area` VALUES('2513','旺苍县','428');
INSERT INTO `cmseasy_b_area` VALUES('2514','剑阁县','428');
INSERT INTO `cmseasy_b_area` VALUES('2515','船山区','429');
INSERT INTO `cmseasy_b_area` VALUES('2516','蓬溪县','429');
INSERT INTO `cmseasy_b_area` VALUES('2517','大英县','429');
INSERT INTO `cmseasy_b_area` VALUES('2518','安居区','429');
INSERT INTO `cmseasy_b_area` VALUES('2519','射洪县','429');
INSERT INTO `cmseasy_b_area` VALUES('2520','市中区','430');
INSERT INTO `cmseasy_b_area` VALUES('2521','威远县','430');
INSERT INTO `cmseasy_b_area` VALUES('2522','隆昌县','430');
INSERT INTO `cmseasy_b_area` VALUES('2523','东兴区','430');
INSERT INTO `cmseasy_b_area` VALUES('2524','资中县','430');
INSERT INTO `cmseasy_b_area` VALUES('2525','市中区','431');
INSERT INTO `cmseasy_b_area` VALUES('2526','五通桥区','431');
INSERT INTO `cmseasy_b_area` VALUES('2527','犍为县','431');
INSERT INTO `cmseasy_b_area` VALUES('2528','夹江县','431');
INSERT INTO `cmseasy_b_area` VALUES('2529','峨边彝族自治县','431');
INSERT INTO `cmseasy_b_area` VALUES('2530','峨眉山市','431');
INSERT INTO `cmseasy_b_area` VALUES('2531','沙湾区','431');
INSERT INTO `cmseasy_b_area` VALUES('2532','金口河区','431');
INSERT INTO `cmseasy_b_area` VALUES('2533','井研县','431');
INSERT INTO `cmseasy_b_area` VALUES('2534','沐川县','431');
INSERT INTO `cmseasy_b_area` VALUES('2535','马边彝族自治县','431');
INSERT INTO `cmseasy_b_area` VALUES('2536','顺庆区','432');
INSERT INTO `cmseasy_b_area` VALUES('2537','嘉陵区','432');
INSERT INTO `cmseasy_b_area` VALUES('2538','营山县','432');
INSERT INTO `cmseasy_b_area` VALUES('2539','仪陇县','432');
INSERT INTO `cmseasy_b_area` VALUES('2540','阆中市','432');
INSERT INTO `cmseasy_b_area` VALUES('2541','高坪区','432');
INSERT INTO `cmseasy_b_area` VALUES('2542','南部县','432');
INSERT INTO `cmseasy_b_area` VALUES('2543','蓬安县','432');
INSERT INTO `cmseasy_b_area` VALUES('2544','西充县','432');
INSERT INTO `cmseasy_b_area` VALUES('2545','屏山县','433');
INSERT INTO `cmseasy_b_area` VALUES('2546','翠屏区','433');
INSERT INTO `cmseasy_b_area` VALUES('2547','南溪县','433');
INSERT INTO `cmseasy_b_area` VALUES('2548','长宁县','433');
INSERT INTO `cmseasy_b_area` VALUES('2549','珙县','433');
INSERT INTO `cmseasy_b_area` VALUES('2550','兴文县','433');
INSERT INTO `cmseasy_b_area` VALUES('2551','宜宾县','433');
INSERT INTO `cmseasy_b_area` VALUES('2552','江安县','433');
INSERT INTO `cmseasy_b_area` VALUES('2553','高县','433');
INSERT INTO `cmseasy_b_area` VALUES('2554','筠连县','433');
INSERT INTO `cmseasy_b_area` VALUES('2555','广安区','434');
INSERT INTO `cmseasy_b_area` VALUES('2556','武胜县','434');
INSERT INTO `cmseasy_b_area` VALUES('2557','华莹市','434');
INSERT INTO `cmseasy_b_area` VALUES('2558','岳池县','434');
INSERT INTO `cmseasy_b_area` VALUES('2559','邻水县','434');
INSERT INTO `cmseasy_b_area` VALUES('2560','通川区','435');
INSERT INTO `cmseasy_b_area` VALUES('2561','宣汉县','435');
INSERT INTO `cmseasy_b_area` VALUES('2562','大竹县','435');
INSERT INTO `cmseasy_b_area` VALUES('2563','万源市','435');
INSERT INTO `cmseasy_b_area` VALUES('2564','达县','435');
INSERT INTO `cmseasy_b_area` VALUES('2565','开江县','435');
INSERT INTO `cmseasy_b_area` VALUES('2566','渠县','435');
INSERT INTO `cmseasy_b_area` VALUES('2567','东坡区','436');
INSERT INTO `cmseasy_b_area` VALUES('2568','彭山县','436');
INSERT INTO `cmseasy_b_area` VALUES('2569','丹棱县','436');
INSERT INTO `cmseasy_b_area` VALUES('2570','青神县','436');
INSERT INTO `cmseasy_b_area` VALUES('2571','仁寿县','436');
INSERT INTO `cmseasy_b_area` VALUES('2572','洪雅县','436');
INSERT INTO `cmseasy_b_area` VALUES('2573','雨城区','437');
INSERT INTO `cmseasy_b_area` VALUES('2574','荥经县','437');
INSERT INTO `cmseasy_b_area` VALUES('2575','石棉县','437');
INSERT INTO `cmseasy_b_area` VALUES('2576','芦山县','437');
INSERT INTO `cmseasy_b_area` VALUES('2577','宝兴县','437');
INSERT INTO `cmseasy_b_area` VALUES('2578','名山县','437');
INSERT INTO `cmseasy_b_area` VALUES('2579','汉源县','437');
INSERT INTO `cmseasy_b_area` VALUES('2580','天全县','437');
INSERT INTO `cmseasy_b_area` VALUES('2581','巴州区','438');
INSERT INTO `cmseasy_b_area` VALUES('2582','南江县','438');
INSERT INTO `cmseasy_b_area` VALUES('2583','平昌县','438');
INSERT INTO `cmseasy_b_area` VALUES('2584','通江县','438');
INSERT INTO `cmseasy_b_area` VALUES('2585','雁江区','439');
INSERT INTO `cmseasy_b_area` VALUES('2586','乐至县','439');
INSERT INTO `cmseasy_b_area` VALUES('2587','简阳市','439');
INSERT INTO `cmseasy_b_area` VALUES('2588','安岳县','439');
INSERT INTO `cmseasy_b_area` VALUES('2589','汶川县','440');
INSERT INTO `cmseasy_b_area` VALUES('2590','茂县','440');
INSERT INTO `cmseasy_b_area` VALUES('2591','九寨沟县','440');
INSERT INTO `cmseasy_b_area` VALUES('2592','小金县','440');
INSERT INTO `cmseasy_b_area` VALUES('2593','马尔康县','440');
INSERT INTO `cmseasy_b_area` VALUES('2594','阿坝县','440');
INSERT INTO `cmseasy_b_area` VALUES('2595','红原县','440');
INSERT INTO `cmseasy_b_area` VALUES('2596','理县','440');
INSERT INTO `cmseasy_b_area` VALUES('2597','松潘县','440');
INSERT INTO `cmseasy_b_area` VALUES('2598','金川县','440');
INSERT INTO `cmseasy_b_area` VALUES('2599','黑水县','440');
INSERT INTO `cmseasy_b_area` VALUES('2600','壤塘县','440');
INSERT INTO `cmseasy_b_area` VALUES('2601','若尔盖县','440');
INSERT INTO `cmseasy_b_area` VALUES('2602','康定县','441');
INSERT INTO `cmseasy_b_area` VALUES('2603','丹巴县','441');
INSERT INTO `cmseasy_b_area` VALUES('2604','雅江县','441');
INSERT INTO `cmseasy_b_area` VALUES('2605','炉霍县','441');
INSERT INTO `cmseasy_b_area` VALUES('2606','新龙县','441');
INSERT INTO `cmseasy_b_area` VALUES('2607','白玉县','441');
INSERT INTO `cmseasy_b_area` VALUES('2608','色达县','441');
INSERT INTO `cmseasy_b_area` VALUES('2609','巴塘县','441');
INSERT INTO `cmseasy_b_area` VALUES('2610','得荣县','441');
INSERT INTO `cmseasy_b_area` VALUES('2611','稻城县','441');
INSERT INTO `cmseasy_b_area` VALUES('2612','泸定县','441');
INSERT INTO `cmseasy_b_area` VALUES('2613','九龙县','441');
INSERT INTO `cmseasy_b_area` VALUES('2614','道孚县','441');
INSERT INTO `cmseasy_b_area` VALUES('2615','甘孜县','441');
INSERT INTO `cmseasy_b_area` VALUES('2616','德格县','441');
INSERT INTO `cmseasy_b_area` VALUES('2617','石渠县','441');
INSERT INTO `cmseasy_b_area` VALUES('2618','理塘县','441');
INSERT INTO `cmseasy_b_area` VALUES('2619','乡城县','441');
INSERT INTO `cmseasy_b_area` VALUES('2620','西昌市','442');
INSERT INTO `cmseasy_b_area` VALUES('2621','盐源县','442');
INSERT INTO `cmseasy_b_area` VALUES('2622','会理县','442');
INSERT INTO `cmseasy_b_area` VALUES('2623','宁南县','442');
INSERT INTO `cmseasy_b_area` VALUES('2624','布拖县','442');
INSERT INTO `cmseasy_b_area` VALUES('2625','昭觉县','442');
INSERT INTO `cmseasy_b_area` VALUES('2626','冕宁县','442');
INSERT INTO `cmseasy_b_area` VALUES('2627','甘洛县','442');
INSERT INTO `cmseasy_b_area` VALUES('2628','雷波县','442');
INSERT INTO `cmseasy_b_area` VALUES('2629','木里藏族自治县','442');
INSERT INTO `cmseasy_b_area` VALUES('2630','德昌县','442');
INSERT INTO `cmseasy_b_area` VALUES('2631','会东县','442');
INSERT INTO `cmseasy_b_area` VALUES('2632','普格县','442');
INSERT INTO `cmseasy_b_area` VALUES('2633','金阳县','442');
INSERT INTO `cmseasy_b_area` VALUES('2634','喜德县','442');
INSERT INTO `cmseasy_b_area` VALUES('2635','越西县','442');
INSERT INTO `cmseasy_b_area` VALUES('2636','美姑县','442');
INSERT INTO `cmseasy_b_area` VALUES('2637','江岸区','457');
INSERT INTO `cmseasy_b_area` VALUES('2638','乔口区','457');
INSERT INTO `cmseasy_b_area` VALUES('2639','武昌区','457');
INSERT INTO `cmseasy_b_area` VALUES('2640','洪山区','457');
INSERT INTO `cmseasy_b_area` VALUES('2641','汉南区','457');
INSERT INTO `cmseasy_b_area` VALUES('2642','江夏区','457');
INSERT INTO `cmseasy_b_area` VALUES('2643','新洲区','457');
INSERT INTO `cmseasy_b_area` VALUES('2644','江汉区','457');
INSERT INTO `cmseasy_b_area` VALUES('2645','汉阳区','457');
INSERT INTO `cmseasy_b_area` VALUES('2646','青山区','457');
INSERT INTO `cmseasy_b_area` VALUES('2647','东西湖区','457');
INSERT INTO `cmseasy_b_area` VALUES('2648','蔡甸区','457');
INSERT INTO `cmseasy_b_area` VALUES('2649','黄陂区','457');
INSERT INTO `cmseasy_b_area` VALUES('2650','黄石港区','458');
INSERT INTO `cmseasy_b_area` VALUES('2651','铁山区','458');
INSERT INTO `cmseasy_b_area` VALUES('2652','大冶市','458');
INSERT INTO `cmseasy_b_area` VALUES('2653','下陆区','458');
INSERT INTO `cmseasy_b_area` VALUES('2654','阳新县','458');
INSERT INTO `cmseasy_b_area` VALUES('2655','襄城区','459');
INSERT INTO `cmseasy_b_area` VALUES('2656','襄阳区','459');
INSERT INTO `cmseasy_b_area` VALUES('2657','谷城县','459');
INSERT INTO `cmseasy_b_area` VALUES('2658','老河口市','459');
INSERT INTO `cmseasy_b_area` VALUES('2659','宜城市','459');
INSERT INTO `cmseasy_b_area` VALUES('2660','樊城区','459');
INSERT INTO `cmseasy_b_area` VALUES('2661','南漳县','459');
INSERT INTO `cmseasy_b_area` VALUES('2662','保康县','459');
INSERT INTO `cmseasy_b_area` VALUES('2663','枣阳市','459');
INSERT INTO `cmseasy_b_area` VALUES('2664','茅箭区','460');
INSERT INTO `cmseasy_b_area` VALUES('2665','郧县','460');
INSERT INTO `cmseasy_b_area` VALUES('2666','竹山县','460');
INSERT INTO `cmseasy_b_area` VALUES('2667','房县','460');
INSERT INTO `cmseasy_b_area` VALUES('2668','丹江口市','460');
INSERT INTO `cmseasy_b_area` VALUES('2669','张湾区','460');
INSERT INTO `cmseasy_b_area` VALUES('2670','郧西县','460');
INSERT INTO `cmseasy_b_area` VALUES('2671','竹溪县','460');
INSERT INTO `cmseasy_b_area` VALUES('2672','沙市区','461');
INSERT INTO `cmseasy_b_area` VALUES('2673','公安县','461');
INSERT INTO `cmseasy_b_area` VALUES('2674','江陵县','461');
INSERT INTO `cmseasy_b_area` VALUES('2675','洪湖市','461');
INSERT INTO `cmseasy_b_area` VALUES('2676','松滋市','461');
INSERT INTO `cmseasy_b_area` VALUES('2677','荆州区','461');
INSERT INTO `cmseasy_b_area` VALUES('2678','监利县','461');
INSERT INTO `cmseasy_b_area` VALUES('2679','石首市','461');
INSERT INTO `cmseasy_b_area` VALUES('2680','西陵区','462');
INSERT INTO `cmseasy_b_area` VALUES('2681','点军区','462');
INSERT INTO `cmseasy_b_area` VALUES('2682','夷陵区','462');
INSERT INTO `cmseasy_b_area` VALUES('2683','兴山县','462');
INSERT INTO `cmseasy_b_area` VALUES('2684','长阳土家族自治县','462');
INSERT INTO `cmseasy_b_area` VALUES('2685','宜都市','462');
INSERT INTO `cmseasy_b_area` VALUES('2686','枝江市','462');
INSERT INTO `cmseasy_b_area` VALUES('2687','伍家岗区','462');
INSERT INTO `cmseasy_b_area` VALUES('2688','虎亭区','462');
INSERT INTO `cmseasy_b_area` VALUES('2689','远安县','462');
INSERT INTO `cmseasy_b_area` VALUES('2690','秭归县','462');
INSERT INTO `cmseasy_b_area` VALUES('2691','五峰土家族自治县','462');
INSERT INTO `cmseasy_b_area` VALUES('2692','当阳市','462');
INSERT INTO `cmseasy_b_area` VALUES('2693','东宝区','463');
INSERT INTO `cmseasy_b_area` VALUES('2694','京山县','463');
INSERT INTO `cmseasy_b_area` VALUES('2695','钟祥市','463');
INSERT INTO `cmseasy_b_area` VALUES('2696','掇刀区','463');
INSERT INTO `cmseasy_b_area` VALUES('2697','沙洋县','463');
INSERT INTO `cmseasy_b_area` VALUES('2698','梁子湖区','464');
INSERT INTO `cmseasy_b_area` VALUES('2699','鄂城区','464');
INSERT INTO `cmseasy_b_area` VALUES('2700','华容区','464');
INSERT INTO `cmseasy_b_area` VALUES('2701','孝南区','465');
INSERT INTO `cmseasy_b_area` VALUES('2702','大悟县','465');
INSERT INTO `cmseasy_b_area` VALUES('2703','应城市','465');
INSERT INTO `cmseasy_b_area` VALUES('2704','汉川市','465');
INSERT INTO `cmseasy_b_area` VALUES('2705','孝昌县','465');
INSERT INTO `cmseasy_b_area` VALUES('2706','云梦县','465');
INSERT INTO `cmseasy_b_area` VALUES('2707','安陆市','465');
INSERT INTO `cmseasy_b_area` VALUES('2708','黄州区','466');
INSERT INTO `cmseasy_b_area` VALUES('2709','红安县','466');
INSERT INTO `cmseasy_b_area` VALUES('2710','英山县','466');
INSERT INTO `cmseasy_b_area` VALUES('2711','蕲春县','466');
INSERT INTO `cmseasy_b_area` VALUES('2712','麻城市','466');
INSERT INTO `cmseasy_b_area` VALUES('2713','武穴市','466');
INSERT INTO `cmseasy_b_area` VALUES('2714','团风县','466');
INSERT INTO `cmseasy_b_area` VALUES('2715','罗田县','466');
INSERT INTO `cmseasy_b_area` VALUES('2716','浠水县','466');
INSERT INTO `cmseasy_b_area` VALUES('2717','黄梅县','466');
INSERT INTO `cmseasy_b_area` VALUES('2718','咸安区','467');
INSERT INTO `cmseasy_b_area` VALUES('2719','通城县','467');
INSERT INTO `cmseasy_b_area` VALUES('2720','通山县','467');
INSERT INTO `cmseasy_b_area` VALUES('2721','赤壁市','467');
INSERT INTO `cmseasy_b_area` VALUES('2722','嘉鱼县','467');
INSERT INTO `cmseasy_b_area` VALUES('2723','崇阳县','467');
INSERT INTO `cmseasy_b_area` VALUES('2724','曾都区','468');
INSERT INTO `cmseasy_b_area` VALUES('2725','广水市','468');
INSERT INTO `cmseasy_b_area` VALUES('2726','恩施市','469');
INSERT INTO `cmseasy_b_area` VALUES('2727','建始县','469');
INSERT INTO `cmseasy_b_area` VALUES('2728','鹤峰县','469');
INSERT INTO `cmseasy_b_area` VALUES('2729','利川市','469');
INSERT INTO `cmseasy_b_area` VALUES('2730','巴东县','469');
INSERT INTO `cmseasy_b_area` VALUES('2731','宣恩县','469');
INSERT INTO `cmseasy_b_area` VALUES('2732','来凤县','469');
INSERT INTO `cmseasy_b_area` VALUES('2733','咸丰县','469');
INSERT INTO `cmseasy_b_area` VALUES('2734','仙桃市','470');
INSERT INTO `cmseasy_b_area` VALUES('2735','天门市','470');
INSERT INTO `cmseasy_b_area` VALUES('2736','潜江市','470');
INSERT INTO `cmseasy_b_area` VALUES('2737','神农架林区','470');
INSERT INTO `cmseasy_b_area` VALUES('2738','新城区','471');
INSERT INTO `cmseasy_b_area` VALUES('2739','莲湖区','471');
INSERT INTO `cmseasy_b_area` VALUES('2740','未央区','471');
INSERT INTO `cmseasy_b_area` VALUES('2741','阎良区','471');
INSERT INTO `cmseasy_b_area` VALUES('2742','长安区','471');
INSERT INTO `cmseasy_b_area` VALUES('2743','周至县','471');
INSERT INTO `cmseasy_b_area` VALUES('2744','高陵县','471');
INSERT INTO `cmseasy_b_area` VALUES('2745','碑林区','471');
INSERT INTO `cmseasy_b_area` VALUES('2746','灞桥区','471');
INSERT INTO `cmseasy_b_area` VALUES('2747','雁塔区','471');
INSERT INTO `cmseasy_b_area` VALUES('2748','临潼区','471');
INSERT INTO `cmseasy_b_area` VALUES('2749','蓝田县','471');
INSERT INTO `cmseasy_b_area` VALUES('2750','户县','471');
INSERT INTO `cmseasy_b_area` VALUES('2751','耀州区','472');
INSERT INTO `cmseasy_b_area` VALUES('2752','宜君县','472');
INSERT INTO `cmseasy_b_area` VALUES('2753','渭滨区','473');
INSERT INTO `cmseasy_b_area` VALUES('2754','陈仓区','473');
INSERT INTO `cmseasy_b_area` VALUES('2755','岐山县','473');
INSERT INTO `cmseasy_b_area` VALUES('2756','眉县','473');
INSERT INTO `cmseasy_b_area` VALUES('2757','千阳县','473');
INSERT INTO `cmseasy_b_area` VALUES('2758','凤县','473');
INSERT INTO `cmseasy_b_area` VALUES('2759','太白县','473');
INSERT INTO `cmseasy_b_area` VALUES('2760','金台区','473');
INSERT INTO `cmseasy_b_area` VALUES('2761','凤翔县','473');
INSERT INTO `cmseasy_b_area` VALUES('2762','扶风县','473');
INSERT INTO `cmseasy_b_area` VALUES('2763','陇县','473');
INSERT INTO `cmseasy_b_area` VALUES('2764','麟游县','473');
INSERT INTO `cmseasy_b_area` VALUES('2765','秦都区','474');
INSERT INTO `cmseasy_b_area` VALUES('2766','渭城区','474');
INSERT INTO `cmseasy_b_area` VALUES('2767','泾阳县','474');
INSERT INTO `cmseasy_b_area` VALUES('2768','礼泉县','474');
INSERT INTO `cmseasy_b_area` VALUES('2769','彬县','474');
INSERT INTO `cmseasy_b_area` VALUES('2770','旬邑县','474');
INSERT INTO `cmseasy_b_area` VALUES('2771','武功县','474');
INSERT INTO `cmseasy_b_area` VALUES('2772','兴平市','474');
INSERT INTO `cmseasy_b_area` VALUES('2773','杨陵区','474');
INSERT INTO `cmseasy_b_area` VALUES('2774','三原县','474');
INSERT INTO `cmseasy_b_area` VALUES('2775','乾县','474');
INSERT INTO `cmseasy_b_area` VALUES('2776','永寿\r\n\r\n县','474');
INSERT INTO `cmseasy_b_area` VALUES('2777','长武县','474');
INSERT INTO `cmseasy_b_area` VALUES('2778','淳化县','474');
INSERT INTO `cmseasy_b_area` VALUES('2779','临渭区','475');
INSERT INTO `cmseasy_b_area` VALUES('2780','潼关县','475');
INSERT INTO `cmseasy_b_area` VALUES('2781','合阳县','475');
INSERT INTO `cmseasy_b_area` VALUES('2782','华阴市','475');
INSERT INTO `cmseasy_b_area` VALUES('2783','华县','475');
INSERT INTO `cmseasy_b_area` VALUES('2784','大荔县','475');
INSERT INTO `cmseasy_b_area` VALUES('2785','澄城县','475');
INSERT INTO `cmseasy_b_area` VALUES('2786','蒲城县','475');
INSERT INTO `cmseasy_b_area` VALUES('2787','富平县','475');
INSERT INTO `cmseasy_b_area` VALUES('2788','白水县','475');
INSERT INTO `cmseasy_b_area` VALUES('2789','韩城市','475');
INSERT INTO `cmseasy_b_area` VALUES('2790','宝塔区','476');
INSERT INTO `cmseasy_b_area` VALUES('2791','延川县','476');
INSERT INTO `cmseasy_b_area` VALUES('2792','安塞县','476');
INSERT INTO `cmseasy_b_area` VALUES('2793','吴旗县','476');
INSERT INTO `cmseasy_b_area` VALUES('2794','富县','476');
INSERT INTO `cmseasy_b_area` VALUES('2795','宜川县','476');
INSERT INTO `cmseasy_b_area` VALUES('2796','黄陵县','476');
INSERT INTO `cmseasy_b_area` VALUES('2797','延长县','476');
INSERT INTO `cmseasy_b_area` VALUES('2798','子长县','476');
INSERT INTO `cmseasy_b_area` VALUES('2799','志丹县','476');
INSERT INTO `cmseasy_b_area` VALUES('2800','甘泉县','476');
INSERT INTO `cmseasy_b_area` VALUES('2801','洛川县','476');
INSERT INTO `cmseasy_b_area` VALUES('2802','黄龙县','476');
INSERT INTO `cmseasy_b_area` VALUES('2803','汉台区','477');
INSERT INTO `cmseasy_b_area` VALUES('2804','城固县','477');
INSERT INTO `cmseasy_b_area` VALUES('2805','西乡县','477');
INSERT INTO `cmseasy_b_area` VALUES('2806','宁强县','477');
INSERT INTO `cmseasy_b_area` VALUES('2807','镇巴县','477');
INSERT INTO `cmseasy_b_area` VALUES('2808','佛坪县','477');
INSERT INTO `cmseasy_b_area` VALUES('2809','南郑县','477');
INSERT INTO `cmseasy_b_area` VALUES('2810','洋县','477');
INSERT INTO `cmseasy_b_area` VALUES('2811','勉县','477');
INSERT INTO `cmseasy_b_area` VALUES('2812','略阳县','477');
INSERT INTO `cmseasy_b_area` VALUES('2813','留坝县','477');
INSERT INTO `cmseasy_b_area` VALUES('2814','榆阳区','478');
INSERT INTO `cmseasy_b_area` VALUES('2815','横山县','478');
INSERT INTO `cmseasy_b_area` VALUES('2816','定边县','478');
INSERT INTO `cmseasy_b_area` VALUES('2817','米脂县','478');
INSERT INTO `cmseasy_b_area` VALUES('2818','吴堡县子洲县','478');
INSERT INTO `cmseasy_b_area` VALUES('2819','府谷县','478');
INSERT INTO `cmseasy_b_area` VALUES('2820','靖边县','478');
INSERT INTO `cmseasy_b_area` VALUES('2821','绥德县','478');
INSERT INTO `cmseasy_b_area` VALUES('2822','佳县','478');
INSERT INTO `cmseasy_b_area` VALUES('2823','清涧县','478');
INSERT INTO `cmseasy_b_area` VALUES('2824','汉滨区','479');
INSERT INTO `cmseasy_b_area` VALUES('2825','石泉县','479');
INSERT INTO `cmseasy_b_area` VALUES('2826','紫阳县','479');
INSERT INTO `cmseasy_b_area` VALUES('2827','平利县','479');
INSERT INTO `cmseasy_b_area` VALUES('2828','旬阳县','479');
INSERT INTO `cmseasy_b_area` VALUES('2829','白河县','479');
INSERT INTO `cmseasy_b_area` VALUES('2830','汉阴县','479');
INSERT INTO `cmseasy_b_area` VALUES('2831','宁陕县','479');
INSERT INTO `cmseasy_b_area` VALUES('2832','岚皋县','479');
INSERT INTO `cmseasy_b_area` VALUES('2833','镇坪县','479');
INSERT INTO `cmseasy_b_area` VALUES('2834','商州区','480');
INSERT INTO `cmseasy_b_area` VALUES('2835','丹凤县','480');
INSERT INTO `cmseasy_b_area` VALUES('2836','山阳县','480');
INSERT INTO `cmseasy_b_area` VALUES('2837','柞水县','480');
INSERT INTO `cmseasy_b_area` VALUES('2838','神木县','480');
INSERT INTO `cmseasy_b_area` VALUES('2839','洛南县','480');
INSERT INTO `cmseasy_b_area` VALUES('2840','商南县','480');
INSERT INTO `cmseasy_b_area` VALUES('2841','镇安县','480');
INSERT INTO `cmseasy_b_area` VALUES('2842','城关区','481');
INSERT INTO `cmseasy_b_area` VALUES('2843','西固区','481');
INSERT INTO `cmseasy_b_area` VALUES('2844','红古区','481');
INSERT INTO `cmseasy_b_area` VALUES('2845','皋兰县','481');
INSERT INTO `cmseasy_b_area` VALUES('2846','榆中县','481');
INSERT INTO `cmseasy_b_area` VALUES('2847','七里河区','481');
INSERT INTO `cmseasy_b_area` VALUES('2848','安宁区','481');
INSERT INTO `cmseasy_b_area` VALUES('2849','永登县','481');
INSERT INTO `cmseasy_b_area` VALUES('2850','金川区','482');
INSERT INTO `cmseasy_b_area` VALUES('2851','永昌县','482');
INSERT INTO `cmseasy_b_area` VALUES('2852','白银区','483');
INSERT INTO `cmseasy_b_area` VALUES('2853','靖远县','483');
INSERT INTO `cmseasy_b_area` VALUES('2854','景泰县','483');
INSERT INTO `cmseasy_b_area` VALUES('2855','平川区','483');
INSERT INTO `cmseasy_b_area` VALUES('2856','会宁县','483');
INSERT INTO `cmseasy_b_area` VALUES('2857','秦州区','484');
INSERT INTO `cmseasy_b_area` VALUES('2858','清水县','484');
INSERT INTO `cmseasy_b_area` VALUES('2859','甘谷县','484');
INSERT INTO `cmseasy_b_area` VALUES('2860','麦积区','484');
INSERT INTO `cmseasy_b_area` VALUES('2861','秦安县','484');
INSERT INTO `cmseasy_b_area` VALUES('2862','武山县','484');
INSERT INTO `cmseasy_b_area` VALUES('2863','凉州区','486');
INSERT INTO `cmseasy_b_area` VALUES('2864','古浪县','486');
INSERT INTO `cmseasy_b_area` VALUES('2865','天祝藏族自治县','486');
INSERT INTO `cmseasy_b_area` VALUES('2866','民勤县','486');
INSERT INTO `cmseasy_b_area` VALUES('2867','甘州区','487');
INSERT INTO `cmseasy_b_area` VALUES('2868','民乐县','487');
INSERT INTO `cmseasy_b_area` VALUES('2869','高台县','487');
INSERT INTO `cmseasy_b_area` VALUES('2870','山丹县','487');
INSERT INTO `cmseasy_b_area` VALUES('2871','肃南裕固族自治县','487');
INSERT INTO `cmseasy_b_area` VALUES('2872','临泽县','487');
INSERT INTO `cmseasy_b_area` VALUES('2873','崆峒区','488');
INSERT INTO `cmseasy_b_area` VALUES('2874','灵台县','488');
INSERT INTO `cmseasy_b_area` VALUES('2875','华亭县','488');
INSERT INTO `cmseasy_b_area` VALUES('2876','静宁县','488');
INSERT INTO `cmseasy_b_area` VALUES('2877','泾川县','488');
INSERT INTO `cmseasy_b_area` VALUES('2878','崇信县','488');
INSERT INTO `cmseasy_b_area` VALUES('2879','庄浪县','488');
INSERT INTO `cmseasy_b_area` VALUES('2880','肃州区','489');
INSERT INTO `cmseasy_b_area` VALUES('2881','安西县','489');
INSERT INTO `cmseasy_b_area` VALUES('2882','阿克塞哈萨克族自治县','489');
INSERT INTO `cmseasy_b_area` VALUES('2883','敦煌市','489');
INSERT INTO `cmseasy_b_area` VALUES('2884','金塔县','489');
INSERT INTO `cmseasy_b_area` VALUES('2885','肃北蒙古族自治县','489');
INSERT INTO `cmseasy_b_area` VALUES('2886','玉门市','489');
INSERT INTO `cmseasy_b_area` VALUES('2887','西峰区','490');
INSERT INTO `cmseasy_b_area` VALUES('2888','环县','490');
INSERT INTO `cmseasy_b_area` VALUES('2889','合水县','490');
INSERT INTO `cmseasy_b_area` VALUES('2890','宁县','490');
INSERT INTO `cmseasy_b_area` VALUES('2891','镇原县','490');
INSERT INTO `cmseasy_b_area` VALUES('2892','庆阳县','490');
INSERT INTO `cmseasy_b_area` VALUES('2893','华池县','490');
INSERT INTO `cmseasy_b_area` VALUES('2894','正宁县','490');
INSERT INTO `cmseasy_b_area` VALUES('2895','安定区','491');
INSERT INTO `cmseasy_b_area` VALUES('2896','陇西县','491');
INSERT INTO `cmseasy_b_area` VALUES('2897','临洮县','491');
INSERT INTO `cmseasy_b_area` VALUES('2898','岷县','491');
INSERT INTO `cmseasy_b_area` VALUES('2899','通渭县','491');
INSERT INTO `cmseasy_b_area` VALUES('2900','渭源县','491');
INSERT INTO `cmseasy_b_area` VALUES('2901','漳县','491');
INSERT INTO `cmseasy_b_area` VALUES('2902','武都区','492');
INSERT INTO `cmseasy_b_area` VALUES('2903','文县','492');
INSERT INTO `cmseasy_b_area` VALUES('2904','康县','492');
INSERT INTO `cmseasy_b_area` VALUES('2905','礼县','492');
INSERT INTO `cmseasy_b_area` VALUES('2906','两当县','492');
INSERT INTO `cmseasy_b_area` VALUES('2907','成县','492');
INSERT INTO `cmseasy_b_area` VALUES('2908','宕昌县','492');
INSERT INTO `cmseasy_b_area` VALUES('2909','西和县','492');
INSERT INTO `cmseasy_b_area` VALUES('2910','徽县','492');
INSERT INTO `cmseasy_b_area` VALUES('2911','合作市','493');
INSERT INTO `cmseasy_b_area` VALUES('2912','卓尼县','493');
INSERT INTO `cmseasy_b_area` VALUES('2913','迭部县','493');
INSERT INTO `cmseasy_b_area` VALUES('2914','夏河县','493');
INSERT INTO `cmseasy_b_area` VALUES('2915','碌曲县','493');
INSERT INTO `cmseasy_b_area` VALUES('2916','临潭县','493');
INSERT INTO `cmseasy_b_area` VALUES('2917','舟曲县','493');
INSERT INTO `cmseasy_b_area` VALUES('2918','玛曲县','493');
INSERT INTO `cmseasy_b_area` VALUES('2919','临夏市','494');
INSERT INTO `cmseasy_b_area` VALUES('2920','康乐县','494');
INSERT INTO `cmseasy_b_area` VALUES('2921','广河县','494');
INSERT INTO `cmseasy_b_area` VALUES('2922','东乡族自治县','494');
INSERT INTO `cmseasy_b_area` VALUES('2923','积石山保安族东','494');
INSERT INTO `cmseasy_b_area` VALUES('2924','乡族撒拉族自治县','494');
INSERT INTO `cmseasy_b_area` VALUES('2925','临夏县','494');
INSERT INTO `cmseasy_b_area` VALUES('2926','永靖县','494');
INSERT INTO `cmseasy_b_area` VALUES('2927','和政县','494');
INSERT INTO `cmseasy_b_area` VALUES('2928','城东区','495');
INSERT INTO `cmseasy_b_area` VALUES('2929','城西区','495');
INSERT INTO `cmseasy_b_area` VALUES('2930','大通回族土族自治县','495');
INSERT INTO `cmseasy_b_area` VALUES('2931','湟源县','495');
INSERT INTO `cmseasy_b_area` VALUES('2932','城中区','495');
INSERT INTO `cmseasy_b_area` VALUES('2933','城北区','495');
INSERT INTO `cmseasy_b_area` VALUES('2934','湟中县','495');
INSERT INTO `cmseasy_b_area` VALUES('2935','平安县','496');
INSERT INTO `cmseasy_b_area` VALUES('2936','乐都县','496');
INSERT INTO `cmseasy_b_area` VALUES('2937','化隆回族自治县','496');
INSERT INTO `cmseasy_b_area` VALUES('2938','循化撒拉族自治县','496');
INSERT INTO `cmseasy_b_area` VALUES('2939','民和回族土族自治县','496');
INSERT INTO `cmseasy_b_area` VALUES('2940','互助土族自治县','496');
INSERT INTO `cmseasy_b_area` VALUES('2941','门源回族自治县','497');
INSERT INTO `cmseasy_b_area` VALUES('2942','海晏县','497');
INSERT INTO `cmseasy_b_area` VALUES('2943','刚察县','497');
INSERT INTO `cmseasy_b_area` VALUES('2944','祁连县','497');
INSERT INTO `cmseasy_b_area` VALUES('2945','同仁县','498');
INSERT INTO `cmseasy_b_area` VALUES('2946','泽库县','498');
INSERT INTO `cmseasy_b_area` VALUES('2947','河南蒙古族自治县','498');
INSERT INTO `cmseasy_b_area` VALUES('2948','尖扎县','498');
INSERT INTO `cmseasy_b_area` VALUES('2949','共和县','499');
INSERT INTO `cmseasy_b_area` VALUES('2950','贵德县','499');
INSERT INTO `cmseasy_b_area` VALUES('2951','贵南县','499');
INSERT INTO `cmseasy_b_area` VALUES('2952','同德县','499');
INSERT INTO `cmseasy_b_area` VALUES('2953','兴海县','499');
INSERT INTO `cmseasy_b_area` VALUES('2954','玛沁县','500');
INSERT INTO `cmseasy_b_area` VALUES('2955','甘德县','500');
INSERT INTO `cmseasy_b_area` VALUES('2956','久治县','500');
INSERT INTO `cmseasy_b_area` VALUES('2957','班玛县','500');
INSERT INTO `cmseasy_b_area` VALUES('2958','达日县','500');
INSERT INTO `cmseasy_b_area` VALUES('2959','玛多县','500');
INSERT INTO `cmseasy_b_area` VALUES('2960','玉树县','501');
INSERT INTO `cmseasy_b_area` VALUES('2961','称多县','501');
INSERT INTO `cmseasy_b_area` VALUES('2962','囊谦县','501');
INSERT INTO `cmseasy_b_area` VALUES('2963','曲麻莱县','501');
INSERT INTO `cmseasy_b_area` VALUES('2964','杂多县','501');
INSERT INTO `cmseasy_b_area` VALUES('2965','治多县','501');
INSERT INTO `cmseasy_b_area` VALUES('2966','格尔木市','502');
INSERT INTO `cmseasy_b_area` VALUES('2967','乌兰县','502');
INSERT INTO `cmseasy_b_area` VALUES('2968','天峻县','502');
INSERT INTO `cmseasy_b_area` VALUES('2969','德令哈市','502');
INSERT INTO `cmseasy_b_area` VALUES('2970','都兰县','502');
INSERT INTO `cmseasy_b_area` VALUES('2971','新城区','503');
INSERT INTO `cmseasy_b_area` VALUES('2972','玉泉区','503');
INSERT INTO `cmseasy_b_area` VALUES('2973','托克托县','503');
INSERT INTO `cmseasy_b_area` VALUES('2974','清水河县','503');
INSERT INTO `cmseasy_b_area` VALUES('2975','武川县','503');
INSERT INTO `cmseasy_b_area` VALUES('2976','回民区','503');
INSERT INTO `cmseasy_b_area` VALUES('2977','土默特左旗','503');
INSERT INTO `cmseasy_b_area` VALUES('2978','和林格尔县','503');
INSERT INTO `cmseasy_b_area` VALUES('2979','东河区','504');
INSERT INTO `cmseasy_b_area` VALUES('2980','青山区','504');
INSERT INTO `cmseasy_b_area` VALUES('2981','土默特右旗','504');
INSERT INTO `cmseasy_b_area` VALUES('2982','达尔罕茂明安联合旗','504');
INSERT INTO `cmseasy_b_area` VALUES('2983','昆都伦区','504');
INSERT INTO `cmseasy_b_area` VALUES('2984','白云矿区','504');
INSERT INTO `cmseasy_b_area` VALUES('2985','固阳县','504');
INSERT INTO `cmseasy_b_area` VALUES('2986','海勃湾区','505');
INSERT INTO `cmseasy_b_area` VALUES('2987','乌达区','505');
INSERT INTO `cmseasy_b_area` VALUES('2988','红山区','506');
INSERT INTO `cmseasy_b_area` VALUES('2989','松山区','506');
INSERT INTO `cmseasy_b_area` VALUES('2990','巴林左旗','506');
INSERT INTO `cmseasy_b_area` VALUES('2991','林西县','506');
INSERT INTO `cmseasy_b_area` VALUES('2992','翁牛特旗','506');
INSERT INTO `cmseasy_b_area` VALUES('2993','宁城县','506');
INSERT INTO `cmseasy_b_area` VALUES('2994','海南区','506');
INSERT INTO `cmseasy_b_area` VALUES('2995','元宝山区','506');
INSERT INTO `cmseasy_b_area` VALUES('2996','阿鲁科尔沁旗','506');
INSERT INTO `cmseasy_b_area` VALUES('2997','巴林右旗','506');
INSERT INTO `cmseasy_b_area` VALUES('2998','克什克腾旗','506');
INSERT INTO `cmseasy_b_area` VALUES('2999','喀喇沁旗','506');
INSERT INTO `cmseasy_b_area` VALUES('3000','敖汉旗','506');
INSERT INTO `cmseasy_b_area` VALUES('3001','科尔沁区','507');
INSERT INTO `cmseasy_b_area` VALUES('3002','科尔沁左翼后旗','507');
INSERT INTO `cmseasy_b_area` VALUES('3003','库伦旗','507');
INSERT INTO `cmseasy_b_area` VALUES('3004','扎鲁特旗','507');
INSERT INTO `cmseasy_b_area` VALUES('3005','霍林郭勒市','507');
INSERT INTO `cmseasy_b_area` VALUES('3006','科尔沁左翼中旗','507');
INSERT INTO `cmseasy_b_area` VALUES('3007','开鲁县','507');
INSERT INTO `cmseasy_b_area` VALUES('3008','奈曼旗','507');
INSERT INTO `cmseasy_b_area` VALUES('3009','东胜区','508');
INSERT INTO `cmseasy_b_area` VALUES('3010','准格尔旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3011','鄂托克旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3012','乌审旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3013','伊金霍洛旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3014','达拉特旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3015','鄂托克前旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3016','杭锦旗','508');
INSERT INTO `cmseasy_b_area` VALUES('3017','海拉尔区','509');
INSERT INTO `cmseasy_b_area` VALUES('3018','莫力达瓦达斡尔族自治旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3019','鄂温克族自治旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3020','新巴尔虎左旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3021','满洲里市','509');
INSERT INTO `cmseasy_b_area` VALUES('3022','扎兰屯市','509');
INSERT INTO `cmseasy_b_area` VALUES('3023','根河市','509');
INSERT INTO `cmseasy_b_area` VALUES('3024','阿荣旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3025','鄂伦春自治旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3026','陈巴尔虎旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3027','新巴尔虎右旗','509');
INSERT INTO `cmseasy_b_area` VALUES('3028','牙克石市','509');
INSERT INTO `cmseasy_b_area` VALUES('3029','额尔古纳市','509');
INSERT INTO `cmseasy_b_area` VALUES('3030','集宁区','510');
INSERT INTO `cmseasy_b_area` VALUES('3031','化德县','510');
INSERT INTO `cmseasy_b_area` VALUES('3032','兴和县','510');
INSERT INTO `cmseasy_b_area` VALUES('3033','察哈尔右翼前旗','510');
INSERT INTO `cmseasy_b_area` VALUES('3034','察哈尔右翼后旗','510');
INSERT INTO `cmseasy_b_area` VALUES('3035','丰镇市','510');
INSERT INTO `cmseasy_b_area` VALUES('3036','卓资县','510');
INSERT INTO `cmseasy_b_area` VALUES('3037','商都县','510');
INSERT INTO `cmseasy_b_area` VALUES('3038','凉城县','510');
INSERT INTO `cmseasy_b_area` VALUES('3039','察哈尔右翼中旗','510');
INSERT INTO `cmseasy_b_area` VALUES('3040','四子王旗','510');
INSERT INTO `cmseasy_b_area` VALUES('3041','二连浩特市','511');
INSERT INTO `cmseasy_b_area` VALUES('3042','阿巴嘎旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3043','苏尼特右旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3044','西乌珠穆沁旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3045','镶黄旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3046','正蓝旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3047','多伦县','511');
INSERT INTO `cmseasy_b_area` VALUES('3048','锡林浩特市','511');
INSERT INTO `cmseasy_b_area` VALUES('3049','苏尼特左旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3050','东乌珠穆沁旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3051','太仆寺旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3052','正镶白旗','511');
INSERT INTO `cmseasy_b_area` VALUES('3053','临河区','512');
INSERT INTO `cmseasy_b_area` VALUES('3054','磴口县','512');
INSERT INTO `cmseasy_b_area` VALUES('3055','乌拉特中旗','512');
INSERT INTO `cmseasy_b_area` VALUES('3056','杭锦后旗','512');
INSERT INTO `cmseasy_b_area` VALUES('3057','五原县','512');
INSERT INTO `cmseasy_b_area` VALUES('3058','乌拉特前旗','512');
INSERT INTO `cmseasy_b_area` VALUES('3059','乌拉特后旗','512');
INSERT INTO `cmseasy_b_area` VALUES('3060','阿拉善左旗','513');
INSERT INTO `cmseasy_b_area` VALUES('3061','额济纳旗','513');
INSERT INTO `cmseasy_b_area` VALUES('3062','阿拉善右旗','513');
INSERT INTO `cmseasy_b_area` VALUES('3063','乌兰浩特市','514');
INSERT INTO `cmseasy_b_area` VALUES('3064','科尔沁右翼前旗','514');
INSERT INTO `cmseasy_b_area` VALUES('3065','扎赉特旗','514');
INSERT INTO `cmseasy_b_area` VALUES('3066','突泉县','514');
INSERT INTO `cmseasy_b_area` VALUES('3067','阿尔山市','514');
INSERT INTO `cmseasy_b_area` VALUES('3068','科尔沁右翼中旗','514');
INSERT INTO `cmseasy_b_area` VALUES('3069','城关区','515');
INSERT INTO `cmseasy_b_area` VALUES('3070','当雄县','515');
INSERT INTO `cmseasy_b_area` VALUES('3071','曲水县','515');
INSERT INTO `cmseasy_b_area` VALUES('3072','墨竹工卡县','515');
INSERT INTO `cmseasy_b_area` VALUES('3073','达孜县','515');
INSERT INTO `cmseasy_b_area` VALUES('3074','林周县','515');
INSERT INTO `cmseasy_b_area` VALUES('3075','尼木县','515');
INSERT INTO `cmseasy_b_area` VALUES('3076','堆龙德庆县','515');
INSERT INTO `cmseasy_b_area` VALUES('3077','那曲县','516');
INSERT INTO `cmseasy_b_area` VALUES('3078','比如县','516');
INSERT INTO `cmseasy_b_area` VALUES('3079','安多县','516');
INSERT INTO `cmseasy_b_area` VALUES('3080','索县','516');
INSERT INTO `cmseasy_b_area` VALUES('3081','巴青县','516');
INSERT INTO `cmseasy_b_area` VALUES('3082','尼玛县','516');
INSERT INTO `cmseasy_b_area` VALUES('3083','嘉黎县','516');
INSERT INTO `cmseasy_b_area` VALUES('3084','聂荣县','516');
INSERT INTO `cmseasy_b_area` VALUES('3085','申扎县','516');
INSERT INTO `cmseasy_b_area` VALUES('3086','班戈县','516');
INSERT INTO `cmseasy_b_area` VALUES('3087','昌都县','517');
INSERT INTO `cmseasy_b_area` VALUES('3088','贡觉县','517');
INSERT INTO `cmseasy_b_area` VALUES('3089','丁青县','517');
INSERT INTO `cmseasy_b_area` VALUES('3090','八宿县','517');
INSERT INTO `cmseasy_b_area` VALUES('3091','芒康县','517');
INSERT INTO `cmseasy_b_area` VALUES('3092','边坝县','517');
INSERT INTO `cmseasy_b_area` VALUES('3093','江达县','517');
INSERT INTO `cmseasy_b_area` VALUES('3094','类乌齐县','517');
INSERT INTO `cmseasy_b_area` VALUES('3095','察雅县','517');
INSERT INTO `cmseasy_b_area` VALUES('3096','左贡县','517');
INSERT INTO `cmseasy_b_area` VALUES('3097','洛隆县','517');
INSERT INTO `cmseasy_b_area` VALUES('3098','乃东县','518');
INSERT INTO `cmseasy_b_area` VALUES('3099','贡嘎县','518');
INSERT INTO `cmseasy_b_area` VALUES('3100','琼结县','518');
INSERT INTO `cmseasy_b_area` VALUES('3101','措美县','518');
INSERT INTO `cmseasy_b_area` VALUES('3102','加查县','518');
INSERT INTO `cmseasy_b_area` VALUES('3103','错那县','518');
INSERT INTO `cmseasy_b_area` VALUES('3104','浪卡子县','518');
INSERT INTO `cmseasy_b_area` VALUES('3105','扎囊县','518');
INSERT INTO `cmseasy_b_area` VALUES('3106','桑日县','518');
INSERT INTO `cmseasy_b_area` VALUES('3107','曲松县','518');
INSERT INTO `cmseasy_b_area` VALUES('3108','洛扎县','518');
INSERT INTO `cmseasy_b_area` VALUES('3109','隆子县','518');
INSERT INTO `cmseasy_b_area` VALUES('3110','日喀则市','519');
INSERT INTO `cmseasy_b_area` VALUES('3111','江孜县','519');
INSERT INTO `cmseasy_b_area` VALUES('3112','萨迦县','519');
INSERT INTO `cmseasy_b_area` VALUES('3113','昂仁县','519');
INSERT INTO `cmseasy_b_area` VALUES('3114','白朗县','519');
INSERT INTO `cmseasy_b_area` VALUES('3115','康马县','519');
INSERT INTO `cmseasy_b_area` VALUES('3116','仲巴县','519');
INSERT INTO `cmseasy_b_area` VALUES('3117','吉隆县','519');
INSERT INTO `cmseasy_b_area` VALUES('3118','萨嘎县','519');
INSERT INTO `cmseasy_b_area` VALUES('3119','岗巴县','519');
INSERT INTO `cmseasy_b_area` VALUES('3120','南木林县','519');
INSERT INTO `cmseasy_b_area` VALUES('3121','定日县','519');
INSERT INTO `cmseasy_b_area` VALUES('3122','拉孜县','519');
INSERT INTO `cmseasy_b_area` VALUES('3123','谢通门县','519');
INSERT INTO `cmseasy_b_area` VALUES('3124','仁布县','519');
INSERT INTO `cmseasy_b_area` VALUES('3125','定结县','519');
INSERT INTO `cmseasy_b_area` VALUES('3126','亚东县','519');
INSERT INTO `cmseasy_b_area` VALUES('3127','聂拉木县','519');
INSERT INTO `cmseasy_b_area` VALUES('3128','普兰县','520');
INSERT INTO `cmseasy_b_area` VALUES('3129','噶尔县','520');
INSERT INTO `cmseasy_b_area` VALUES('3130','革吉县','520');
INSERT INTO `cmseasy_b_area` VALUES('3131','措勤县','520');
INSERT INTO `cmseasy_b_area` VALUES('3132','札达县','520');
INSERT INTO `cmseasy_b_area` VALUES('3133','日土县','520');
INSERT INTO `cmseasy_b_area` VALUES('3134','改则县','520');
INSERT INTO `cmseasy_b_area` VALUES('3135','林芝县','521');
INSERT INTO `cmseasy_b_area` VALUES('3136','米林县','521');
INSERT INTO `cmseasy_b_area` VALUES('3137','波密县','521');
INSERT INTO `cmseasy_b_area` VALUES('3138','朗县','521');
INSERT INTO `cmseasy_b_area` VALUES('3139','工布江达县','521');
INSERT INTO `cmseasy_b_area` VALUES('3140','墨脱县','521');
INSERT INTO `cmseasy_b_area` VALUES('3141','察隅县','521');
INSERT INTO `cmseasy_b_area` VALUES('3142','天山区','522');
INSERT INTO `cmseasy_b_area` VALUES('3143','新市区','522');
INSERT INTO `cmseasy_b_area` VALUES('3144','头屯河区','522');
INSERT INTO `cmseasy_b_area` VALUES('3145','东山区','522');
INSERT INTO `cmseasy_b_area` VALUES('3146','沙依巴克区','522');
INSERT INTO `cmseasy_b_area` VALUES('3147','水磨沟区','522');
INSERT INTO `cmseasy_b_area` VALUES('3148','独山子区','523');
INSERT INTO `cmseasy_b_area` VALUES('3149','白碱滩区','523');
INSERT INTO `cmseasy_b_area` VALUES('3150','乌尔禾区','523');
INSERT INTO `cmseasy_b_area` VALUES('3151','克拉玛依区','523');
INSERT INTO `cmseasy_b_area` VALUES('3152','吐鲁番市','524');
INSERT INTO `cmseasy_b_area` VALUES('3153','托克逊县','524');
INSERT INTO `cmseasy_b_area` VALUES('3154','鄯善县','524');
INSERT INTO `cmseasy_b_area` VALUES('3155','哈密市','525');
INSERT INTO `cmseasy_b_area` VALUES('3156','伊吾县','525');
INSERT INTO `cmseasy_b_area` VALUES('3157','巴里坤哈萨克自治县','525');
INSERT INTO `cmseasy_b_area` VALUES('3158','和田市','526');
INSERT INTO `cmseasy_b_area` VALUES('3159','墨玉县','526');
INSERT INTO `cmseasy_b_area` VALUES('3160','洛浦县','526');
INSERT INTO `cmseasy_b_area` VALUES('3161','于田县','526');
INSERT INTO `cmseasy_b_area` VALUES('3162','民丰县','526');
INSERT INTO `cmseasy_b_area` VALUES('3163','和田县','526');
INSERT INTO `cmseasy_b_area` VALUES('3164','皮山县','526');
INSERT INTO `cmseasy_b_area` VALUES('3165','策勒县','526');
INSERT INTO `cmseasy_b_area` VALUES('3166','阿克苏市','527');
INSERT INTO `cmseasy_b_area` VALUES('3167','库车县','527');
INSERT INTO `cmseasy_b_area` VALUES('3168','新和县','527');
INSERT INTO `cmseasy_b_area` VALUES('3169','乌什县','527');
INSERT INTO `cmseasy_b_area` VALUES('3170','温宿县','527');
INSERT INTO `cmseasy_b_area` VALUES('3171','沙雅县','527');
INSERT INTO `cmseasy_b_area` VALUES('3172','拜城县','527');
INSERT INTO `cmseasy_b_area` VALUES('3173','阿瓦提县','527');
INSERT INTO `cmseasy_b_area` VALUES('3174','喀什市','528');
INSERT INTO `cmseasy_b_area` VALUES('3175','疏勒县','528');
INSERT INTO `cmseasy_b_area` VALUES('3176','泽普县','528');
INSERT INTO `cmseasy_b_area` VALUES('3177','叶城县','528');
INSERT INTO `cmseasy_b_area` VALUES('3178','岳普湖县','528');
INSERT INTO `cmseasy_b_area` VALUES('3179','塔什库尔干塔吉克自治县','528');
INSERT INTO `cmseasy_b_area` VALUES('3180','巴楚县','528');
INSERT INTO `cmseasy_b_area` VALUES('3181','疏附县','528');
INSERT INTO `cmseasy_b_area` VALUES('3182','英吉沙县','528');
INSERT INTO `cmseasy_b_area` VALUES('3183','莎车县','528');
INSERT INTO `cmseasy_b_area` VALUES('3184','麦盖提县','528');
INSERT INTO `cmseasy_b_area` VALUES('3185','伽师县','528');
INSERT INTO `cmseasy_b_area` VALUES('3186','阿图什市','529');
INSERT INTO `cmseasy_b_area` VALUES('3187','阿合奇县','529');
INSERT INTO `cmseasy_b_area` VALUES('3188','乌恰县','529');
INSERT INTO `cmseasy_b_area` VALUES('3189','阿克陶县','529');
INSERT INTO `cmseasy_b_area` VALUES('3190','库尔勒市','530');
INSERT INTO `cmseasy_b_area` VALUES('3191','尉犁县','530');
INSERT INTO `cmseasy_b_area` VALUES('3192','且末县','530');
INSERT INTO `cmseasy_b_area` VALUES('3193','和静县','530');
INSERT INTO `cmseasy_b_area` VALUES('3194','博湖县','530');
INSERT INTO `cmseasy_b_area` VALUES('3195','轮台县','530');
INSERT INTO `cmseasy_b_area` VALUES('3196','若羌县','530');
INSERT INTO `cmseasy_b_area` VALUES('3197','焉耆回族自治县','530');
INSERT INTO `cmseasy_b_area` VALUES('3198','和硕县','530');
INSERT INTO `cmseasy_b_area` VALUES('3199','昌吉市','531');
INSERT INTO `cmseasy_b_area` VALUES('3200','米泉市','531');
INSERT INTO `cmseasy_b_area` VALUES('3201','玛纳斯县','531');
INSERT INTO `cmseasy_b_area` VALUES('3202','吉木萨尔县','531');
INSERT INTO `cmseasy_b_area` VALUES('3203','木垒哈萨克自治县','531');
INSERT INTO `cmseasy_b_area` VALUES('3204','阜康市','531');
INSERT INTO `cmseasy_b_area` VALUES('3205','呼图壁县','531');
INSERT INTO `cmseasy_b_area` VALUES('3206','奇台县','531');
INSERT INTO `cmseasy_b_area` VALUES('3207','博乐市','532');
INSERT INTO `cmseasy_b_area` VALUES('3208','温泉县','532');
INSERT INTO `cmseasy_b_area` VALUES('3209','精河县','532');
INSERT INTO `cmseasy_b_area` VALUES('3210','伊宁市','533');
INSERT INTO `cmseasy_b_area` VALUES('3211','伊宁县','533');
INSERT INTO `cmseasy_b_area` VALUES('3212','霍城县','533');
INSERT INTO `cmseasy_b_area` VALUES('3213','新源县','533');
INSERT INTO `cmseasy_b_area` VALUES('3214','尼勒克县','533');
INSERT INTO `cmseasy_b_area` VALUES('3215','特克斯县','533');
INSERT INTO `cmseasy_b_area` VALUES('3216','奎屯市','533');
INSERT INTO `cmseasy_b_area` VALUES('3217','察布查尔锡伯自治县','533');
INSERT INTO `cmseasy_b_area` VALUES('3218','巩留县','533');
INSERT INTO `cmseasy_b_area` VALUES('3219','昭苏县','533');
INSERT INTO `cmseasy_b_area` VALUES('3220','塔城市','534');
INSERT INTO `cmseasy_b_area` VALUES('3221','额敏县','534');
INSERT INTO `cmseasy_b_area` VALUES('3222','托里县','534');
INSERT INTO `cmseasy_b_area` VALUES('3223','和布克赛尔蒙古自治县','534');
INSERT INTO `cmseasy_b_area` VALUES('3224','乌苏市','534');
INSERT INTO `cmseasy_b_area` VALUES('3225','沙湾县','534');
INSERT INTO `cmseasy_b_area` VALUES('3226','裕民县','534');
INSERT INTO `cmseasy_b_area` VALUES('3227','阿勒泰市','535');
INSERT INTO `cmseasy_b_area` VALUES('3228','吉木乃县','535');
INSERT INTO `cmseasy_b_area` VALUES('3229','布尔津县','535');
INSERT INTO `cmseasy_b_area` VALUES('3230','富蕴县','535');
INSERT INTO `cmseasy_b_area` VALUES('3231','哈巴河县','535');
INSERT INTO `cmseasy_b_area` VALUES('3232','福海县','535');
INSERT INTO `cmseasy_b_area` VALUES('3233','青河县','535');
INSERT INTO `cmseasy_b_area` VALUES('3234','石河子市','536');
INSERT INTO `cmseasy_b_area` VALUES('3235','阿拉尔市','536');
INSERT INTO `cmseasy_b_area` VALUES('3236','图木舒克市','536');
INSERT INTO `cmseasy_b_area` VALUES('3237','五家渠市','536');
INSERT INTO `cmseasy_b_area` VALUES('3238','兴宁区','537');
INSERT INTO `cmseasy_b_area` VALUES('3239','江南区','537');
INSERT INTO `cmseasy_b_area` VALUES('3240','良庆区','537');
INSERT INTO `cmseasy_b_area` VALUES('3241','武鸣县','537');
INSERT INTO `cmseasy_b_area` VALUES('3242','马山县','537');
INSERT INTO `cmseasy_b_area` VALUES('3243','宾阳县','537');
INSERT INTO `cmseasy_b_area` VALUES('3244','横县','537');
INSERT INTO `cmseasy_b_area` VALUES('3245','青秀区','537');
INSERT INTO `cmseasy_b_area` VALUES('3246','西乡塘区','537');
INSERT INTO `cmseasy_b_area` VALUES('3247','邕宁区','537');
INSERT INTO `cmseasy_b_area` VALUES('3248','隆安县','537');
INSERT INTO `cmseasy_b_area` VALUES('3249','上林县','537');
INSERT INTO `cmseasy_b_area` VALUES('3250','城中区','538');
INSERT INTO `cmseasy_b_area` VALUES('3251','柳南区','538');
INSERT INTO `cmseasy_b_area` VALUES('3252','柳江县','538');
INSERT INTO `cmseasy_b_area` VALUES('3253','鹿寨县','538');
INSERT INTO `cmseasy_b_area` VALUES('3254','融水苗族自治县','538');
INSERT INTO `cmseasy_b_area` VALUES('3255','三江侗族自治县','538');
INSERT INTO `cmseasy_b_area` VALUES('3256','鱼峰区','538');
INSERT INTO `cmseasy_b_area` VALUES('3257','柳北区','538');
INSERT INTO `cmseasy_b_area` VALUES('3258','柳城县','538');
INSERT INTO `cmseasy_b_area` VALUES('3259','融安县','538');
INSERT INTO `cmseasy_b_area` VALUES('3260','秀峰区','539');
INSERT INTO `cmseasy_b_area` VALUES('3261','象山区','539');
INSERT INTO `cmseasy_b_area` VALUES('3262','雁山区','539');
INSERT INTO `cmseasy_b_area` VALUES('3263','临桂县','539');
INSERT INTO `cmseasy_b_area` VALUES('3264','全州县','539');
INSERT INTO `cmseasy_b_area` VALUES('3265','永福县','539');
INSERT INTO `cmseasy_b_area` VALUES('3266','龙胜各族自治县','539');
INSERT INTO `cmseasy_b_area` VALUES('3267','平乐县恭城瑶族自治县','539');
INSERT INTO `cmseasy_b_area` VALUES('3268','叠彩区','539');
INSERT INTO `cmseasy_b_area` VALUES('3269','七星区','539');
INSERT INTO `cmseasy_b_area` VALUES('3270','阳朔县','539');
INSERT INTO `cmseasy_b_area` VALUES('3271','灵川县','539');
INSERT INTO `cmseasy_b_area` VALUES('3272','兴安县','539');
INSERT INTO `cmseasy_b_area` VALUES('3273','灌阳县','539');
INSERT INTO `cmseasy_b_area` VALUES('3274','资源县','539');
INSERT INTO `cmseasy_b_area` VALUES('3275','荔蒲县','539');
INSERT INTO `cmseasy_b_area` VALUES('3276','万秀区','540');
INSERT INTO `cmseasy_b_area` VALUES('3277','长洲区','540');
INSERT INTO `cmseasy_b_area` VALUES('3278','藤县','540');
INSERT INTO `cmseasy_b_area` VALUES('3279','岑溪市','540');
INSERT INTO `cmseasy_b_area` VALUES('3280','蝶山区','540');
INSERT INTO `cmseasy_b_area` VALUES('3281','苍梧县','540');
INSERT INTO `cmseasy_b_area` VALUES('3282','蒙山县','540');
INSERT INTO `cmseasy_b_area` VALUES('3283','海城区','541');
INSERT INTO `cmseasy_b_area` VALUES('3284','铁山港区','541');
INSERT INTO `cmseasy_b_area` VALUES('3285','合浦县','541');
INSERT INTO `cmseasy_b_area` VALUES('3286','银海区','541');
INSERT INTO `cmseasy_b_area` VALUES('3287','港口区','542');
INSERT INTO `cmseasy_b_area` VALUES('3288','上思县','542');
INSERT INTO `cmseasy_b_area` VALUES('3289','东兴市','542');
INSERT INTO `cmseasy_b_area` VALUES('3290','防城区','542');
INSERT INTO `cmseasy_b_area` VALUES('3291','钦南区','543');
INSERT INTO `cmseasy_b_area` VALUES('3292','灵山县','543');
INSERT INTO `cmseasy_b_area` VALUES('3293','浦北县','543');
INSERT INTO `cmseasy_b_area` VALUES('3294','钦北区','543');
INSERT INTO `cmseasy_b_area` VALUES('3295','港北区','544');
INSERT INTO `cmseasy_b_area` VALUES('3296','覃塘区','544');
INSERT INTO `cmseasy_b_area` VALUES('3297','桂平市','544');
INSERT INTO `cmseasy_b_area` VALUES('3298','港南区','544');
INSERT INTO `cmseasy_b_area` VALUES('3299','平南县','544');
INSERT INTO `cmseasy_b_area` VALUES('3300','玉州区','545');
INSERT INTO `cmseasy_b_area` VALUES('3301','陆川县','545');
INSERT INTO `cmseasy_b_area` VALUES('3302','兴业县','545');
INSERT INTO `cmseasy_b_area` VALUES('3303','北流市','545');
INSERT INTO `cmseasy_b_area` VALUES('3304','容县','545');
INSERT INTO `cmseasy_b_area` VALUES('3305','博白县','545');
INSERT INTO `cmseasy_b_area` VALUES('3306','右江区','546');
INSERT INTO `cmseasy_b_area` VALUES('3307','田东县','546');
INSERT INTO `cmseasy_b_area` VALUES('3308','德保县','546');
INSERT INTO `cmseasy_b_area` VALUES('3309','那坡县','546');
INSERT INTO `cmseasy_b_area` VALUES('3310','乐业县','546');
INSERT INTO `cmseasy_b_area` VALUES('3311','西林县','546');
INSERT INTO `cmseasy_b_area` VALUES('3312','隆林各族自治县','546');
INSERT INTO `cmseasy_b_area` VALUES('3313','田阳县','546');
INSERT INTO `cmseasy_b_area` VALUES('3314','平果县','546');
INSERT INTO `cmseasy_b_area` VALUES('3315','靖西县','546');
INSERT INTO `cmseasy_b_area` VALUES('3316','凌云县','546');
INSERT INTO `cmseasy_b_area` VALUES('3317','田林县','546');
INSERT INTO `cmseasy_b_area` VALUES('3318','八步区','547');
INSERT INTO `cmseasy_b_area` VALUES('3319','钟山县','547');
INSERT INTO `cmseasy_b_area` VALUES('3320','富川瑶族自治县','547');
INSERT INTO `cmseasy_b_area` VALUES('3321','昭平县','547');
INSERT INTO `cmseasy_b_area` VALUES('3322','金城江区','548');
INSERT INTO `cmseasy_b_area` VALUES('3323','天峨县','548');
INSERT INTO `cmseasy_b_area` VALUES('3324','东兰县','548');
INSERT INTO `cmseasy_b_area` VALUES('3325','环江毛南族自治县','548');
INSERT INTO `cmseasy_b_area` VALUES('3326','都安瑶族自治县','548');
INSERT INTO `cmseasy_b_area` VALUES('3327','宜州市','548');
INSERT INTO `cmseasy_b_area` VALUES('3328','南丹县','548');
INSERT INTO `cmseasy_b_area` VALUES('3329','凤山县','548');
INSERT INTO `cmseasy_b_area` VALUES('3330','罗城\r\n仫佬族自治县','548');
INSERT INTO `cmseasy_b_area` VALUES('3331','巴马瑶族自治县','548');
INSERT INTO `cmseasy_b_area` VALUES('3332','大化瑶族自治县','548');
INSERT INTO `cmseasy_b_area` VALUES('3333','兴宾区','549');
INSERT INTO `cmseasy_b_area` VALUES('3334','象州县','549');
INSERT INTO `cmseasy_b_area` VALUES('3335','金秀瑶族自治县','549');
INSERT INTO `cmseasy_b_area` VALUES('3336','合山市','549');
INSERT INTO `cmseasy_b_area` VALUES('3337','忻城县','549');
INSERT INTO `cmseasy_b_area` VALUES('3338','武宣县','549');
INSERT INTO `cmseasy_b_area` VALUES('3339','江洲区','550');
INSERT INTO `cmseasy_b_area` VALUES('3340','宁明县','550');
INSERT INTO `cmseasy_b_area` VALUES('3341','大新县','550');
INSERT INTO `cmseasy_b_area` VALUES('3342','凭祥市','550');
INSERT INTO `cmseasy_b_area` VALUES('3343','扶绥县','550');
INSERT INTO `cmseasy_b_area` VALUES('3344','龙州县','550');
INSERT INTO `cmseasy_b_area` VALUES('3345','天等县','550');
INSERT INTO `cmseasy_b_area` VALUES('3346','西城区','551');
INSERT INTO `cmseasy_b_area` VALUES('3347','东城区','551');
INSERT INTO `cmseasy_b_area` VALUES('3348','新 城','551');
INSERT INTO `cmseasy_b_area` VALUES('3349','新市区','551');
INSERT INTO `cmseasy_b_area` VALUES('3350','永宁县城','551');
INSERT INTO `cmseasy_b_area` VALUES('3351','贺兰县城','551');
INSERT INTO `cmseasy_b_area` VALUES('3352','大武口区','552');
INSERT INTO `cmseasy_b_area` VALUES('3353','石嘴山区','552');
INSERT INTO `cmseasy_b_area` VALUES('3354','石炭井区','552');
INSERT INTO `cmseasy_b_area` VALUES('3355','平罗县城','552');
INSERT INTO `cmseasy_b_area` VALUES('3356','陶乐县城','552');
INSERT INTO `cmseasy_b_area` VALUES('3357','惠农县城','552');
INSERT INTO `cmseasy_b_area` VALUES('3358','中宁县城','553');
INSERT INTO `cmseasy_b_area` VALUES('3359','同心县城','553');
INSERT INTO `cmseasy_b_area` VALUES('3360','灵武县城','553');
INSERT INTO `cmseasy_b_area` VALUES('3361','盐池县城','553');
INSERT INTO `cmseasy_b_area` VALUES('3362','青铜峡市（小坝）','553');
INSERT INTO `cmseasy_b_area` VALUES('3363','青铜峡镇','553');
INSERT INTO `cmseasy_b_area` VALUES('3364','中卫县城','553');
INSERT INTO `cmseasy_b_area` VALUES('3365','海原县城','554');
INSERT INTO `cmseasy_b_area` VALUES('3366','西吉县城','554');
INSERT INTO `cmseasy_b_area` VALUES('3367','隆德县城','554');
INSERT INTO `cmseasy_b_area` VALUES('3368','泾源县城','554');
INSERT INTO `cmseasy_b_area` VALUES('3369','彭阳县城','554');
INSERT INTO `cmseasy_b_area` VALUES('3372','高新区','443');

INSERT INTO `cmseasy_b_category` VALUES('1','0','关于我们','THE STRENGTH OF BRAND INNOVATION SCIENCE AND TECHNOLOGY WILL NEVER STOP','','10','/upload/images/201304/1000guanyu.jpg','','','实力品牌 专业技能 技术人才 创新科技 永不止步','<p>&nbsp; &nbsp; 婚纱照拍摄做为80.90后的新人唯美华丽的婚纱照是新人们必选，奔放，时尚，潮流，婚纱个性化彰显个性。让自己能够与众不同，婚纱拍摄，不仅可以给来宾分享你的浪漫幸福，更是日后难忘的回忆。但选影楼还是工作室呢­他们之间虽有不同，但本质上都是以生产制造影像及相关产品来盈利的，那么我们今天深圳诺江婚纱摄影就来给大家讲解一下婚纱摄影店在这一方面的优势和劣势 &nbsp; &nbsp;&nbsp;</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708124884708.jpg\" title=\"14708124884708.jpg\" alt=\"QQ截图20160810145846.jpg\"/></p><p><br/></p><p>&nbsp; &nbsp;&nbsp;影楼的优势：&nbsp;</p><p>&nbsp;&nbsp;</p><p><strong>&nbsp; &nbsp;&nbsp;视觉效果</strong>&nbsp;</p><p>&nbsp;&nbsp;</p><p>&nbsp; &nbsp;&nbsp;视觉效果，是新人在选择婚纱照时最重要的一点。通过视觉效果，新人判断自己喜欢的照片类型，以及选择拍摄的场景、服装等。&nbsp;</p><p>&nbsp;</p><p>&nbsp; &nbsp;&nbsp;在拍摄风格方面，影楼吸收了全国各地的创作理念，在创作方面更具有权威性。影楼的摄影师、造型师的经验非常丰富，他们通过对以往拍摄过人物及作品的总结，知道在什么角度、摆什么姿势拍出来的人效果会比较好看，以此方式对新人进行指导，可以更轻松地获得让新人满意的漂亮照片。&nbsp;</p><p><br/></p><p>&nbsp; &nbsp;&nbsp;后期处理也是影响照片视觉效果的另一重要因素。通过对照片的不同处理，营造出不一样的环境氛围。影楼发布一套新的产品样片，需要注入大量的人力和物力，以及多方意见的融合、修改，才会最终呈现在新人面前。所以，当新人选择拍摄一套有主题婚纱照时，虽然在服装和风格上可能和别人有些共同之处，但是此套片子确实工作人员的心血所成，堪称经典，经典也是不断被复制的过程。 &nbsp;</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708124979711.jpg\" title=\"14708124979711.jpg\" alt=\"QQ截图20160810145902.jpg\"/></p><p>&nbsp;</p><p>&nbsp; &nbsp;&nbsp;<strong>服装造型</strong>&nbsp;</p><p><br/></p><p>&nbsp; &nbsp;&nbsp;影楼资金实力比较雄厚，所以服装款式品种会很多，更新速度块，比较高端，很多新人会因为影楼的服装被吸引。在影楼的橱窗展示区，常常可以看见璀璨夺目、做工精致的华服，吸引着过路的行人，让人不仅憧憬穿上它顿时大放光彩的画面。婚纱影楼的婚纱礼服品牌十分多样化，一件高档的品牌礼服价值上万元，中档的品牌礼服也要在三至六千元不等。影楼的礼服更新快，款式多，新人可以根据所好，不同选择。 &nbsp;</p><p><br/></p><p>&nbsp; &nbsp;&nbsp;有些资金实力雄厚的影楼，还会引进国外有名的婚纱品牌，或者和知名设计师合作，为影楼的主题系列设计服装，增加了新人在影楼在拍照的趣味性。同时，新人在拍照的过程中，如果有非常喜欢的婚纱礼服想在婚礼当天穿着，影楼可以为新人婚礼提供租赁服务，非常便捷。现在更有影楼，也可以为新人提供定制服务。 &nbsp;&nbsp;</p><p><br/></p><p>&nbsp; &nbsp;&nbsp;<strong>室内棚景 &nbsp;</strong>&nbsp;</p><p><br/></p><p>&nbsp; &nbsp;&nbsp;华丽的室内棚景，是影楼非常大的一个优势。唯美、逼真的建筑，四季皆宜的温度，创造美好影响的同时也可以获得较为舒适的感受。</p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708125081160.jpg\" title=\"14708125081160.jpg\" alt=\"QQ截图20160810145914.jpg\"/></p><p><br/></p>','about','archive/list_page.html','archive/list_page.html','0','0','archive/list_page.html','archive/list_page.html','0','','','','article','1','0','0','1','1','0','','','','','','0','0','1','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('2','0','新闻栏目','','','30','/upload/images/201304/2000xinwen.jpg','','','','<p>最权威的新闻资讯</p>','news','archive/list.html','archive/list.html','archive/show.html','0','archive/list.html','archive/list.html','archive/show.html','','','','article','1','0','0','1','1','0','','','','','','0','0','1','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('3','0','作品展示','THE STRENGTH OF BRAND INNOVATION SCIENCE AND TECHNOLOGY WILL NEVER STOP','','40','/upload/images/201304/3000chanpin.jpg','','','专注高端 精准定位 用心服务 帮您实现品牌价值','<p>产品是指能够提供给市场，被人们使用和消费，并能满足人们某种需求的任何东西，包括有形的物品、无形的服务、组织、观念或它们的组合。产品一般可以分为三个层次，即核心产品、形式产品、延伸产品。核心产品是指整体</p>','products','archive/list_pic.html','archive/list_pic.html','archive/show.html','0','archive/list_pic.html','archive/list_pic.html','archive/show.html','','','','article','1','0','0','1','1','0','','','','','','0','0','1','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('79','76','复古式装修','','','0','','','','','<p>复式房是受跃层式住宅的设计构思启发，由香港建筑师李鸿仁创造设计的一种经济型住宅。复式房在概念上是一层，并不具备完整的两层空间，单层高较普通住宅（通常层高2.8米）高，可在局部增建出一个夹层，安排卧室或书房等，用楼梯联系上下，其目的是在有限的空间里增加使用面积，提高住宅的空间利用率。复式住宅是一种经济型房屋。在建造上仍每户占有上下两层，实际是在层高较高的一层楼中增建一个1.2米的夹层，两层合计的层高要大大低于跃层式住宅（李氏设计为3.3米，而一般跃层式为5.6米），复式住宅的下层供起居用，炊事、进餐、洗浴等，上层供休息睡眠用，户内设多处墙式壁柜和楼梯，中间楼板也即上层地板。一层的厨房高2米，上层贮藏让高1.2米，上层直接作为卧室床面，人可坐起但无法直立。</p>','fu-gu-shi-zhuang-xiu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('5','0','联系我们','WHAT CAN WE HELP YOU WITH?','','50','/upload/images/201304/5000lianxiwomen.jpg','','','让价值共享 记录企业发展脚步','<p>如果你想拥有一份自由有趣的工作，如果你对界面设计拥有一份热情和动力，那么请与我们联系。在这里你能发现一群志同道合的年轻人，并为了实践理想而努力！</p><p>我们的团队为自己的理想奋斗，我们互补性强，分工明确，目标一致，我们艰苦奋斗，坚持不辍！因为我们坚信，一个好的理念和一个优秀的团队势必会成就一个远大的理想！<br/>&nbsp;</p><p>联系我们：<br/>售前咨询客服QQ-01：<br/>售前咨询客服QQ-02：<br/>客户售前咨询热线：<br/>客户售后服务热线：<br/>客服信箱：</p><p>&nbsp;</p><p>&nbsp;</p>','contact','archive/list_ditu.html','archive/list_page.html','0','0','archive/list_ditu.html','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','1','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('7','1','职位招聘','','','60','/upload/images/201304/7000zhiweizhaopin.jpg','','','','<p>&nbsp;易通企业网站系统是九州易通科技开发的中国首套免费提供模板的营销型企业网站管理系统，系统前台生成html、完全符合SEO、同时有在线客服、潜在客户跟踪、便捷的企业网站管理、搜索引擎推广等功能。</p><p>九州易通科技开发的核心产品易通企业网站系统(CmsEasy3.0)是充分按照SEO最佳标准来开发，营销实用性非常强企业建站系统。灵活的静态化控制，可以自定义字段，自定义模板，自定义表单，自定义URL，交叉绑定分类，地区，专题等多元化定制大大增加了企业网站的各种需求空间。强大的模板自定义可以轻松打造出个性的栏目封面，文章列表，图片列表，下载列表，分类列表，地区列表等等。</p><p>&nbsp;</p>','Recruitment','archive/list_job.html','archive/list_job.html','archive/show_job.html','0','archive/list_job.html','archive/list_job.html','archive/show_job.html','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('8','3','浪漫回忆','','','31','/upload/images/201304/3100chanpin.jpg','','','','<p>水果是指多汁且大多数有甜味可直接生吃的植物果实，不但含有丰富的营养且能够帮助消化。水果有降血压、减缓衰老、减肥瘦身、皮肤保养、 明目、抗癌、降低胆固醇补充维生素等保健作用。</p><p><br/></p><p><br/></p><p>浆果类：草莓，蓝莓，黑莓，桑葚，覆盆子，葡萄　</p><p><br/></p><p>浆果类&nbsp;(6张)</p><p><br/></p><p>柑橘类：蜜橘，砂糖橘，金橘，蜜柑，甜橙，脐橙，西柚，柚子，葡萄柚，柠檬，文旦，莱姆</p><p><br/></p><p>柑橘类&nbsp;(12张)</p><p><br/></p><p>核果类：桃（油桃，蟠桃，水蜜桃，黄桃），李子，樱桃，杏，梅子，杨梅，</p><p><br/></p><p>核果类&nbsp;(6张)</p><p>&nbsp;西梅，乌梅，大枣，沙枣，海枣，蜜枣，橄榄，荔枝，龙眼（桂圆），槟榔</p><p><br/></p><p>仁果类：苹果（红富士，红星，国光，秦冠，黄元帅），梨（砂糖梨，黄金梨，</p><p><br/></p><p>　莱阳梨，香梨，雪梨，香蕉梨），蛇果，海棠果，沙果，柿子，山竹，黑布林，<br/>　　枇杷，杨桃，山楂，圣女果，无花果，白果，罗汉果，火龙果，猕猴桃<br/>　　瓜类：西瓜，美人瓜，甜瓜，香瓜，黄河蜜，哈密瓜，木瓜，乳瓜<br/>　　其他：菠萝，芒果，栗子，椰子，奇异果，芭乐，榴莲，香蕉，甘蔗，莲子，石榴，核桃，拐枣</p><p><br/></p>','lang-man-hui-yi','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('12','3','海边街角','','','33','/upload/images/201304/3300chanpin.jpg','','','','<p>蔬菜，是指可以做菜、烹饪成为食品的一类植物或菌类，蔬菜是人们日常饮食中必不可少的食物之一，是一种绿色食品。蔬菜可提供人体所必需的多种维生素和矿物质等营养物质。据国际物质粮农组织1990年统计，人体必需的VC的90%、VA的60%来自蔬菜。此外，蔬菜中还有多种多样的植物化学物质，是人们公认的对健康有效的成分，目前果蔬中的营养素可以有效预防慢性、退行性疾病的多种物质，正在被人们研究发现。</p><p><br/></p><p>有机蔬菜：有机蔬菜是指来自于有机农业生产体系，根据国际有机农业的生产技术标准生产出来的，经独立的有机食品认证机构认证允许使用有机食品标志的蔬菜。有机蔬菜在整个的生产过程中都必须按照有机农业的生产方式进行，也就是在整个生产过程中必须严格遵循有机食品的生产技术标准，即生产过程中完全不使用农药、化肥、生长调节剂等化学物质，不使用基因工程技术，同时还必须经过独立的有机食品认证机构全过程的质量控制和审查。所以有机蔬菜的生产必须按照有机食品的生产环境质量要求和生产技术规范来生产，以保证它的无污染、低能耗和高质量的特点。</p><p><br/></p><p><br/></p><p><br/></p><p>绿色蔬菜：按照绿色食品的概念，绿色蔬菜是指遵循可持续发展的原则，在产地生态环境良好的前提下，按照特定的质量标准体系生产，并经专门机构认定，允许使用绿色食品标志的无污染的安全、优质、营养类蔬菜的总称。</p><p><br/></p><p>无公害蔬菜：所谓无公害蔬菜是指蔬菜中有害物质（如农药残留、重金属、亚硝酸盐等）的含量，控制在国家规定的允许范围内，人们食用后对人体健康不造成危害的蔬菜。指产地生态环境清洁，按照特定的技术操作规程生产，将有害物含量控制在规定标准内，并由授权部门审定批准，允许使用无公害标志的食品。适合我国当前的农业生产发展水平和国内消费者的需求，对于多数生产者来说，达到这一要求不是很难。当代农产品生产需要由普通农产品发展到无公害农产品，再发展至绿色食品或有机食品，绿色食品跨接在无公害食品和有机食品之间，无公害食品是绿色食品发展的初级阶段，有机食品是质量更高的绿色食品。</p><p><br/></p>','hai-bian-jie-jiao','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('10','3','爱琴海','','','32','/upload/images/201304/3200chanpin.jpg','','','','<p>谷物”涵盖的范围较广，包括大米、小麦、小米、大豆等及其它杂粮。谷类包括大米、小麦、小米、大豆等，主要是植物种子和果实。是许多亚洲人民的传统主食。</p><p><br/></p><p>“五谷”这一名词的最早记录，见于《论语》。根据《论语》的记载：二千四百多年以前，孔子带着学生出门远行，子路掉队在后面，遇见一位用杖挑着竹筐的老农，问他：“你看见夫子吗？”老农说：“四肢不劳动，五谷分不清，谁是夫子？” 在此前的《诗经》、《尚书》之中，只有“百谷”，而无“五谷”的提法。但对五谷究竟指哪五种作物，则出现在汉朝时的著作。</p><p>谷类主要是指禾本科植物的种子。五谷主要包括稻米、小麦、大豆等及其他杂粮，比如小米、黑米、荞麦、燕麦、薏仁米、高粱等。谷物通过加工为主食，为人类提供了50%~80%的热能、40%~70%的蛋白质、60%以上的维生素B1。谷类可因种类、品种、产地、生长条件和加工方法的不同，其营养素的含量有很大的差别。</p><p>谷类作为中国人的传统饮食，几千年来一直是老百姓餐桌上不可缺少的食物之一，在我国的膳食中占有重要的地位，被当作传统的主食。</p><p><br/></p>','ai-qin-hai','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('11','9','iPhone','','','0','','','','','','iPhone','archive/list_pic.html','archive/list_pic.html','archive/show_products.html','0','','','','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('13','2','新娘故事','','','21','/upload/images/201608/14703796927623.png','','','','<p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">新婚夫妇的妻子被称为新娘。结婚前的女生称为女孩，结婚后称为女人，而结婚这一天是第一次的改变，故称为“新”。“娘”是古人传下来的</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">具体点：特定的时间，穿上特定的衣服---婚纱便成了新娘，　北方人以\"老\"为尊为敬，岭南人则以\"少\"为荣为谀，所以，北方人有\"老大爷\"之类敬称，岭南人对最年迈的男人也只以\"老伯\"相呼，称年长的一般就是\"大哥\"、\"阿叔\"了。但是，年纪轻轻的夫妇也互以\"老婆\"、\"老公\"向人介绍对方而不怕人肉麻；称父母则叫\"老爸\"、\"老娘\"（\"娘亲\"）：\"老\"在这种场合，表示亲昵。　由\"老娘\"之称，我忽然对相对应的\"新娘\"一词产生了一种感悟：对于一个男人来说，结婚不正是意味着他的保护人（监护人、看护人），由一个女人传棒给了一个新的女人吗？</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">\"新娘\"就是他新的\"娘\"！　曾有一种胃药的广告词，深情款款地叙说\"其实，男人最需要关怀\"，好像只有男人才得胃炎和胃溃疡。这样说，是有一定道理的：男人比较任性，好抽烟好喝酒；男人在\"外面\"闯的时候多，作息没有规律，饥一顿饱一顿的。其实，除了传统的\"男主外女主内\"的家庭分工模式之外，男人的天性就没有女人细致周到温柔体贴，男人即使不受大男子主义影响也更多地需要女人关照。男孩长大的过程中，到了一定年龄就想摆脱家长的监护，以显示自己的独立性。可是，在离开老娘的照料之后，到结婚成家娶了\"新娘\"之前，这一段时间（主要是寄宿学校及参加工作之后的几年里），有几个男生的生活不是乱七八糟，住处像狗窝，吃饭穷凑合？女生通常就把自己照料得清爽多了。　古人造字，家里有\"女\"叫\"安\"，这个\"女\"当然不是女仆之类，而是女主人，从\"老娘\"主事到有\"新娘\"持家，一个男人就算自立门户了。　我这种解说，一些\"新新人类\"会觉得十分背时。他（她）们不相信婚姻不相信家庭的价值，只找性伴侣，最多就是同居，除了性关系谁也不需要谁，谁也不在乎谁。这样的话，就无所谓新娘、老娘了。　然而，可以肯定的是，人类社会至少在近50年内还是需要有家庭的，大多数人也会选择婚姻。按照弗洛依德的心理学说，男人往往有\"恋母情结\"，他在茫茫人海里寻找\"新娘\"，找来找去会找到他\"老娘\"的影子。看看韩剧《我的野蛮女友》和韩国小说《菊花香》，它们张扬女权可谓不遗余力；</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">可笑的是，它们的男主人公，受惯了老娘的呵斥，竟一定要娶个女强人做新娘，甘愿听候差遣为之效劳。这固然是作者颠倒现实中男尊女卑关系的幻想，但表现男人对女人的精神依恋以及老娘与新娘的传棒关系，则是颇有意味而不悖情理的。　我对\"新娘\"一词作这样的解释，当然只是一家之言。\"娘\"的本义是少女。《玉篇·女部》说：\"娘，少女之号。\"所以，《牡丹亭》中的女主角叫\"杜丽娘\"；杜甫写的那个\"一舞剑器动四方\"的年轻艺人叫\"公孙大娘\"。我们仍叫女孩为\"姑娘\"。\"娘\"还有一个义项是妇女的通称，如厨娘、渔娘等等。在这两个意义上，\"新娘\"可以表达一个女人人生新阶段的开始。它和\"娘\"字表已婚的含义是相通的。除了表惊叹和詈骂，如今单个\"娘\"字的一般含义是指母亲。</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">作为\"老娘\"的对应词，说\"新娘\"是成婚男人的新看护人，实在是顺理成章的。　清新新娘如何制造？ 大喜之日的新嫁娘，该如何化妆？其实你不必画出一张夸张的面孔，只需要维持你平日最自然、最真实的面貌，并且增添一些暖色调即可。以下提供一些秘诀，让你成为最美丽的新娘，拍照时也留下最佳倩影。 拍照与录像的要领　请记住，千万不要为了上镜头而浓妆艳抹。虽然的确应该比平日浓妆些，但若想维持自然的风格，只需要将同样色调的演影多涂几层，以增加眼睛的深度与轮廓。色彩必须要抹匀些，如此在相片中才显得自然。</span></p><p><br/></p>','Enterprise_News','archive/list_text.html','archive/list_text.html','0','0','archive/list_text.html','archive/list_text.html','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('14','2','新浪故事','','','22','/upload/images/201608/14703796830155.png','','','','<p>新郎一词专指对于确立婚姻关系的男女在结婚仪式中的男方的称呼，又称新郎官。在结婚时，新郎一般会穿上专门的礼服，经过仪式或法律程序后就成为女方的丈夫。也指新婚的男子。 最早出现在唐代，表示考试登第的才子</p><p><br/></p><p></p><p>民间对新婚男士的称呼, 新婚的男子与新娘相对应。关于新郎有以下传说：很久以前，在和平有个新家村。村里有一位年轻的后生，他饱读诗书，聪明过人，性格开朗，人缘极好，名叫“新朗”。他勤于耕种，不求功名，如今已年过二十，尚未成家，一心想找位志趣相投的女子为伴。</p><p>登门提亲的人很多，都不在他的眼里，全都被他谢绝。</p><p>距新家村不远处有条小河叫“星溪”，溪畔村里有一位如花似玉的姑娘叫“星娘”。星娘芳龄二八，聪明贤惠。新朗对星娘的聪慧早有所闻，心里虽生爱慕之情，苦于无法接近。在众人鼓励下，他大胆地请媒人前往提亲。</p><p>媒人受新家之托，来到星娘家说明来意。星娘对新朗的聪明才智，早就了解得一清二楚。本想一口答应，但为了考考他的真才实学，便对媒人说：“要我答应这门亲事并不难，只是有个条件。“条件？”媒人说，“姑娘请讲吧，我一定转告。”</p><p>姑娘笑了笑说：“这条件并不高，只要准备一间新房就行。”媒人一听这么简单的事好办。星娘又说：“这个新房与众不同，请婆婆仔细听好——不用门来不用窗，无柱无瓦无上梁，上上下下不见土，四面八方石头墙。”媒婆听了觉得奇怪，“哪有这样的房子？”</p><p>姑娘说：“你回去对新朗说，如能照此办到，三天后我与他成亲。若办不到，叫他死了这条心吧！”</p><p>媒人心想，这算什么条件，分明是不愿意，才故意出难题。她晦气地回去将条件对新朗一说，劝他另选人家好了。不料新朗听后却哈哈大笑，说：“这新房容易办到，两天之后请你来看新房子。”</p><p>到了第二天，媒人来到新朗家。新朗带她到屋后那座向阳的山坡上，指着一个大山洞，“那就是我准备的新房。”说罢，领着媒人走进山洞一看，一张石床摆中央，罗帐锦被铺满床，无柱无梁，无门无窗，四周皆石墙。媒人见了赞不绝口，说：“好房！正符合星娘要的‘别有洞天’的新洞房。”这时媒人才恍然大悟，原来星娘在考新朗呀！</p><p>次日，新朗和星娘在此“洞房”拜了天地成了亲，夫妻恩爱，白头到老，传为佳话。</p><p>从此，人们把结婚的新房称“洞房”。“洞房”一词的来历传说源出于此。</p><p>朗与郎、星与新皆系谐音，故此民间称新结婚的男女为“新郎”、“新娘”。沿袭至今没有改变。</p><p><br/></p><p><br/></p>','News_Information','archive/list_text_pic.html','archive/list_text_pic.html','0','0','archive/list_text_pic.html','archive/list_text_pic.html','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('15','2','新闻动态','','','23','/upload/images/201304/2300hangyexinwen.jpg','','','','<p>&nbsp;对于营销型企业网站，最重要的是和客户的及时沟通以及回访，CmsEasy易通免费企业网站系统这点做的非常完美，从订单到客户留言，到web直接咨询都可以给您和您的客户带来极为方便的沟通方式。客户可以选择web对话、短信、留言一系列方式进行沟通。</p>','Industry_News','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('23','22','售前咨询','','','0','','','','','<p>&nbsp;易通企业网站系统是九州易通科技开发的中国首套免费提供模板的营销型企业网站管理系统，系统前台生成html、完全符合SEO、同时有在线客服、潜在客户跟踪、便捷的企业网站管理、搜索引擎推广等功能。</p>','shou-qian-zi-xun','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('24','22','送货流程','','','0','','','','','<p>&nbsp;九州易通科技开发的核心产品易通企业网站系统(CmsEasy3.0)是充分按照SEO最佳标准来开发，营销实用性非常强企业建站系统。灵活的静态化控制，可以自定义字段，自定义模板，自定义表单，自定义URL，交叉绑定分类，地区，专题等多元化定制大大增加了企业网站的各种需求空间。强大的模板自定义可以轻松打造出个性的栏目封面，文章列表，图片列表，下载列表，分类列表，地区列表等等。</p>','song-huo-liu-cheng','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('25','22','安装服务','','','0','','','','','<p>&nbsp;CMSEasy根据当前广为流行的敏捷开发方式，实现了基于ROR模型框架，能够快速高效的完成各种应用的开发和扩展。</p>\r\n<p>&nbsp;</p>','an-zhuang-fu-wu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('26','22','售后服务','','','0','','','','','<p>&nbsp;CmsEasy易通免费企业网站系统自带国内企业CMS首创的推广链模块，通过推广链接让客户和生意自己找上门！这点是CmsEasy易通免费企业网站系统独有的优势和长处，在这里推荐各位企业建站用户体验下。</p>\r\n<div>&nbsp;</div>','shou-hou-fu-wu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('66','0','我们的优势','HAS BEEN FULL OF ENTHUSIASM TO MEET UNDERSTAND DESIGN YOU!','','0','','','','有活力、有梦想、有品位、有创意，与一般团队有独特区别的年轻队伍','<p>&nbsp; &nbsp; 婚纱摄影是由一群热爱摄影并具有多年行业经验的有活力、时尚的年轻人组成。摄影以专业从事影视行业的连锁经营发展道路观，历经多年耕耘，步履扎实，稳健发展，在中国信息行业具有较强的影响力，是国内领先的婚纱照精品行销连锁。</p><p><br/></p><p style=\"text-align: center;\"><img src=\"/upload/images/201608/14708140539872.jpg\" title=\"14708140539872.jpg\" alt=\"QQ截图20160810145846.jpg\"/></p>','wo-men-de-you-shi','archive/list_page.html','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('67','66','视觉效果','','','0','','','','','<p>视觉效果，是新人在选择时最重要的一点。通过视觉效果，新人判断自己喜欢的照片类型，以及选择拍摄的场景、服装等。<br/><br/>在拍摄风格方面，影楼吸收了全国各地的创作理念，在创作方面更具有权威性。影楼的摄影师、造型师的经验非常丰富，他们通过对以往拍摄过人物及作品的总结，知道在什么角度、摆什么姿势拍出来的人效果会比较好看，以此方式对新人进行指导，可以更轻松地获得让新人满意的漂亮照片。<br/><br/>后期处理也是影响照片视觉效果的另一重要因素。通过对照片的不同处理，营造出不一样的环境氛围。影楼发布一套新的产品样片，需要注入大量的人力和物力，以及多方意见的融合、修改，才会最终呈现在新人面前。所以，当新人选择拍摄一套有主题时，虽然在服装和风格上可能和别人有些共同之处，但是此套片子确实工作人员的心血所成，堪称经典，经典也是不断被复制的过程。</p>','shi-jue-xiao-guo','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('68','66','服装造型','','','0','','','','','<p>影楼资金实力比较雄厚，所以服装款式品种会很多，更新速度块，比较高端，很多新人会因为影楼的服装被吸引。在影楼的橱窗展示区，常常可以看见璀璨夺目、做工精致的华服，吸引着过路的行人，让人不仅憧憬穿上它顿时大放光彩的画面。婚纱影楼的婚纱礼服品牌十分多样化，一件高档的品牌礼服价值上万元，中档的品牌礼服也要在三至六千元不等。影楼的礼服更新快，款式多，新人可以根据所好，不同选择。<br/><br/>有些资金实力雄厚的影楼，还会引进国外有名的婚纱品牌，或者和知名设计师合作，为影楼的主题系列设计服装，增加了新人在影楼在拍照的趣味性。同时，新人在拍照的过程中，如果有非常喜欢的婚纱礼服想在婚礼当天穿着，影楼可以为新人婚礼提供租赁服务，非常便捷。现在更有影楼，也可以为新人提供定制服务。</p>','fu-zhuang-zao-xing','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('69','66','室内棚景','','','0','','','','','<p>华丽的室内棚景，是影楼非常大的一个优势。唯美、逼真的建筑，四季皆宜的温度，创造美好影响的同时也可以获得较为舒适的感受。<br/><br/>影楼会投入大量的资金在打造豪华、逼真、唯美的实景上。实景棚的优势在于，场景的多元化，能让顾客实现消费的最大价值，同时也能满足心理上的高档次享受。由于实景棚的价格不菲，能经营的一般是具有较强能力的影楼，提供的服务也是星级水准的。实景棚的最大优势是让顾客体现他的消费价值。是一种高贵典雅的艺术享受。<br/><br/>同时，在室内进行拍摄，对光线的控制更容易把握，也不受天气情况的限制。通过灯光师的设计，可以让人物和环境都最大程度地展现光彩。现今高超的技术还可以将摄影跟人造景观通过多种艺术手段来有机结合，产生极具艺术感染力的画面效果。精致的造型和服装也是影楼无可比拟的优势</p>','shi-nei-peng-jing','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('70','66','外景基地','','','0','','','','','<p>与一些酒店或者景点建立合作关系，满足不同地域文化顾客的需求，让新人拍摄过程中忘掉城市的平庸与忙碌，拥有一段值得回味的属于自己的独特的婚纱拍摄旅程。<br/><br/>越来越多的新人开始不满于在城郊周边取景，开始把目光转向著名的旅游景点，别具特色的建筑物，都有可能成为新人拍照的胜地。影楼因为本身的品牌和实力做保证，更容易和高端的外景地达成合作，提供给新人更多更广泛的选择。<br/><br/>现在婚纱摄影也推出蜜月旅行+主题拍摄的创意模式，让新人在享受蜜月的同时，拥有对甜蜜生活最真实的记录，打破了传统的拍照模式，在创造和景色相结合的大片之外，还可以留下记录生活点滴的照片，是非常自由、有意思的模式。</p>','wai-jing-ji-di','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('57','56','商业授权','','','0','','','','','','shang-ye-shou-quan','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('58','56','建站套餐','','','0','','','','','','jian-zhan-tao-can','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('59','56','模板定制','','','0','','','','','','mo-ban-ding-zhi','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('80','76','店面装修','','','0','','','','','<p>网店的店铺装修与实体店的装修是一个意思，都是让店铺变的更美，更吸引人。甚至对于网店来讲，一个好的店铺设计更为至关重要，因为咱们的客户只能从网上的文字和图片来了解我们，了解产品，所以做得好能增加用户的信任感，甚至还能对自己店铺品牌的树立起到关键作用。　“普通店铺”结构很固定，只能做一小点装饰，功能性不强。而“旺铺”自由度非常大，功能也很强，关键就看你自己的创意和技术了，一般大家装修，一是自己会做平面设计，会编网页程序的，自己来设计，或者为了让店铺更专业漂亮，请专业人员来设计。有的加入声音装修，去魅力造音录制自己的有声店铺宣传等等，最好自己是一个专业网页设计师。一般，店铺装修是最让掌柜们头疼的事情，是不是专业店铺，看装修就能分辨。</p>','dian-mian-zhuang-xiu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('40','39','初步洽谈','','','0','','','','','','chu-bu-qia-tan','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('41','39','设计意向','','','0','','','','','','she-ji-yi-xiang','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('42','39','签订协议','','','0','','','','','','qian-ding-xie-yi','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('43','39','设计阶段','','','0','','','','','','she-ji-jie-duan','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('44','39','预算阶段','','','0','','','','','','yu-suan-jie-duan','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('45','39','签订施工合同','','','0','','','','','','qian-ding-shi-gong-he-tong','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('46','39','选购主材','','','0','','','','','','xuan-gou-zhu-cai','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('47','39','施工现场确认','','','0','','','','','','shi-gong-xian-chang-que-ren','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('48','39','完工','','','0','','','','','','wan-gong','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('49','39','软装配饰服务','','','0','','','','','','ruan-zhuang-pei-shi-fu-wu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('53','50','完成项目展示','','','0','','','','','','wan-cheng-xiang-mu-zhan-shi','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('54','50','预约参观','','','0','','','','','','yu-yue-can-guan','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('60','1','公司实景','','','0','/upload/images/201608/14701255480562.jpg','','','','<div style=\"white-space: normal;\"><p><img src=\"/upload/images/201608/14708128388580.jpg\" style=\"\" title=\"14708128388580.jpg\"/></p><p><img src=\"/upload/images/201608/14708128388308.jpg\" style=\"\" title=\"14708128388308.jpg\"/></p></div><p><br/></p>','gong-si-shi-jing','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('62','1','我们的团队','LET SHARE VALUE RECORD ENTERPRISE DEVELOPMENT STEPS','','0','','','','让价值共享 记录企业发展脚步','<div style=\"white-space: normal; text-align: center;\"><img src=\"/upload/images/201608/14708133905712.jpg\" title=\"14708133905712.jpg\" alt=\"2015o.jpg\"/></div><p><br/></p>','wo-men-de-jiao-shi','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('64','63','我们的服务','','','0','','','','','','wo-men-de-fu-wu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('78','76','别墅装修','','','0','','','','','<p>别墅装修，是一种以别墅为主题参与设计装饰的当代新生活设计理念。别墅，象征着是有身份的人的居家住宅理念。它相较于一般的居家住宅，不仅在于“大”，还在于是否与之相适应的“环境、配套”的特殊性。因而，别墅装修设计不仅仅是对别墅室内空间的合理规划，还要对室内外环境的结合做一个整体的思考和设计，从而达成一个内外兼修的和谐人居环境。</p><p>别墅装修突出的特点在于，他能体现一个人生活水平和艺术涵养，别墅装修是近年来突起的家装设计领域，他是家装与艺术的结合体，也是室内装饰细化的突出点之一。</p><p><br/></p>','bie-shu-zhuang-xiu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');
INSERT INTO `cmseasy_b_category` VALUES('77','76','家庭装修','','','0','','','','','<p>家庭装修是把生活的各种情形“物化”到房间之中，买的一般房间的设计业已完成，不能做大的调整了，所以剩下可以动的就是装修装点（大的装修概念包括房间设计、装修、家具布置、富有情趣的小装点）。因为生活是自己的，所以自己必须亲自介入到装修过程中，不仅在装修设计施工期间，还包括住进去之后的长期的不断改进。是件浩大而琐碎的工程，无论是大到地板、家具的定制还是几颗镙丝钉的购买，办理开工手续到组织水电、木工等多个工种的协调工作，都需要业主用智慧去整合。</p>','jia-ting-zhuang-xiu','0','0','0','0','0','0','0','','','','article','1','0','0','1','1','0','','','','','','0','0','0','1','0','');

INSERT INTO `cmseasy_b_special` VALUES('1','2周年纪念，感恩大促销活动！','','/upload/images/201304/special01.jpg','<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: rgb(255, 0, 0); \"><strong>让您的产品，在互联网上普通盖地！</strong></span></p>\r\n<p><span style=\"color: rgb(0, 0, 255); \">想让更多的客户找到您吗？</span></p>\r\n<p><strong>易通企业网站系统独创企业推广链联盟系统</strong></p>\r\n<p>通过推广链接，让客户和生意自己找上门！</p>\r\n<p>为您的企业营销助力，伴您轻松成功！</p>\r\n<p>易通企业网站系统让您客源不断、生意兴隆！</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>活动一：年授权仅需100元！</p>\r\n<p>活动二：年费授权+1GB空间仅需200元！</p>\r\n<p>活动三：年费版授权+COM域名+1GB空间仅需258元！</p>\r\n<p>活动四：终身版授权+COM域名+1GB空间仅需358元！</p>\r\n<p>活动五：服务版授权+COM域名+1GB空间仅需558元！</p>\r\n<p>增值服务：单独增加一年咨询服务仅需200元！</p>\r\n<p>所有CmsEasy均免费附赠企业客服程序！</p>\r\n<p>赠送空间为国内1GB或香港500MB！</p>\r\n<p>&nbsp;</p>','','0','0','0','0','0');
INSERT INTO `cmseasy_b_special` VALUES('2','庆典六周年，全场低至200元','','','<ul style=\"padding: 0px; color: rgb(85, 85, 85); font-family: 微软雅黑; font-size: 12.48px; line-height: 18.72px; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>值此纪念公司成立六周年之际，九州易通科技有限公司为答谢广大用户的支持，特此推出本年度最大型的优惠盛宴。</p></li><li><p>本次活动将集结易通企业系统的各个类别的商品，包括商业授权、商业模板、企业主机等大类。</p></li><li><p>三百余套精美企业<a href=\"http://www.cmseasy.cnhttp//www.cmseasy.cn/business_templates/\" target=\"_blank\" style=\"text-decoration: none; color: rgb(85, 85, 85);\">网站模板</a>供您选择，每套售价仅<strong style=\"color: red; font-size: 20px;\">200元</strong>人民币！！!</p></li><div class=\"blank50\" style=\"clear: both; height: 50px; overflow: hidden;\"></div><li><p><strong>郑重宣布：</strong></p></li><div class=\"blank20\" style=\"clear: both; height: 20px; overflow: hidden;\"></div><li><p>所有CmsEasy系统均免费附赠企业推广模块！</p></li><li><p>所有CmsEasy系统均免费附赠企业WEB客服程序！</p></li><li><p>所有CmsEasy系统均免费附赠支付宝，财付通，贝宝支付模块！</p></li><li><p>所有CmsEasy系统均免费附赠微信公共号推送模块！</p></li><li><p>所有CmsEasy系统均免费升级微信支付，快钱支付模块！</p></li></ul><p><br/></p>','special/show.html','0','0','0','0','0');
INSERT INTO `cmseasy_b_special` VALUES('3','五周年庆感恩促销优惠活动进行中','','','<p>值此纪念公司成立5周年之际，九州易通科技有限公司为答谢广大用户的支持，特此推出本年度最大型的网购盛宴，本次活动将集结易通企业系统的各个类别的商品，包括商业授权、商业模板、企业主机等大类。</p><p>&nbsp;</p><p>郑重宣布所有CmsEasy系统均免费附赠企业WEB客服程序！</p><p>建站套餐：</p><p>终身版授权+一套商业模板+1GB空间仅需600元！</p><p>终身版授权+一套商业模板+COM域名+1GB空间仅需655元！</p><p>终身版授权+一套商业模板+1GB空间+人工客服咨询仅需1500元！</p><p>终身版版+COM域名+1GB空间+一套商业模板+人工客服咨询仅需1555元！</p><p>&nbsp;</p><p>客户须知：</p><p>&nbsp;</p><p>空间为国内双线和香港免备案任选。</p><p>海外空间，无须备案。不必象在工信部等待冗长的人工开设备案审核.</p><p>注意：禁止放置色情、政治、赌博、小说、淘宝客或含采集功能等</p><p>套餐中的空间赠送一年，第二年续费只需200元</p><p>套餐中的费用不含发票，如需开具发票，需加8%税点和15元快递费。</p><p><br/></p>','special/show.html','0','0','0','0','0');

INSERT INTO `cmseasy_b_tag` VALUES('1','tag测试1');

INSERT INTO `cmseasy_ballot` VALUES('1','网站为什么要改版？','checkbox','3','0');


INSERT INTO `cmseasy_bbs_category` VALUES('1','0','1','默认栏目','','','0','0');

INSERT INTO `cmseasy_bbs_label` VALUES('1','0','普通');
INSERT INTO `cmseasy_bbs_label` VALUES('2','0','求助');
INSERT INTO `cmseasy_bbs_label` VALUES('3','0','询问');

INSERT INTO `cmseasy_bbs_reply` VALUES('1','1','0','0','','0','<p>第一条回复！</p>','1324031541','0','0','127.0.0.1');
INSERT INTO `cmseasy_bbs_reply` VALUES('2','1','0','1','','0','第二条回复','1324031609','0','0','127.0.0.1');




INSERT INTO `cmseasy_event` VALUES('2982','1','admin','127.0.0.1','1472999941','日志清除','成功');

INSERT INTO `cmseasy_friendlink` VALUES('1','2','0','易通免费企业CMS','0','http://www.cmseasy.cn','http://www.cmseasy.cn/logo.gif','','0','cmseasy','2009-11-12 13:14:37','0','1');
INSERT INTO `cmseasy_friendlink` VALUES('2','1','0','CmsEasy论坛','0','http://www.cmseasy.org','','','0','cmseasy','2009-11-12 13:15:00','2','1');
INSERT INTO `cmseasy_friendlink` VALUES('3','1','0','九州易通科技有限公司','0','http://www.cmseasy.net','','','0','cmseasy','2009-11-12 13:28:53','2','1');




INSERT INTO `cmseasy_my_yingpin` VALUES('1','0','','0','2011-11-11 16:11:04','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('2','0','','0','2011-11-11 16:11:13','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('3','0','','0','2011-11-11 16:11:49','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('4','0','','0','2011-11-11 16:12:12','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','3','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('5','0','','0','2011-11-11 16:12:41','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('6','0','','0','2011-11-11 16:13:47','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','2011-11-11 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('7','0','','0','2011-11-11 16:15:05','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','2011-11-11 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');
INSERT INTO `cmseasy_my_yingpin` VALUES('8','0','','0','2011-11-12 11:33:07','0','1','0','127.0.0.1','a','1','a','a','a','a','a','1','a','a','0000-00-00 00:00:00','a','1','1','a','a','a','a','a','a','a','a','a');

INSERT INTO `cmseasy_operators` VALUES('1','admin','21232f297a57a5a743894a0e4a801fc3','CmsEasyLive','CElive','admin@cmseasy.cn','0','0','0');

INSERT INTO `cmseasy_option` VALUES('1','1','增强用户体验','1','0');
INSERT INTO `cmseasy_option` VALUES('2','1','结构更加合理','1','0');
INSERT INTO `cmseasy_option` VALUES('3','1','新产品新思路的融入','1','0');
INSERT INTO `cmseasy_option` VALUES('4','1','解觉存在的BUG','0','0');
INSERT INTO `cmseasy_option` VALUES('5','1','增加网民新鲜感','0','0');






INSERT INTO `cmseasy_sessionox` VALUES('2bfvk755j14j8sf3sbhvl6obp5','1454491306','127.0.0.1','gtserver|i:1;verify|N;roles|a:174:{s:6:\"config\";s:1:\"1\";s:10:\"sitesystem\";s:1:\"1\";s:6:\"system\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:15:\"setting_archive\";s:1:\"1\";s:3:\"sms\";s:1:\"1\";s:7:\"website\";s:1:\"1\";s:12:\"website_list\";s:1:\"1\";s:11:\"website_add\";s:1:\"1\";s:12:\"website_edit\";s:1:\"1\";s:11:\"website_del\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:4:\"user\";s:1:\"1\";s:11:\"user_manage\";s:1:\"1\";s:9:\"user_list\";s:1:\"1\";s:8:\"user_add\";s:1:\"1\";s:9:\"user_edit\";s:1:\"1\";s:8:\"user_del\";s:1:\"1\";s:11:\"user_ologin\";s:1:\"1\";s:10:\"user_group\";s:1:\"1\";s:14:\"usergroup_list\";s:1:\"1\";s:13:\"usergroup_add\";s:1:\"1\";s:14:\"usergroup_edit\";s:1:\"1\";s:13:\"usergroup_del\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:16:\"func_book_pllist\";s:1:\"1\";s:16:\"func_book_pledit\";s:1:\"1\";s:15:\"func_book_pldel\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:9:\"func_data\";s:1:\"1\";s:15:\"func_data_baker\";s:1:\"1\";s:17:\"func_data_restore\";s:1:\"1\";s:16:\"func_data_phpweb\";s:1:\"1\";s:17:\"func_data_replace\";s:1:\"1\";s:19:\"func_data_adminlogs\";s:1:\"1\";s:14:\"func_data_safe\";s:1:\"1\";s:8:\"template\";s:1:\"1\";s:15:\"template_manage\";s:1:\"1\";s:12:\"template_set\";s:1:\"1\";s:13:\"template_note\";s:1:\"1\";s:13:\"template_edit\";s:1:\"1\";s:15:\"templatetag_add\";s:1:\"1\";s:23:\"templatetag_add_content\";s:1:\"1\";s:24:\"templatetag_add_category\";s:1:\"1\";s:22:\"templatetag_add_define\";s:1:\"1\";s:16:\"templatetag_list\";s:1:\"1\";s:25:\"templatetag_list_function\";s:1:\"1\";s:23:\"templatetag_list_system\";s:1:\"1\";s:24:\"templatetag_list_content\";s:1:\"1\";s:25:\"templatetag_list_category\";s:1:\"1\";s:23:\"templatetag_list_define\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:17:\"seo_status_spider\";s:1:\"1\";s:15:\"seo_status_cnzz\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:7:\"defined\";s:1:\"1\";s:13:\"defined_field\";s:1:\"1\";s:21:\"defined_field_content\";s:1:\"1\";s:25:\"defined_field_content_add\";s:1:\"1\";s:26:\"defined_field_content_edit\";s:1:\"1\";s:25:\"defined_field_content_del\";s:1:\"1\";s:18:\"defined_field_user\";s:1:\"1\";s:22:\"defined_field_user_add\";s:1:\"1\";s:23:\"defined_field_user_edit\";s:1:\"1\";s:22:\"defined_field_user_del\";s:1:\"1\";s:12:\"defined_form\";s:1:\"1\";s:17:\"defined_form_list\";s:1:\"1\";s:16:\"defined_form_add\";s:1:\"1\";s:17:\"defined_form_edit\";s:1:\"1\";s:16:\"defined_form_del\";s:1:\"1\";s:6:\"celive\";s:1:\"1\";s:13:\"celive_system\";s:1:\"1\";s:14:\"celive_enlarge\";s:1:\"1\";s:17:\"celive_systeminfo\";s:1:\"1\";s:18:\"celive_departments\";s:1:\"1\";s:16:\"celive_operators\";s:1:\"1\";s:14:\"celive_assigns\";s:1:\"1\";s:13:\"celive_center\";s:1:\"1\";s:14:\"celive_monitor\";s:1:\"1\";s:15:\"celive_chatlist\";s:1:\"1\";s:11:\"celive_book\";s:1:\"1\";s:11:\"celive_user\";s:1:\"1\";s:11:\"celive_edit\";s:1:\"1\";s:11:\"celive_code\";s:1:\"1\";s:3:\"bbs\";s:1:\"1\";s:12:\"bbs_category\";s:1:\"1\";s:17:\"bbs_category_list\";s:13:\"category_list\";s:16:\"bbs_category_add\";s:12:\"category_add\";s:17:\"bbs_category_edit\";s:13:\"category_edit\";s:16:\"bbs_category_del\";s:12:\"category_del\";s:11:\"bbs_archive\";s:1:\"1\";s:16:\"bbs_archive_list\";s:1:\"1\";s:16:\"bbs_archive_edit\";s:1:\"1\";s:15:\"bbs_archive_del\";s:1:\"1\";s:17:\"bbs_archive_check\";s:1:\"1\";s:18:\"bbs_archive_batdel\";s:1:\"1\";}username|s:5:\"admin\";cel_username|s:5:\"admin\";cel_password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";cel_operatorid|s:1:\"1\";cel_activeid|i:153;cel_departmentid|i:0;cel_sound|s:1:\"1\";act|s:4:\"list\";modname|s:6:\"内容\";table|s:7:\"archive\";actname|s:12:\"审核内容\";set|s:8:\"template\";tagfrom|s:8:\"category\";SESSION_KEYuser_add|s:32:\"c30a0b7b0257549b9d80e4c6ffc8e121\";mod|s:7:\"content\";');
INSERT INTO `cmseasy_sessionox` VALUES('m4h4vjnb45jgqf1442h7nouf03','1454491559','127.0.0.1','username|s:5:\"admin\";gtserver|i:1;verify|N;roles|a:174:{s:6:\"config\";s:1:\"1\";s:10:\"sitesystem\";s:1:\"1\";s:6:\"system\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:15:\"setting_archive\";s:1:\"1\";s:3:\"sms\";s:1:\"1\";s:7:\"website\";s:1:\"1\";s:12:\"website_list\";s:1:\"1\";s:11:\"website_add\";s:1:\"1\";s:12:\"website_edit\";s:1:\"1\";s:11:\"website_del\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:4:\"user\";s:1:\"1\";s:11:\"user_manage\";s:1:\"1\";s:9:\"user_list\";s:1:\"1\";s:8:\"user_add\";s:1:\"1\";s:9:\"user_edit\";s:1:\"1\";s:8:\"user_del\";s:1:\"1\";s:11:\"user_ologin\";s:1:\"1\";s:10:\"user_group\";s:1:\"1\";s:14:\"usergroup_list\";s:1:\"1\";s:13:\"usergroup_add\";s:1:\"1\";s:14:\"usergroup_edit\";s:1:\"1\";s:13:\"usergroup_del\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:16:\"func_book_pllist\";s:1:\"1\";s:16:\"func_book_pledit\";s:1:\"1\";s:15:\"func_book_pldel\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:9:\"func_data\";s:1:\"1\";s:15:\"func_data_baker\";s:1:\"1\";s:17:\"func_data_restore\";s:1:\"1\";s:16:\"func_data_phpweb\";s:1:\"1\";s:17:\"func_data_replace\";s:1:\"1\";s:19:\"func_data_adminlogs\";s:1:\"1\";s:14:\"func_data_safe\";s:1:\"1\";s:8:\"template\";s:1:\"1\";s:15:\"template_manage\";s:1:\"1\";s:12:\"template_set\";s:1:\"1\";s:13:\"template_note\";s:1:\"1\";s:13:\"template_edit\";s:1:\"1\";s:15:\"templatetag_add\";s:1:\"1\";s:23:\"templatetag_add_content\";s:1:\"1\";s:24:\"templatetag_add_category\";s:1:\"1\";s:22:\"templatetag_add_define\";s:1:\"1\";s:16:\"templatetag_list\";s:1:\"1\";s:25:\"templatetag_list_function\";s:1:\"1\";s:23:\"templatetag_list_system\";s:1:\"1\";s:24:\"templatetag_list_content\";s:1:\"1\";s:25:\"templatetag_list_category\";s:1:\"1\";s:23:\"templatetag_list_define\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:17:\"seo_status_spider\";s:1:\"1\";s:15:\"seo_status_cnzz\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:7:\"defined\";s:1:\"1\";s:13:\"defined_field\";s:1:\"1\";s:21:\"defined_field_content\";s:1:\"1\";s:25:\"defined_field_content_add\";s:1:\"1\";s:26:\"defined_field_content_edit\";s:1:\"1\";s:25:\"defined_field_content_del\";s:1:\"1\";s:18:\"defined_field_user\";s:1:\"1\";s:22:\"defined_field_user_add\";s:1:\"1\";s:23:\"defined_field_user_edit\";s:1:\"1\";s:22:\"defined_field_user_del\";s:1:\"1\";s:12:\"defined_form\";s:1:\"1\";s:17:\"defined_form_list\";s:1:\"1\";s:16:\"defined_form_add\";s:1:\"1\";s:17:\"defined_form_edit\";s:1:\"1\";s:16:\"defined_form_del\";s:1:\"1\";s:6:\"celive\";s:1:\"1\";s:13:\"celive_system\";s:1:\"1\";s:14:\"celive_enlarge\";s:1:\"1\";s:17:\"celive_systeminfo\";s:1:\"1\";s:18:\"celive_departments\";s:1:\"1\";s:16:\"celive_operators\";s:1:\"1\";s:14:\"celive_assigns\";s:1:\"1\";s:13:\"celive_center\";s:1:\"1\";s:14:\"celive_monitor\";s:1:\"1\";s:15:\"celive_chatlist\";s:1:\"1\";s:11:\"celive_book\";s:1:\"1\";s:11:\"celive_user\";s:1:\"1\";s:11:\"celive_edit\";s:1:\"1\";s:11:\"celive_code\";s:1:\"1\";s:3:\"bbs\";s:1:\"1\";s:12:\"bbs_category\";s:1:\"1\";s:17:\"bbs_category_list\";s:13:\"category_list\";s:16:\"bbs_category_add\";s:12:\"category_add\";s:17:\"bbs_category_edit\";s:13:\"category_edit\";s:16:\"bbs_category_del\";s:12:\"category_del\";s:11:\"bbs_archive\";s:1:\"1\";s:16:\"bbs_archive_list\";s:1:\"1\";s:16:\"bbs_archive_edit\";s:1:\"1\";s:15:\"bbs_archive_del\";s:1:\"1\";s:17:\"bbs_archive_check\";s:1:\"1\";s:18:\"bbs_archive_batdel\";s:1:\"1\";}cel_username|s:5:\"admin\";cel_password|s:32:\"21232f297a57a5a743894a0e4a801fc3\";cel_operatorid|s:1:\"1\";cel_activeid|i:142;cel_departmentid|i:0;cel_sound|s:1:\"1\";mod|s:4:\"func\";act|s:5:\"baker\";modname|s:6:\"功能\";table|s:12:\"announcement\";actname|s:15:\"备份数据库\";');


INSERT INTO `cmseasy_settings` VALUES('1','','table-archive','a:1:{s:5:\"attr1\";s:97:\"(0)无\r\n(1)推荐位一\r\n(2)推荐位二\r\n(3)推荐位三\r\n(4)推荐位四\r\n(5)推荐位五\";}','array (\n  \'attr1\' => \'(0)无\r\n(1)推荐位一\r\n(2)推荐位二\r\n(3)推荐位三\r\n(4)推荐位四\r\n(5)推荐位五\',\n)');
INSERT INTO `cmseasy_settings` VALUES('89','','table-fieldset','a:6:{s:7:\"archive\";a:15:{s:7:\"my_size\";a:9:{s:4:\"name\";s:7:\"my_size\";s:5:\"cname\";s:12:\"文档大小\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"6\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_zhaopinbumen\";a:9:{s:4:\"name\";s:15:\"my_zhaopinbumen\";s:5:\"cname\";s:12:\"招聘部门\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_jobtype\";a:9:{s:4:\"name\";s:10:\"my_jobtype\";s:5:\"cname\";s:12:\"职位类型\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:20:\"(1)全职\r\n(2)兼职\";s:8:\"filetype\";N;}s:11:\"my_jobtitle\";a:9:{s:4:\"name\";s:11:\"my_jobtitle\";s:5:\"cname\";s:12:\"职称要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobnumber\";a:9:{s:4:\"name\";s:12:\"my_jobnumber\";s:5:\"cname\";s:12:\"招聘人数\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:12:\"my_jobgender\";a:9:{s:4:\"name\";s:12:\"my_jobgender\";s:5:\"cname\";s:12:\"性别要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:5:\"radio\";s:6:\"select\";s:25:\"(1)男\r\n(2)女\r\n(3)不限\";s:8:\"filetype\";N;}s:10:\"my_jobwork\";a:9:{s:4:\"name\";s:10:\"my_jobwork\";s:5:\"cname\";s:18:\"工作经验要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_jobacademic\";a:9:{s:4:\"name\";s:14:\"my_jobacademic\";s:5:\"cname\";s:12:\"学历要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:86:\"(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\";s:8:\"filetype\";N;}s:9:\"my_jobage\";a:9:{s:4:\"name\";s:9:\"my_jobage\";s:5:\"cname\";s:12:\"年龄要求\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_jobworkareas\";a:9:{s:4:\"name\";s:15:\"my_jobworkareas\";s:5:\"cname\";s:12:\"工作地区\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:18:\"my_jobrequirements\";a:9:{s:4:\"name\";s:18:\"my_jobrequirements\";s:5:\"cname\";s:15:\"要求与待遇\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_contactname\";a:9:{s:4:\"name\";s:14:\"my_contactname\";s:5:\"cname\";s:15:\"联系人姓名\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:1:\"7\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:17:\"my_tonghangbijiao\";a:9:{s:4:\"name\";s:17:\"my_tonghangbijiao\";s:5:\"cname\";s:12:\"同行比较\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:2:\"20\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_donggongjindu\";a:9:{s:4:\"name\";s:16:\"my_donggongjindu\";s:5:\"cname\";s:12:\"动工进度\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:2:\"54\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_zhiwei\";a:11:{s:4:\"name\";s:9:\"my_zhiwei\";s:5:\"cname\";s:6:\"职位\";s:4:\"tips\";s:0:\"\";s:5:\"catid\";s:2:\"62\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}}s:10:\"my_yingpin\";a:24:{s:6:\"myform\";a:3:{s:5:\"cname\";s:6:\"应聘\";s:4:\"name\";s:10:\"my_yingpin\";s:8:\"template\";s:18:\"myform/myform.html\";}s:11:\"my_xingming\";a:10:{s:4:\"name\";s:11:\"my_xingming\";s:5:\"cname\";s:6:\"姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_xingbie\";a:10:{s:4:\"name\";s:10:\"my_xingbie\";s:5:\"cname\";s:6:\"性别\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:14:\"(1)男\r\n(2)女\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:12:\"my_nianliang\";a:10:{s:4:\"name\";s:12:\"my_nianliang\";s:5:\"cname\";s:6:\"年龄\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_minzu\";a:10:{s:4:\"name\";s:8:\"my_minzu\";s:5:\"cname\";s:6:\"民族\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:10:\"my_shengao\";a:10:{s:4:\"name\";s:10:\"my_shengao\";s:5:\"cname\";s:6:\"身高\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:15:\"my_shenfenzheng\";a:8:{s:4:\"name\";s:15:\"my_shenfenzheng\";s:5:\"cname\";s:12:\"身份证号\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_jiguan\";a:10:{s:4:\"name\";s:9:\"my_jiguan\";s:5:\"cname\";s:6:\"籍贯\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_xueli\";a:10:{s:4:\"name\";s:8:\"my_xueli\";s:5:\"cname\";s:6:\"学历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:62:\"(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_zanzhudizhi\";a:8:{s:4:\"name\";s:14:\"my_zanzhudizhi\";s:5:\"cname\";s:12:\"暂住地址\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_zhuanye\";a:10:{s:4:\"name\";s:10:\"my_zhuanye\";s:5:\"cname\";s:6:\"专业\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_biyeshijian\";a:8:{s:4:\"name\";s:14:\"my_biyeshijian\";s:5:\"cname\";s:12:\"毕业时间\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:8:\"datetime\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:15:\"my_biyeyuanxiao\";a:8:{s:4:\"name\";s:15:\"my_biyeyuanxiao\";s:5:\"cname\";s:12:\"毕业院校\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:13:\"my_waiyujibie\";a:8:{s:4:\"name\";s:13:\"my_waiyujibie\";s:5:\"cname\";s:12:\"外语水平\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:69:\"(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\";s:8:\"filetype\";N;}s:11:\"my_jisuanji\";a:10:{s:4:\"name\";s:11:\"my_jisuanji\";s:5:\"cname\";s:15:\"计算机能力\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:52:\"(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:17:\"my_zhuanyetechang\";a:8:{s:4:\"name\";s:17:\"my_zhuanyetechang\";s:5:\"cname\";s:12:\"专业特长\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:11:\"my_zhicheng\";a:10:{s:4:\"name\";s:11:\"my_zhicheng\";s:5:\"cname\";s:6:\"职称\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_daiyu\";a:8:{s:4:\"name\";s:8:\"my_daiyu\";s:5:\"cname\";s:12:\"待遇要求\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_lianxidianhua\";a:8:{s:4:\"name\";s:16:\"my_lianxidianhua\";s:5:\"cname\";s:12:\"联系电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:9:\"my_shouji\";a:10:{s:4:\"name\";s:9:\"my_shouji\";s:5:\"cname\";s:6:\"手机\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:8:\"my_email\";a:8:{s:4:\"name\";s:8:\"my_email\";s:5:\"cname\";s:12:\"电子邮箱\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_xuexijingli\";a:8:{s:4:\"name\";s:14:\"my_xuexijingli\";s:5:\"cname\";s:12:\"学习经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_gongzuojingli\";a:8:{s:4:\"name\";s:16:\"my_gongzuojingli\";s:5:\"cname\";s:12:\"工作经历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_gerenjianli\";a:8:{s:4:\"name\";s:14:\"my_gerenjianli\";s:5:\"cname\";s:12:\"个人简历\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:4:\"my_a\";a:2:{s:6:\"myform\";a:3:{s:5:\"cname\";s:2:\"aa\";s:4:\"name\";s:4:\"my_a\";s:8:\"template\";s:18:\"myform/myform.html\";}s:6:\"my_aaa\";a:8:{s:4:\"name\";s:6:\"my_aaa\";s:5:\"cname\";s:1:\"a\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:9:\"my_liuyan\";a:7:{s:6:\"myform\";a:3:{s:5:\"cname\";s:6:\"留言\";s:4:\"name\";s:9:\"my_liuyan\";s:8:\"template\";s:18:\"myform/myform.html\";}s:11:\"my_xingming\";a:10:{s:4:\"name\";s:11:\"my_xingming\";s:5:\"cname\";s:12:\"您的姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;s:8:\"issearch\";i:0;s:9:\"isnotnull\";i:0;}s:14:\"my_shoujihaoma\";a:8:{s:4:\"name\";s:14:\"my_shoujihaoma\";s:5:\"cname\";s:12:\"手机号码\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:3:\"int\";s:3:\"len\";i:11;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_youxiangdizhi\";a:8:{s:4:\"name\";s:16:\"my_youxiangdizhi\";s:5:\"cname\";s:12:\"邮箱地址\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_liuyanneirong\";a:8:{s:4:\"name\";s:16:\"my_liuyanneirong\";s:5:\"cname\";s:12:\"留言内容\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_nindexingming\";a:8:{s:4:\"name\";s:16:\"my_nindexingming\";s:5:\"cname\";s:12:\"您的姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:16:\"my_lianxidianhua\";a:8:{s:4:\"name\";s:16:\"my_lianxidianhua\";s:5:\"cname\";s:12:\"联系电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:3:\"int\";s:3:\"len\";i:11;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}s:16:\"my_zaixianyuding\";a:7:{s:6:\"myform\";a:3:{s:5:\"cname\";s:12:\"在线预订\";s:4:\"name\";s:16:\"my_zaixianyuding\";s:8:\"template\";s:18:\"myform/nrform.html\";}s:15:\"my_cantingdizhi\";a:8:{s:4:\"name\";s:15:\"my_cantingdizhi\";s:5:\"cname\";s:12:\"餐厅地址\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:58:\"(1)餐厅地址一\r\n(2)餐厅地址二\r\n(3)餐厅地址三\";s:8:\"filetype\";N;}s:10:\"my_dianhua\";a:8:{s:4:\"name\";s:10:\"my_dianhua\";s:5:\"cname\";s:6:\"电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:3:\"int\";s:3:\"len\";i:11;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:11:\"my_youxiang\";a:8:{s:4:\"name\";s:11:\"my_youxiang\";s:5:\"cname\";s:6:\"邮箱\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_shijian\";a:8:{s:4:\"name\";s:10:\"my_shijian\";s:5:\"cname\";s:6:\"时间\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:8:\"datetime\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:11:\"my_shijian2\";a:8:{s:4:\"name\";s:11:\"my_shijian2\";s:5:\"cname\";s:12:\"就餐时间\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:31:\"(1)早餐\r\n(2)午餐\r\n(3)晚餐\";s:8:\"filetype\";N;}s:9:\"my_renshu\";a:8:{s:4:\"name\";s:9:\"my_renshu\";s:5:\"cname\";s:6:\"人数\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";i:10;s:10:\"selecttype\";s:6:\"select\";s:6:\"select\";s:49:\"(1)1人\r\n(2)2人\r\n(3)3人\r\n(4)4人\r\n(6)4人以上\";s:8:\"filetype\";N;}}s:14:\"my_lianxiwomen\";a:4:{s:6:\"myform\";a:3:{s:5:\"cname\";s:12:\"联系我们\";s:4:\"name\";s:14:\"my_lianxiwomen\";s:8:\"template\";s:18:\"myform/myform.html\";}s:11:\"my_xingming\";a:8:{s:4:\"name\";s:11:\"my_xingming\";s:5:\"cname\";s:6:\"姓名\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:7:\"varchar\";s:3:\"len\";s:3:\"100\";s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:10:\"my_dianhua\";a:8:{s:4:\"name\";s:10:\"my_dianhua\";s:5:\"cname\";s:6:\"电话\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:3:\"int\";s:3:\"len\";i:11;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}s:14:\"my_nindeliuyan\";a:8:{s:4:\"name\";s:14:\"my_nindeliuyan\";s:5:\"cname\";s:12:\"您的留言\";s:4:\"tips\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:3:\"len\";i:0;s:10:\"selecttype\";s:1:\"0\";s:6:\"select\";s:0:\"\";s:8:\"filetype\";N;}}}','array (\n  \'archive\' => \n  array (\n    \'my_size\' => \n    array (\n      \'name\' => \'my_size\',\n      \'cname\' => \'文档大小\',\n      \'tips\' => \'\',\n      \'catid\' => \'6\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhaopinbumen\' => \n    array (\n      \'name\' => \'my_zhaopinbumen\',\n      \'cname\' => \'招聘部门\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtype\' => \n    array (\n      \'name\' => \'my_jobtype\',\n      \'cname\' => \'职位类型\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)全职\r\n(2)兼职\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobtitle\' => \n    array (\n      \'name\' => \'my_jobtitle\',\n      \'cname\' => \'职称要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobnumber\' => \n    array (\n      \'name\' => \'my_jobnumber\',\n      \'cname\' => \'招聘人数\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobgender\' => \n    array (\n      \'name\' => \'my_jobgender\',\n      \'cname\' => \'性别要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'radio\',\n      \'select\' => \'(1)男\r\n(2)女\r\n(3)不限\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobwork\' => \n    array (\n      \'name\' => \'my_jobwork\',\n      \'cname\' => \'工作经验要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobacademic\' => \n    array (\n      \'name\' => \'my_jobacademic\',\n      \'cname\' => \'学历要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中以上\r\n(2)高中以上\r\n(3)专科以上\r\n(4)大专以上\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobage\' => \n    array (\n      \'name\' => \'my_jobage\',\n      \'cname\' => \'年龄要求\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobworkareas\' => \n    array (\n      \'name\' => \'my_jobworkareas\',\n      \'cname\' => \'工作地区\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jobrequirements\' => \n    array (\n      \'name\' => \'my_jobrequirements\',\n      \'cname\' => \'要求与待遇\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_contactname\' => \n    array (\n      \'name\' => \'my_contactname\',\n      \'cname\' => \'联系人姓名\',\n      \'tips\' => \'\',\n      \'catid\' => \'7\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_tonghangbijiao\' => \n    array (\n      \'name\' => \'my_tonghangbijiao\',\n      \'cname\' => \'同行比较\',\n      \'tips\' => \'\',\n      \'catid\' => \'20\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_donggongjindu\' => \n    array (\n      \'name\' => \'my_donggongjindu\',\n      \'cname\' => \'动工进度\',\n      \'tips\' => \'\',\n      \'catid\' => \'54\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhiwei\' => \n    array (\n      \'name\' => \'my_zhiwei\',\n      \'cname\' => \'职位\',\n      \'tips\' => \'\',\n      \'catid\' => \'62\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n  ),\n  \'my_yingpin\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'应聘\',\n      \'name\' => \'my_yingpin\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_xingming\' => \n    array (\n      \'name\' => \'my_xingming\',\n      \'cname\' => \'姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xingbie\' => \n    array (\n      \'name\' => \'my_xingbie\',\n      \'cname\' => \'性别\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)男\r\n(2)女\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_nianliang\' => \n    array (\n      \'name\' => \'my_nianliang\',\n      \'cname\' => \'年龄\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_minzu\' => \n    array (\n      \'name\' => \'my_minzu\',\n      \'cname\' => \'民族\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shengao\' => \n    array (\n      \'name\' => \'my_shengao\',\n      \'cname\' => \'身高\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shenfenzheng\' => \n    array (\n      \'name\' => \'my_shenfenzheng\',\n      \'cname\' => \'身份证号\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jiguan\' => \n    array (\n      \'name\' => \'my_jiguan\',\n      \'cname\' => \'籍贯\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_xueli\' => \n    array (\n      \'name\' => \'my_xueli\',\n      \'cname\' => \'学历\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)初中\r\n(2)高中\r\n(3)专科\r\n(4)大专\r\n(5)研究生以上\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zanzhudizhi\' => \n    array (\n      \'name\' => \'my_zanzhudizhi\',\n      \'cname\' => \'暂住地址\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhuanye\' => \n    array (\n      \'name\' => \'my_zhuanye\',\n      \'cname\' => \'专业\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_biyeshijian\' => \n    array (\n      \'name\' => \'my_biyeshijian\',\n      \'cname\' => \'毕业时间\',\n      \'tips\' => \'\',\n      \'type\' => \'datetime\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_biyeyuanxiao\' => \n    array (\n      \'name\' => \'my_biyeyuanxiao\',\n      \'cname\' => \'毕业院校\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_waiyujibie\' => \n    array (\n      \'name\' => \'my_waiyujibie\',\n      \'cname\' => \'外语水平\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)三级\r\n(2)四级\r\n(3)六级\r\n(4)专业四级\r\n(5)专业八级\r\n\r\n\',\n      \'filetype\' => NULL,\n    ),\n    \'my_jisuanji\' => \n    array (\n      \'name\' => \'my_jisuanji\',\n      \'cname\' => \'计算机能力\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)差\r\n(2)一般\r\n(3)良好\r\n(4)很好\r\n(5)精通  \',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_zhuanyetechang\' => \n    array (\n      \'name\' => \'my_zhuanyetechang\',\n      \'cname\' => \'专业特长\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_zhicheng\' => \n    array (\n      \'name\' => \'my_zhicheng\',\n      \'cname\' => \'职称\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_daiyu\' => \n    array (\n      \'name\' => \'my_daiyu\',\n      \'cname\' => \'待遇要求\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_lianxidianhua\' => \n    array (\n      \'name\' => \'my_lianxidianhua\',\n      \'cname\' => \'联系电话\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_shouji\' => \n    array (\n      \'name\' => \'my_shouji\',\n      \'cname\' => \'手机\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_email\' => \n    array (\n      \'name\' => \'my_email\',\n      \'cname\' => \'电子邮箱\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_xuexijingli\' => \n    array (\n      \'name\' => \'my_xuexijingli\',\n      \'cname\' => \'学习经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gongzuojingli\' => \n    array (\n      \'name\' => \'my_gongzuojingli\',\n      \'cname\' => \'工作经历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_gerenjianli\' => \n    array (\n      \'name\' => \'my_gerenjianli\',\n      \'cname\' => \'个人简历\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_a\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'aa\',\n      \'name\' => \'my_a\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_aaa\' => \n    array (\n      \'name\' => \'my_aaa\',\n      \'cname\' => \'a\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_liuyan\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'留言\',\n      \'name\' => \'my_liuyan\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_xingming\' => \n    array (\n      \'name\' => \'my_xingming\',\n      \'cname\' => \'您的姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n      \'issearch\' => 0,\n      \'isnotnull\' => 0,\n    ),\n    \'my_shoujihaoma\' => \n    array (\n      \'name\' => \'my_shoujihaoma\',\n      \'cname\' => \'手机号码\',\n      \'tips\' => \'\',\n      \'type\' => \'int\',\n      \'len\' => 11,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_youxiangdizhi\' => \n    array (\n      \'name\' => \'my_youxiangdizhi\',\n      \'cname\' => \'邮箱地址\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_liuyanneirong\' => \n    array (\n      \'name\' => \'my_liuyanneirong\',\n      \'cname\' => \'留言内容\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_nindexingming\' => \n    array (\n      \'name\' => \'my_nindexingming\',\n      \'cname\' => \'您的姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_lianxidianhua\' => \n    array (\n      \'name\' => \'my_lianxidianhua\',\n      \'cname\' => \'联系电话\',\n      \'tips\' => \'\',\n      \'type\' => \'int\',\n      \'len\' => 11,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_zaixianyuding\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'在线预订\',\n      \'name\' => \'my_zaixianyuding\',\n      \'template\' => \'myform/nrform.html\',\n    ),\n    \'my_cantingdizhi\' => \n    array (\n      \'name\' => \'my_cantingdizhi\',\n      \'cname\' => \'餐厅地址\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)餐厅地址一\r\n(2)餐厅地址二\r\n(3)餐厅地址三\',\n      \'filetype\' => NULL,\n    ),\n    \'my_dianhua\' => \n    array (\n      \'name\' => \'my_dianhua\',\n      \'cname\' => \'电话\',\n      \'tips\' => \'\',\n      \'type\' => \'int\',\n      \'len\' => 11,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_youxiang\' => \n    array (\n      \'name\' => \'my_youxiang\',\n      \'cname\' => \'邮箱\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_shijian\' => \n    array (\n      \'name\' => \'my_shijian\',\n      \'cname\' => \'时间\',\n      \'tips\' => \'\',\n      \'type\' => \'datetime\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_shijian2\' => \n    array (\n      \'name\' => \'my_shijian2\',\n      \'cname\' => \'就餐时间\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)早餐\r\n(2)午餐\r\n(3)晚餐\',\n      \'filetype\' => NULL,\n    ),\n    \'my_renshu\' => \n    array (\n      \'name\' => \'my_renshu\',\n      \'cname\' => \'人数\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => 10,\n      \'selecttype\' => \'select\',\n      \'select\' => \'(1)1人\r\n(2)2人\r\n(3)3人\r\n(4)4人\r\n(6)4人以上\',\n      \'filetype\' => NULL,\n    ),\n  ),\n  \'my_lianxiwomen\' => \n  array (\n    \'myform\' => \n    array (\n      \'cname\' => \'联系我们\',\n      \'name\' => \'my_lianxiwomen\',\n      \'template\' => \'myform/myform.html\',\n    ),\n    \'my_xingming\' => \n    array (\n      \'name\' => \'my_xingming\',\n      \'cname\' => \'姓名\',\n      \'tips\' => \'\',\n      \'type\' => \'varchar\',\n      \'len\' => \'100\',\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_dianhua\' => \n    array (\n      \'name\' => \'my_dianhua\',\n      \'cname\' => \'电话\',\n      \'tips\' => \'\',\n      \'type\' => \'int\',\n      \'len\' => 11,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n    \'my_nindeliuyan\' => \n    array (\n      \'name\' => \'my_nindeliuyan\',\n      \'cname\' => \'您的留言\',\n      \'tips\' => \'\',\n      \'type\' => \'text\',\n      \'len\' => 0,\n      \'selecttype\' => \'0\',\n      \'select\' => \'\',\n      \'filetype\' => NULL,\n    ),\n  ),\n)');
INSERT INTO `cmseasy_settings` VALUES('61','','table-hottag','','');

INSERT INTO `cmseasy_stats` VALUES('1','Baidu','116.255.233.214','2015-12-28 23:36:52','http://175.21.97.156:80/');
INSERT INTO `cmseasy_stats` VALUES('2','Baidu','116.255.233.214','2015-12-28 23:37:08','http://175.21.97.156:80/?g=1');
INSERT INTO `cmseasy_stats` VALUES('3','Baidu','116.255.233.214','2015-12-28 23:37:13','http://175.21.97.156:80/?case=manage&amp;act=guestadd&amp;manage=archive&amp;guest=1');
INSERT INTO `cmseasy_stats` VALUES('4','Baidu','116.255.233.214','2015-12-28 23:39:31','http://175.21.97.156:80/');
INSERT INTO `cmseasy_stats` VALUES('5','Baidu','116.255.233.214','2015-12-28 23:39:47','http://175.21.97.156:80/?g=1');
INSERT INTO `cmseasy_stats` VALUES('6','Baidu','116.255.233.214','2015-12-28 23:39:51','http://175.21.97.156:80/?case=manage&amp;act=guestadd&amp;manage=archive&amp;guest=1');
INSERT INTO `cmseasy_stats` VALUES('7','Baidu','116.255.233.214','2015-12-28 23:44:04','http://175.21.97.156:80/');
INSERT INTO `cmseasy_stats` VALUES('8','Baidu','116.255.233.214','2015-12-28 23:44:19','http://175.21.97.156:80/?g=1');
INSERT INTO `cmseasy_stats` VALUES('9','Baidu','116.255.233.214','2015-12-28 23:44:22','http://175.21.97.156:80/?case=manage&amp;act=guestadd&amp;manage=archive&amp;guest=1');

INSERT INTO `cmseasy_templatetag` VALUES('1','根目录','all','','{$base_url}','','','system','');
INSERT INTO `cmseasy_templatetag` VALUES('2','Skin目录','all','','{$skin_url}','','','system','');
INSERT INTO `cmseasy_templatetag` VALUES('3','网站当前位置','article','','<a href=\"{$base_url}/\">{get(\'sitename\')}</a> >>\r\n{loop position($catid) $t}\r\n<a href=\"{$t.url}\">{$t[\'name\']} </a>>\r\n{/loop}','$catid=','参数: $catid','system','');
INSERT INTO `cmseasy_templatetag` VALUES('4','栏目列表','all','','{loop categories($catid) $cat}\r\n<a href=\"{$cat[url]}\">{$cat[catname]}</a>\r\n{/loop}','$catid=','参数: $catid','system','');
INSERT INTO `cmseasy_templatetag` VALUES('5','首页链接','all','','<a href=\"{$base_url}/\">首页</a>','','','system','');
INSERT INTO `cmseasy_templatetag` VALUES('6','取得下级栏目','all','','categories($catid)','','参数: $catid\r\n取得一级栏目： categories()\r\n取得ID为8的栏目的下级栏目: categories(8)\r\n取得当前栏目的下级栏目: categories($catid)','function','');
INSERT INTO `cmseasy_templatetag` VALUES('7','取得栏目url','all','','caturl($catid)','','参数: $catid\r\n取得栏目url','function','');
INSERT INTO `cmseasy_templatetag` VALUES('8','栏目链接','all','','<a href=\"{caturl($catid)}\">{catname($catid)}</a>','$catid=','参数: $catid','system','');
INSERT INTO `cmseasy_templatetag` VALUES('9','导航栏','all','','<ul style=\"width:980px\">\r\n{loop categories() $t}\r\n	<li style=\"float:left;display:inline;width:120px\">\r\n	<a href=\"{$t[url]}\" {if isset($topid) && $topid==$t[catid]}class=\"current\"{/if}>{$t[catname]}</a>\r\n	<!--loop一级目录-->\r\n	{loop categories($t) $t1}\r\n		<ul style=\"float:left;display:inline;width:100px\">\r\n		<a href=\"{$t1[url]}\" {if isset($catid) && $typeid==$t1[catid]}class=\"current\"{/if}>{$t1[catname]}</a>\r\n		<!--loop二级目录...-->\r\n		{loop categories($t1) $t2}\r\n			<ul style=\"float:left;display:inline;width:80px\"><a href=\"{$t2[url]}\" {if isset($catid) && $catid==$t2[catid]}class=\"current\"{/if}>{$t2[catname]}</a>\r\n			<!--loop三级目录...-->\r\n			{loop categories($t2) $t3}\r\n				<ul style=\"float:left;display:inline;width:60px\"><a href=\"{$t3[url]}\" {if isset($catid) && $catid==$t3[catid]}class=\"current\"{/if}>{$t3[catname]}</a></ul>\r\n			{/loop}\r\n			</ul>\r\n		{/loop}\r\n		</ul>\r\n	{/loop}\r\n	</li>\r\n{/loop}\r\n</ul>\r\n','','导航栏示范','system','');
INSERT INTO `cmseasy_templatetag` VALUES('10','用户信息','','','{if isset($user) && is_array($user)}\r\n欢迎你， {$user.username}!<br>\r\n<a href=\"{url(\'user/logout\')}\">退出</a>\r\n | <a href=\"{url(\'user\')}\" target=\"_blank\">会员中心</a>\r\n{if $user[\'username\']==\'admin\'}\r\n | <a href=\"{$base_url}/admin\" target=\"_blank\">后台管理</a>\r\n{/if}\r\n<?php }else{ ?>\r\n\r\n<form id=\"login_form\"   name=\"loginform\" method=\"post\"  action=\"{url(\'user/login\')}\" onsubmit=\"return checkform();\">\r\n用户名：<input type=\'text\' id=\"username\"  name=\"username\" size=\"16\"/><br>\r\n密  码：<input type=\'password\' id=\"password\"  name=\"password\" size=\"17\"/><br>\r\n验证码：<input type=\'text\' id=\"verify\"  name=\"verify\" size=\"4\"/>\r\n{verify()}<br>\r\n有效期: <select name=\"expire\">\r\n<option value=\"<?php echo 3600; ?>\">一小时</option>\r\n<option value=\"<?php echo 3600*24; ?>\">一天</option>\r\n<option value=\"<?php echo 3600*24*7; ?>\">一星期</option>\r\n<option value=\"<?php echo 3600*24*30; ?>\">一个月</option>\r\n<option value=\"<?php echo 3600*24*365; ?>\">一年</option>\r\n</select><br>\r\n<input type=\'submit\' name=\"submit\" value=\"登陆\" style=\"margin-left:30px\"/>\r\n<input type=\'button\' name=\"register\" value=\"注册\" onclick=\"javascript:location.href=\'{url(\'user/register\')}\'\"  style=\"margin-left:10px\">\r\n</form>\r\n{/if}','','一般用JS调用','system','');
INSERT INTO `cmseasy_templatetag` VALUES('11','ICP备案号','','','{get(\'site_icp\')}','','','define','');
INSERT INTO `cmseasy_templatetag` VALUES('12','首页关键词','','','{get(\'site_keyword\')}','','','define','');
INSERT INTO `cmseasy_templatetag` VALUES('13','首页网页描述','','','{get(\'site_description\')}','','','define','');
INSERT INTO `cmseasy_templatetag` VALUES('14','版权所有','','','{get(\'site_right\')}','','','define','');
INSERT INTO `cmseasy_templatetag` VALUES('15','调用模板','all','','template($tpl)','','在当前模板中调用其他模板。变量值基于模板根目录。\r\n\r\n例子：\r\n\r\n{template(\'mypage/about.html\')}','function','');
INSERT INTO `cmseasy_templatetag` VALUES('16','公司简介','','','CmsEasy是一款基于 PHP+Mysql 架构的网站内容管理系统，也是一个 PHP 开发平台。 采用模块化方式开发，功能易用便于扩展，可面向大中型站点提供重量级网站建设解决方案。2年来，凭借 团队长期积累的丰富的Web开发及数据库经验和勇于创新追求完美的设计理念，使得 CmsEasy v1.0 得到了众多网站的认可，并且越来越多地被应用到大中型商业网站。','','','define','');
INSERT INTO `cmseasy_templatetag` VALUES('17','公告列表','announ','','{loop announ($num) $an}\r\n <a href=\"{$an[url]}\"> {$an[title]} </a> ({$an[adddate]}) \r\n{/loop}','','','system','');

INSERT INTO `cmseasy_type` VALUES('1','0','高端商品','','','0','','','','','','gaoduan','0','0','','','','','article','1','0','0','1','1','0','','','','','','0','0');
INSERT INTO `cmseasy_type` VALUES('2','0','促销商品','','','0','','','','','','cuxiao','0','0','','','','','article','1','0','0','1','1','0','','','','','','0','0');




INSERT INTO `cmseasy_user` VALUES('1','admin','21232f297a57a5a743894a0e4a801fc3','管理员','2','1','','','','','0','0','','','','','','','0','0','0','','0','0');

INSERT INTO `cmseasy_usergroup` VALUES('2','管理员','0.0','a:174:{s:6:\"config\";s:1:\"1\";s:10:\"sitesystem\";s:1:\"1\";s:6:\"system\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:15:\"setting_archive\";s:1:\"1\";s:3:\"sms\";s:1:\"1\";s:7:\"website\";s:1:\"1\";s:12:\"website_list\";s:1:\"1\";s:11:\"website_add\";s:1:\"1\";s:12:\"website_edit\";s:1:\"1\";s:11:\"website_del\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:4:\"user\";s:1:\"1\";s:11:\"user_manage\";s:1:\"1\";s:9:\"user_list\";s:1:\"1\";s:8:\"user_add\";s:1:\"1\";s:9:\"user_edit\";s:1:\"1\";s:8:\"user_del\";s:1:\"1\";s:11:\"user_ologin\";s:1:\"1\";s:10:\"user_group\";s:1:\"1\";s:14:\"usergroup_list\";s:1:\"1\";s:13:\"usergroup_add\";s:1:\"1\";s:14:\"usergroup_edit\";s:1:\"1\";s:13:\"usergroup_del\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:16:\"func_book_pllist\";s:1:\"1\";s:16:\"func_book_pledit\";s:1:\"1\";s:15:\"func_book_pldel\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:9:\"func_data\";s:1:\"1\";s:15:\"func_data_baker\";s:1:\"1\";s:17:\"func_data_restore\";s:1:\"1\";s:16:\"func_data_phpweb\";s:1:\"1\";s:17:\"func_data_replace\";s:1:\"1\";s:19:\"func_data_adminlogs\";s:1:\"1\";s:14:\"func_data_safe\";s:1:\"1\";s:8:\"template\";s:1:\"1\";s:15:\"template_manage\";s:1:\"1\";s:12:\"template_set\";s:1:\"1\";s:13:\"template_note\";s:1:\"1\";s:13:\"template_edit\";s:1:\"1\";s:15:\"templatetag_add\";s:1:\"1\";s:23:\"templatetag_add_content\";s:1:\"1\";s:24:\"templatetag_add_category\";s:1:\"1\";s:22:\"templatetag_add_define\";s:1:\"1\";s:16:\"templatetag_list\";s:1:\"1\";s:25:\"templatetag_list_function\";s:1:\"1\";s:23:\"templatetag_list_system\";s:1:\"1\";s:24:\"templatetag_list_content\";s:1:\"1\";s:25:\"templatetag_list_category\";s:1:\"1\";s:23:\"templatetag_list_define\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:17:\"seo_status_spider\";s:1:\"1\";s:15:\"seo_status_cnzz\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:7:\"defined\";s:1:\"1\";s:13:\"defined_field\";s:1:\"1\";s:21:\"defined_field_content\";s:1:\"1\";s:25:\"defined_field_content_add\";s:1:\"1\";s:26:\"defined_field_content_edit\";s:1:\"1\";s:25:\"defined_field_content_del\";s:1:\"1\";s:18:\"defined_field_user\";s:1:\"1\";s:22:\"defined_field_user_add\";s:1:\"1\";s:23:\"defined_field_user_edit\";s:1:\"1\";s:22:\"defined_field_user_del\";s:1:\"1\";s:12:\"defined_form\";s:1:\"1\";s:17:\"defined_form_list\";s:1:\"1\";s:16:\"defined_form_add\";s:1:\"1\";s:17:\"defined_form_edit\";s:1:\"1\";s:16:\"defined_form_del\";s:1:\"1\";s:6:\"celive\";s:1:\"1\";s:13:\"celive_system\";s:1:\"1\";s:14:\"celive_enlarge\";s:1:\"1\";s:17:\"celive_systeminfo\";s:1:\"1\";s:18:\"celive_departments\";s:1:\"1\";s:16:\"celive_operators\";s:1:\"1\";s:14:\"celive_assigns\";s:1:\"1\";s:13:\"celive_center\";s:1:\"1\";s:14:\"celive_monitor\";s:1:\"1\";s:15:\"celive_chatlist\";s:1:\"1\";s:11:\"celive_book\";s:1:\"1\";s:11:\"celive_user\";s:1:\"1\";s:11:\"celive_edit\";s:1:\"1\";s:11:\"celive_code\";s:1:\"1\";s:3:\"bbs\";s:1:\"1\";s:12:\"bbs_category\";s:1:\"1\";s:17:\"bbs_category_list\";s:13:\"category_list\";s:16:\"bbs_category_add\";s:12:\"category_add\";s:17:\"bbs_category_edit\";s:13:\"category_edit\";s:16:\"bbs_category_del\";s:12:\"category_del\";s:11:\"bbs_archive\";s:1:\"1\";s:16:\"bbs_archive_list\";s:1:\"1\";s:16:\"bbs_archive_edit\";s:1:\"1\";s:15:\"bbs_archive_del\";s:1:\"1\";s:17:\"bbs_archive_check\";s:1:\"1\";s:18:\"bbs_archive_batdel\";s:1:\"1\";}','');
INSERT INTO `cmseasy_usergroup` VALUES('1','一般会员','0.0','','');
INSERT INTO `cmseasy_usergroup` VALUES('1000','游客','0.0','','');
INSERT INTO `cmseasy_usergroup` VALUES('3','文章管理员','0.0','a:174:{s:6:\"config\";s:1:\"1\";s:10:\"sitesystem\";s:1:\"1\";s:6:\"system\";s:1:\"1\";s:8:\"language\";s:1:\"1\";s:15:\"setting_archive\";s:1:\"1\";s:3:\"sms\";s:1:\"1\";s:7:\"website\";s:1:\"1\";s:12:\"website_list\";s:1:\"1\";s:11:\"website_add\";s:1:\"1\";s:12:\"website_edit\";s:1:\"1\";s:11:\"website_del\";s:1:\"1\";s:7:\"content\";s:1:\"1\";s:8:\"category\";s:1:\"1\";s:13:\"category_list\";s:1:\"1\";s:12:\"category_add\";s:1:\"1\";s:13:\"category_edit\";s:1:\"1\";s:12:\"category_del\";s:1:\"1\";s:17:\"category_htmlrule\";s:1:\"1\";s:7:\"archive\";s:1:\"1\";s:12:\"archive_list\";s:1:\"1\";s:11:\"archive_add\";s:1:\"1\";s:12:\"archive_edit\";s:1:\"1\";s:11:\"archive_del\";s:1:\"1\";s:13:\"archive_check\";s:1:\"1\";s:15:\"archive_setting\";s:1:\"1\";s:17:\"archive_hotsearch\";s:1:\"1\";s:13:\"archive_image\";s:1:\"1\";s:5:\"mtype\";s:1:\"1\";s:9:\"type_list\";s:1:\"1\";s:8:\"type_add\";s:1:\"1\";s:9:\"type_edit\";s:1:\"1\";s:8:\"type_del\";s:1:\"1\";s:7:\"special\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:11:\"special_add\";s:1:\"1\";s:12:\"special_edit\";s:1:\"1\";s:11:\"special_del\";s:1:\"1\";s:4:\"user\";s:1:\"1\";s:11:\"user_manage\";s:1:\"1\";s:9:\"user_list\";s:1:\"1\";s:8:\"user_add\";s:1:\"1\";s:9:\"user_edit\";s:1:\"1\";s:8:\"user_del\";s:1:\"1\";s:11:\"user_ologin\";s:1:\"1\";s:10:\"user_group\";s:1:\"1\";s:14:\"usergroup_list\";s:1:\"1\";s:13:\"usergroup_add\";s:1:\"1\";s:14:\"usergroup_edit\";s:1:\"1\";s:13:\"usergroup_del\";s:1:\"1\";s:10:\"user_union\";s:1:\"1\";s:10:\"union_user\";s:1:\"1\";s:9:\"union_pay\";s:1:\"1\";s:11:\"union_visit\";s:1:\"1\";s:13:\"union_reguser\";s:1:\"1\";s:12:\"union_config\";s:1:\"1\";s:5:\"cache\";s:1:\"1\";s:12:\"cache_manage\";s:1:\"1\";s:13:\"cache_content\";s:1:\"1\";s:14:\"cache_category\";s:1:\"1\";s:11:\"cache_index\";s:1:\"1\";s:10:\"cache_type\";s:1:\"1\";s:13:\"cache_special\";s:1:\"1\";s:10:\"cache_area\";s:1:\"1\";s:9:\"cache_tag\";s:1:\"1\";s:11:\"cache_baidu\";s:1:\"1\";s:12:\"cache_google\";s:1:\"1\";s:12:\"cache_update\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:12:\"order_manage\";s:1:\"1\";s:10:\"order_list\";s:1:\"1\";s:9:\"order_del\";s:1:\"1\";s:10:\"order_edit\";s:1:\"1\";s:9:\"order_pay\";s:1:\"1\";s:15:\"order_logistics\";s:1:\"1\";s:4:\"func\";s:1:\"1\";s:12:\"func_announc\";s:1:\"1\";s:17:\"func_announc_list\";s:1:\"1\";s:16:\"func_announc_add\";s:1:\"1\";s:17:\"func_announc_edit\";s:1:\"1\";s:16:\"func_announc_del\";s:1:\"1\";s:9:\"func_book\";s:1:\"1\";s:14:\"func_book_list\";s:1:\"1\";s:15:\"func_book_reply\";s:1:\"1\";s:13:\"func_book_del\";s:1:\"1\";s:16:\"func_book_pllist\";s:1:\"1\";s:16:\"func_book_pledit\";s:1:\"1\";s:15:\"func_book_pldel\";s:1:\"1\";s:11:\"func_ballot\";s:1:\"1\";s:16:\"func_ballot_list\";s:1:\"1\";s:15:\"func_ballot_add\";s:1:\"1\";s:16:\"func_ballot_edit\";s:1:\"1\";s:15:\"func_ballot_del\";s:1:\"1\";s:9:\"func_data\";s:1:\"1\";s:15:\"func_data_baker\";s:1:\"1\";s:17:\"func_data_restore\";s:1:\"1\";s:16:\"func_data_phpweb\";s:1:\"1\";s:17:\"func_data_replace\";s:1:\"1\";s:19:\"func_data_adminlogs\";s:1:\"1\";s:14:\"func_data_safe\";s:1:\"1\";s:8:\"template\";s:1:\"1\";s:15:\"template_manage\";s:1:\"1\";s:12:\"template_set\";s:1:\"1\";s:13:\"template_note\";s:1:\"1\";s:13:\"template_edit\";s:1:\"1\";s:15:\"templatetag_add\";s:1:\"1\";s:23:\"templatetag_add_content\";s:1:\"1\";s:24:\"templatetag_add_category\";s:1:\"1\";s:22:\"templatetag_add_define\";s:1:\"1\";s:16:\"templatetag_list\";s:1:\"1\";s:25:\"templatetag_list_function\";s:1:\"1\";s:23:\"templatetag_list_system\";s:1:\"1\";s:24:\"templatetag_list_content\";s:1:\"1\";s:25:\"templatetag_list_category\";s:1:\"1\";s:23:\"templatetag_list_define\";s:1:\"1\";s:3:\"seo\";s:1:\"1\";s:10:\"seo_status\";s:1:\"1\";s:17:\"seo_status_spider\";s:1:\"1\";s:15:\"seo_status_cnzz\";s:1:\"1\";s:12:\"seo_linkword\";s:1:\"1\";s:17:\"seo_linkword_list\";s:1:\"1\";s:16:\"seo_linkword_add\";s:1:\"1\";s:17:\"seo_linkword_edit\";s:1:\"1\";s:16:\"seo_linkword_del\";s:1:\"1\";s:14:\"seo_friendlink\";s:1:\"1\";s:19:\"seo_friendlink_list\";s:1:\"1\";s:18:\"seo_friendlink_add\";s:1:\"1\";s:19:\"seo_friendlink_edit\";s:1:\"1\";s:18:\"seo_friendlink_del\";s:1:\"1\";s:22:\"seo_friendlink_setting\";s:1:\"1\";s:8:\"seo_mail\";s:1:\"1\";s:17:\"seo_mail_usersend\";s:1:\"1\";s:13:\"seo_mail_send\";s:1:\"1\";s:21:\"seo_mail_subscription\";s:1:\"1\";s:7:\"defined\";s:1:\"1\";s:13:\"defined_field\";s:1:\"1\";s:21:\"defined_field_content\";s:1:\"1\";s:25:\"defined_field_content_add\";s:1:\"1\";s:26:\"defined_field_content_edit\";s:1:\"1\";s:25:\"defined_field_content_del\";s:1:\"1\";s:18:\"defined_field_user\";s:1:\"1\";s:22:\"defined_field_user_add\";s:1:\"1\";s:23:\"defined_field_user_edit\";s:1:\"1\";s:22:\"defined_field_user_del\";s:1:\"1\";s:12:\"defined_form\";s:1:\"1\";s:17:\"defined_form_list\";s:1:\"1\";s:16:\"defined_form_add\";s:1:\"1\";s:17:\"defined_form_edit\";s:1:\"1\";s:16:\"defined_form_del\";s:1:\"1\";s:6:\"celive\";s:1:\"1\";s:13:\"celive_system\";s:1:\"1\";s:14:\"celive_enlarge\";s:1:\"1\";s:17:\"celive_systeminfo\";s:1:\"1\";s:18:\"celive_departments\";s:1:\"1\";s:16:\"celive_operators\";s:1:\"1\";s:14:\"celive_assigns\";s:1:\"1\";s:13:\"celive_center\";s:1:\"1\";s:14:\"celive_monitor\";s:1:\"1\";s:15:\"celive_chatlist\";s:1:\"1\";s:11:\"celive_book\";s:1:\"1\";s:11:\"celive_user\";s:1:\"1\";s:11:\"celive_edit\";s:1:\"1\";s:11:\"celive_code\";s:1:\"1\";s:3:\"bbs\";s:1:\"1\";s:12:\"bbs_category\";s:1:\"1\";s:17:\"bbs_category_list\";s:13:\"category_list\";s:16:\"bbs_category_add\";s:12:\"category_add\";s:17:\"bbs_category_edit\";s:13:\"category_edit\";s:16:\"bbs_category_del\";s:12:\"category_del\";s:11:\"bbs_archive\";s:1:\"1\";s:16:\"bbs_archive_list\";s:1:\"1\";s:16:\"bbs_archive_edit\";s:1:\"1\";s:15:\"bbs_archive_del\";s:1:\"1\";s:17:\"bbs_archive_check\";s:1:\"1\";s:18:\"bbs_archive_batdel\";s:1:\"1\";}','');


INSERT INTO `cmseasy_webscan360` VALUES('175','log_verify','{\"infocode\":\"300\",\"msg\":\"white!\",\"httpcode\":\"200\"}','','','0');
INSERT INTO `cmseasy_webscan360` VALUES('176','log_verify','{\"infocode\":\"300\",\"msg\":\"white!\",\"httpcode\":\"200\"}','','','0');
INSERT INTO `cmseasy_webscan360` VALUES('177','log_verify','{\"infocode\":\"300\",\"msg\":\"white!\",\"httpcode\":\"200\"}','','','0');





