-- 表的结构：sline_site_page --
CREATE TABLE `sline_site_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(255) DEFAULT NULL,
  `kindname` varchar(255) DEFAULT NULL COMMENT '页面名称',
  `pagename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='思途子站页面模块列表';-- <xjx> --

