create table `new_goods` (
	`id` bigint(11) unsigned not null auto_increment comment '商品Id --商品唯一标识',
	`name` varchar(20) not null default '' comment '商品名称 --对应后台商品标题',
	`title` varchar(30) not null default '' comment '商品标题 --对应后台商品副标题',
	`ffunsaid` varchar(160) not null default '' comment '悦选小编说',
	`shop_price` int(11) unsigned not null default '0' comment '商品售价',
	`origin_price` int(11) unsigned not null default '0' comment '商品原价',
	`cost` int(11) unsigned not null default '0' comment '商品成本价',
	`index_img` varchar(100) not null default '' comment '商品图片',
	`carouse_img` varchar(255) not null default '' comment '商品轮播图',
	`detail_img` varchar(255) not null default '' comment '商品详情图',
	`sale_num` int(11) unsigned not null default '0' comment '销量 --暂无统计',
	`stock_num` int(11) unsigned not null default '0' comment '库存',
	
	`is_on_sale` tinyint(3) unsigned not null default '0' comment '是否上架  0:下架 1:上架',
	`catalog_1` int(11) unsigned not null default '0' comment '一级类目 0:类目未填写 1:食品',
	`catalog_2` int(11) unsigned not null default '0' comment '二级类目 0:类目未填写 101:冲饮  102:保健品  103:酒水  104:零食  105:生鲜  106:速食/烘焙/调味品  107:糖巧点心 108厨具/餐具',
	`catalog_3` int(11) unsigned not null default '0' comment '三级类目 ',
	`catalog_4` int(11) unsigned not null default '0' comment '四级类目 ',
	
	`is_b_sale` tinyint(3) unsigned not null default '0' comment '是否在b端展示 0:不展示 1:展示',
	`is_agent` tinyint(3) unsigned not null default '0' comment '是否被代理 0:未被代理 1:已被代理',
	`store_id` bigint(20) unsigned not null default '0' comment '商户Id 暂无',
	`agent_id` bigint(20) unsigned not null default '0' comment '代理Id 默认为0',
	

	`agent_money` int(11) unsigned not null default '0' comment '代理费',
	`goods_strength` varchar(30) null default '' comment '产品优势',
	`agent_strength` varchar(30) null default '' comment '代理优势',
	
	`created` bigint(20) unsigned not null default '0' comment '商品录入时间',
	`updated` bigint(20) unsigned not null default '0' comment '商品信息修改时间',
 	`is_deleted` tinyint(3) unsigned not null default '0' comment '是否删除 0:未删除 1:已删除',

	PRIMARY key (`id`),
	key `idx_goodsName_saleNum_updated` (`name` , `sale_num` ,`updated`),
  key `idx_catalog2_catalog3_catalog4` (`catalog_2` , `catalog_3` , `catalog_4`),
	key `idx_catalog3_catalog4` (`catalog_3` , `catalog_4`	)
)engine=innodb default charset = utf8mb4 comment '新商品表'