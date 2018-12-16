-- 表的结构：sline_spot_ticket --
CREATE TABLE `sline_spot_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spotid` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '门票名称',
  `tickettypeid` int(11) unsigned DEFAULT NULL COMMENT '门票类型id',
  `sellprice` varchar(255) DEFAULT NULL COMMENT '票面价格',
  `ourprice` varchar(255) DEFAULT NULL COMMENT '优惠价格',
  `memberdayprice` varchar(255) DEFAULT NULL COMMENT '会员价(弃用)',
  `paytype` varchar(255) DEFAULT NULL COMMENT '支付方式',
  `award` int(11) unsigned DEFAULT NULL COMMENT '会员预订返现奖金',
  `description` varchar(255) DEFAULT NULL COMMENT '门票描述',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `modtime` int(10) unsigned DEFAULT NULL COMMENT '修改时间',
  `displayorder` int(11) unsigned DEFAULT '9999' COMMENT '排序',
  `number` int(11) DEFAULT NULL COMMENT '门票数量(库存)',
  `bnum` varchar(255) DEFAULT NULL COMMENT '已被预订数量',
  `mnum` varchar(255) DEFAULT NULL COMMENT '会员限制预订数量',
  `startdate` varchar(255) DEFAULT NULL COMMENT '限制开始日期',
  `enddate` varchar(255) DEFAULT NULL COMMENT '限制结束时间',
  `jifencomment` int(11) DEFAULT '0' COMMENT '评论送积分',
  `jifentprice` int(11) DEFAULT '0' COMMENT '积分抵现金',
  `jifenbook` int(11) DEFAULT '0' COMMENT '预订送积分',
  `dingjin` varchar(255) DEFAULT NULL COMMENT '定金',
  PRIMARY KEY (`id`),
  KEY `IDX_SPOTID_OURPRICE` (`spotid`,`ourprice`) USING BTREE,
  KEY `IDX_SPOTID_SELLPRICE` (`spotid`,`sellprice`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='景点门票表';-- <xjx> --

