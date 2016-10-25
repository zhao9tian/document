create table 'goods_resource'(
	`id` bigint(20) not null auto_increment comment '资源位唯一标志',
	`title` varchar(50) not null default '' comment '标题',
	`img_url` varchar(100) not null default '' comment '图片地址URL',
	`goods_id_list` varchar(255) not null default '' comment '商品Idlist',
	primary key (`id`)
)engine = innodb default charset=utf8mb4 comment '商品资源位表'