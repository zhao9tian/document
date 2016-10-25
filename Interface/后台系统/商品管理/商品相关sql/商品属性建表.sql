create table 'goods_property' (
	`id` int(11) unsigned not null auto_increment ,
	`key` varchar(20) not null default '' comment '属性key',
	`value` varchar(255) not null default '' comment '属性值',

	primary key (`id`),
	key `idx_key` (`key`)
) engine=innodb default charset=utf8mb4 comment='商品属性表' 