-- 表的结构：sline_question_kindlist --
CREATE TABLE `sline_question_kindlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kindid` int(11) unsigned NOT NULL DEFAULT '0',
  `seotitle` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tagword` varchar(255) DEFAULT NULL,
  `jieshao` text,
  `isfinishseo` int(1) unsigned NOT NULL DEFAULT '0',
  `displayorder` int(4) unsigned DEFAULT '9999',
  `isnav` int(1) unsigned DEFAULT '0' COMMENT '是否导航',
  `ishot` int(1) unsigned DEFAULT '0' COMMENT '是否热门',
  PRIMARY KEY (`id`),
  KEY `IDX_KINDID` (`kindid`) USING BTREE,
  KEY `IDX_DISPLAYORDER_KINDID` (`displayorder`,`kindid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问答目的地表(弃用)';-- <xjx> --

