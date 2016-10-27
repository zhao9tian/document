CREATE TABLE `goods_standard` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
	`goods_id` bigint(20) unsigned NOT NULL COMMENT '商品id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '品名（中文、英文）',
  `brand` varchar(20) NOT NULL DEFAULT '' COMMENT '品牌（中文、英文）',
  `product_place` varchar(20) NOT NULL DEFAULT '' COMMENT '产地（中文）',
	`goods_standard` varchar(20) NOT NULL DEFAULT '' COMMENT '规格',
  `net_contents` varchar(20) NOT NULL DEFAULT '' COMMENT '净含量（数字＋中英文文字自定义，单位：ml、g、kg)',
  `shelf_life` varchar(20) NOT NULL DEFAULT '' COMMENT '保质期(数字 单位：天、月、年）',
  `storage_method` varchar(20) NOT NULL DEFAULT '' COMMENT '储藏方式（中文）',
  `ingredient_list` varchar(20) NOT NULL DEFAULT '' COMMENT '配料表（中文）',
  `is_sugary` varchar(5)  NOT NULL DEFAULT '' COMMENT '是否含糖    是 否',
  `is_organic` varchar(5)  NOT NULL DEFAULT '' COMMENT '是否有机   是 否',
  `is_imported` varchar(5)  NOT NULL DEFAULT '' COMMENT '是否进口   是 否',
  `is_box_packed` varchar(5)  NOT NULL DEFAULT '' COMMENT '是否盒装   是 否',
  `package_component` varchar(20) NOT NULL DEFAULT '' COMMENT '套餐份量（数字，单位：人份）',
  `taste` varchar(20) NOT NULL DEFAULT '' COMMENT '口味（中文）',
  `facility` varchar(20) NOT NULL DEFAULT '' COMMENT '功能（中文）',
  `unsuitable` varchar(20) NOT NULL DEFAULT '' COMMENT '不适宜人群（中文）',
  `suitable` varchar(20) NOT NULL DEFAULT '' COMMENT '适宜人群（中文）',
  `product_form` varchar(20) NOT NULL DEFAULT '' COMMENT '产品剂型（中文）',
  `food_additives` varchar(20) NOT NULL DEFAULT '' COMMENT '食品添加剂',
  `set_cycle` varchar(20) NOT NULL DEFAULT '' COMMENT '套餐周期（中文 单位：周、月、年）',
  `factory_name` varchar(20) NOT NULL DEFAULT '' COMMENT '厂名 （中文）',
  `factory_site` varchar(20) NOT NULL DEFAULT '' COMMENT '厂址（中文、数字）',
  `product_standard_num` varchar(20) NOT NULL DEFAULT '' COMMENT '产品标准号（数字）',
  `fresh_store_temp` varchar(20) NOT NULL DEFAULT '' COMMENT '生鲜储存温度（数字，单位：℃）',
  `proof` varchar(20) NOT NULL DEFAULT '' COMMENT '酒精度数',
	`degree` varchar(20) NOT NULL DEFAULT '' COMMENT '度数（数字，单位：%vol）',
  `adaptive_scene` varchar(20) NOT NULL DEFAULT '' COMMENT '适用场景（中文）',
  `packing_method` varchar(20) NOT NULL DEFAULT '' COMMENT '包装方式（中文）',
  `packing_type` varchar(20) NOT NULL DEFAULT '' COMMENT '包装种类（中文）',
  `wine_style` varchar(20) NOT NULL DEFAULT '' COMMENT '葡萄酒种类（中文）',
  `suit_specification` varchar(20) NOT NULL DEFAULT '' COMMENT '套装规格（数字，单位:件装 或自定义）',
  `decante_duration` varchar(20) NOT NULL DEFAULT '' COMMENT '醒酒时间（数字 单位：分钟）',
  `particular_year` varchar(20) NOT NULL DEFAULT '' COMMENT '年份（数字＋文字自定义，1年以上、3年以下、5年及以上',
  `smell` varchar(20) NOT NULL DEFAULT '' COMMENT '香味（中文）',
  `colour_sort` varchar(20) NOT NULL DEFAULT '' COMMENT '颜色分类（中文）',
  `style_type` varchar(20) NOT NULL DEFAULT '' COMMENT '风格类型中文）',
  `size` varchar(20) NOT NULL DEFAULT '' COMMENT '尺寸（数字＋中英文文字自定义，例如43cm x 78cm）',
	`specialty` varchar(20) NOT NULL DEFAULT '' COMMENT '特产品种（中文）',
  `other` varchar(20) NOT NULL DEFAULT '' COMMENT '其他',
  PRIMARY KEY (`id`),
  KEY `idx_goodsId` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品规格';

