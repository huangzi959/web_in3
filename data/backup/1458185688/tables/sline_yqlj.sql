-- 表的结构：sline_yqlj --
CREATE TABLE `sline_yqlj` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webid` int(2) unsigned DEFAULT '1' COMMENT '站点id',
  `sitename` varchar(50) DEFAULT NULL COMMENT '网站名字',
  `siteurl` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `addtime` int(10) unsigned DEFAULT NULL COMMENT '添加时间',
  `address` varchar(50) DEFAULT '0' COMMENT '显示栏目',
  `displayorder` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='友情链接';-- <xjx> --

