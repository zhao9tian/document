create table `goods_theme`(
	`id` bigint(20) unsigned not null auto_increment comment '资源位唯一标志',
	`theme_des` varchar(255) not null default '' comment '专题描述',
	`img` varchar(100) not null default '' comment '图片地址URL',
	`is_forbidden` tinyint(3) unsigned not null default '0' comment '是否禁用 0: 禁用 1:启用',
	`goods_id_list` varchar(500) not null default '' comment '商品Idlist',
	`created` bigint(20) unsigned not null default '0' ,
	`updated` bigint(20) unsigned not null default '0' , 
	`is_deleted` tinyint(3) unsigned not null default '0' comment '0:未删除 1:已删除',
	primary key (`id`),
	key `idx_des` (`theme_des`)
)engine = innodb default charset=utf8mb4 comment '商品专题表'