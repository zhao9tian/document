-- 数据迁移


TRUNCATE goods_theme

TRUNCATE goods_base

数据迁移前先备份   ，  再进行数据校验 ，校验通过进行迁移 ，删除数据表

数据校验
1.商品表总数据goods和商品详情总数据goods_detail是否相等
select count(id) from goods
select count(id) from goods_detail

如果商品总数大于商品详情数就说明有些详情是不存在的 , 查询出没有详情的商品
select id , goods_name from goods where id not in (select goods_id from goods_detail)
否则删除多余的详情
select id , goods_id from goods_detail where goods_id not in (select id from goods)
mysql 不允许先select同一张表中的值再update ，需要建立一张中间的结果集表
delete from goods_detail where id in (select a.id from (select id from goods_detail gd where goods_id not in (select id from goods ) )a)

2.专题表校验
查询所有专题,banner

select count(*) from special_theme  -- 查看记录数
select group_concat(id) from special_theme -- 1,2,3,4,5,7,11,12,13,14,15
select theme_id from stid_vs_gid group by theme_id  -- 4,14 多了个6

查询关联表里面多余的专题
select theme_id from stid_vs_gid where theme_id not in (select id from special_theme)
查询没有商品的专题
select id from special_theme where id not in (select theme_id from stid_vs_gid group by theme_id )

删除关联表里面存在但不在专题表里面的id
delete from stid_vs_gid where theme_id not in (select id from special_theme)

如果专题下面没有商品还是保留,goods_id_list以''保存


3.banner表校验
select count(*) from special_mall
select group_concat(id) from special_mall
select mall_id from smid_vs_gid group by mall_id -- 18条

查询关联表里面多余的banner
select mall_id from smid_vs_gid where mall_id not in (select id from special_mall)

查询没有商品的banner
select id from special_mall where id not in (select mall_id from smid_vs_gid group by mall_id )

先删除关联表里面存在但不在banner表里面的id
delete from smid_vs_gid where mall_id not in (select id from special_mall)
如果banner下面没有商品还是保留,goods_id_list以''保存

插入到新的goods_theme 之后查询条数是否对应,之前的专题和bannerId就无效了, 用新的id



-- 1.goods基本属性迁到goods_base
-- 2.goods_detail 迁到goods_base  切割字符串，title , sub_title ,小编说
insert into goods_base (id , title , sub_title , des , shop_price , origin_price , img , is_on_sale , created , updated) 
	select g.id , substring_index((select gd.des from goods_detail gd where gd.goods_id = g.id) ,'@`',1),
	substring_index((select substring_index((select gd.des as desccc from goods_detail gd where gd.goods_id = g.id),'@`', -2)),'@`',1),
	substring_index((select gd.des from goods_detail gd where gd.goods_id = g.id) ,'@`',-1) ,
	shop_price , market_price , goods_img , is_on_sale , gmt_create , gmt_modified from goods g

-- 3.goods_detail 迁移到 goods_img  257
insert into goods_img (goods_id , detail_img , carousel_img) select goods_id , detailImgPath , carouselImgPath from goods_detail gd 
-- 4 插入special_mall数据
insert into goods_theme ( theme_des , img , is_forbidden , goods_id_list ,created , updated) 
select  mall_info_content , mall_img , if(is_deleted=0 , 1 , 0 ), 
(select concat('[',GROUP_CONCAT(goods_id) ,']') from smid_vs_gid where mall_id = sm.id) ,
 gmt_create , gmt_modified from special_mall sm 

-- 5 插入special_theme数据
insert into goods_theme ( theme_des , img , is_forbidden ,goods_id_list , created , updated) 
select  theme_info_content , theme_img , if(is_deleted=0 , 1 , 0 ) , 
if((select concat('[',GROUP_CONCAT(goods_id) ,']') from stid_vs_gid where theme_id = st.id) is null , '',
(select concat('[',GROUP_CONCAT(goods_id) ,']') from stid_vs_gid where theme_id = st.id)) ,
gmt_create , gmt_modified from special_theme st




select count(id) , mall_id from smid_vs_gid where mall_id in (select id from special_mall) group by mall_id
-- 根据专题Id分组查询分组专题下的Id 
 
select theme_id , count(goods_id) from stid_vs_gid group by theme_id 

select  theme_id from stid_vs_gid where theme_id in (select id from special_theme) GROUP BY theme_id
 

--------------------------------------------------------------------------------


select id , goods_id from goods_detail where goods_id not in (select id from goods )
-- update goods_base gb set 
-- title = substring_index((select des from goods_detail gd where gd.goods_id = gb.id) ,'@`',1),
-- sub_title = substring_index((select substring_index((select des from goods_detail gd where gd.goods_id = gb.id),'@`', -2)),'@`',1),
-- des = substring_index((select des from goods_detail gd where gd.goods_id = gb.id) ,'@`',-1) 
-- where gb.id=55

-- select substring_index((select substring_index((select des from goods_detail where goods_id = 55),'@`', -2)),'@`',1)
-- 4.将分类信息goods_type , gtype_vs_gid 迁到goods_base 二级类目catagory2   ,人工迁移

-- 现在启用的分类 7个
select id , goods_type as '分类名称' from goods_type where is_deleted = 0
-- 7个分类 下的所有商品数量
select count(*) from gtype_vs_gid where goods_type_id in(select id from goods_type where is_deleted = 0)
-- 每个分类下的商品数量
select count(id) , goods_type_id from gtype_vs_gid where goods_type_id in (select id from goods_type where is_deleted = 0) group by goods_type_id 


-- 5.精选迁移 goods_selection 手工迁移到 goods_property
-- 6.goods_sort 迁移到 goods_property 
-- 7.goods_relation 废弃

-- 8.专题和banner以及关联表迁到 goods_theme 表 is_deleted 是 0的是启用 1的是禁用


-- 插入special_mall数据
-- 查询goods_mall 下面的商品Id
select goods_id from smid_vs_gid where mall_id = 10
-- select concat('[',GROUP_CONCAT(goods_id) ,']')  from  smid_vs_gid where mall_id = 8
