create table `goods_property` (
	`id` bigint(20) unsigned not null auto_increment comment '商品相关属性', 
	`key` varchar(20) not null default '' comment '属性key',
	`value` varchar(2000) not null default '' comment '属性值',
	primary key (`id`),
	key `idx_key` (`key`)
) engine=innodb default charset=utf8mb4 comment='商品属性表' 