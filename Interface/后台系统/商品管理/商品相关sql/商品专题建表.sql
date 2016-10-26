create table `goods_theme`(
	`id` bigint(20) not null auto_increment comment '资源位唯一标志',
	`title` varchar(50) not null default '' comment '标题',
	`img_url` varchar(100) not null default '' comment '图片地址URL',
	`is_forbidden` tinyint(3) not null default '0' comment '是否禁用 0: 禁用 1:启用',
	`goods_id_list` varchar(255) not null default '' comment '商品Idlist',
	`created` bigint(20) not null default '0' ,
	`updated` bigint(20) not null default '0' , 
	primary key (`id`),
	key `idx_title` (`title`)
)engine = innodb default charset=utf8mb4 comment '商品专题表'