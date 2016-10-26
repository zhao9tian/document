create table `goods_img`(
	`id` bigint(20) unsigned not null auto_increment comment '图片信息标识',
	`goods_id` bigint(20) unsigned not null default '0' comment '商品ID',
	`detail_img` varchar(500) not null default '' comment '详情图片',
	`carousel_img` varchar(500) not null default '' comment '轮播图片',
	 primary key (`id`),
	 key `idx_goodsId` (`goods_id`)
)engine = innodb default charset=utf8mb4 comment '商品图片图'