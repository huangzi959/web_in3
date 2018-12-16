-- 表的结构：sline_destinations --
CREATE TABLE `sline_destinations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kindname` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `pid` int(11) DEFAULT '0' COMMENT '本表从属关系父id',
  `seotitle` varchar(255) DEFAULT NULL COMMENT '优化标题',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `tagword` varchar(255) DEFAULT NULL COMMENT 'tag词',
  `jieshao` text COMMENT '目的地介绍',
  `kindtype` int(1) unsigned DEFAULT NULL COMMENT '1:栏目分类 2:其它分类',
  `isopen` int(1) unsigned DEFAULT '1' COMMENT '是否开启',
  `isfinishseo` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否完成优化设置',
  `displayorder` int(4) unsigned DEFAULT '9999' COMMENT '排序',
  `isnav` int(1) unsigned DEFAULT '0' COMMENT '是否开启导航',
  `templetpath` varchar(255) DEFAULT NULL COMMENT '目的地模板',
  `ishot` int(1) unsigned DEFAULT '0' COMMENT '是否热门',
  `litpic` varchar(255) DEFAULT NULL COMMENT '封面图',
  `piclist` text COMMENT '目的地图片',
  `istopnav` tinyint(3) DEFAULT '0' COMMENT '是否开启智能导航',
  `pinyin` varchar(255) DEFAULT NULL COMMENT '拼音',
  `templet` varchar(255) DEFAULT NULL COMMENT '模板路径',
  `iswebsite` int(1) DEFAULT '0' COMMENT '是否开启子站',
  `weburl` varchar(50) DEFAULT NULL COMMENT '子站域名',
  `webroot` varchar(50) DEFAULT NULL COMMENT '子站目录',
  `webprefix` varchar(50) DEFAULT NULL COMMENT '子站主机头',
  `opentypeids` varchar(255) DEFAULT NULL COMMENT '针对其它栏目此目的地是否开启',
  PRIMARY KEY (`id`),
  KEY `IDX_PINYIN` (`pinyin`) USING BTREE,
  KEY `IDX_PID` (`pid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='目的地总表';-- <xjx> --
