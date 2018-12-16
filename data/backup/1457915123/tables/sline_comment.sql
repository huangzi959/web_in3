-- 表的结构：sline_comment --
CREATE TABLE `sline_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(2) unsigned DEFAULT NULL COMMENT '栏目类型',
  `orderid` int(11) unsigned DEFAULT NULL COMMENT '订单id',
  `articleid` varchar(50) DEFAULT NULL COMMENT '文章产品自增id',
  `memberid` int(11) unsigned DEFAULT NULL COMMENT '会员id',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '是否是第一级评论',
  `content` mediumtext COMMENT '评论内容',
  `dockid` int(10) unsigned DEFAULT NULL COMMENT '停靠id',
  `score1` float(2,1) DEFAULT '0.0' COMMENT '评分1',
  `score2` float(2,1) DEFAULT NULL COMMENT '评分2',
  `score3` float(2,1) DEFAULT NULL COMMENT '评分3',
  `score4` float(2,1) DEFAULT '0.0' COMMENT '评分4',
  `isshow` int(1) DEFAULT '0' COMMENT '前台是否显示',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '评论时间',
  `level` int(1) unsigned DEFAULT '0' COMMENT '1:好评 2:中评 3 差评',
  `kindlist` varchar(255) DEFAULT NULL COMMENT '所属目的地',
  PRIMARY KEY (`id`),
  KEY `IDX_TYPEID_ARTICLEID` (`typeid`,`articleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='评论表';-- <xjx> --

