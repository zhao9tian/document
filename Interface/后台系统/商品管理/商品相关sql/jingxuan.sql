-- 精选
select `id`, `goods_type`, `goods_type_img`, `goods_info_des`, `goods_info_img` from goods_type where
      is_deleted = 0 and goods_type = '精选'

-- 查询分类表里面的精选关联关系

select id , goods_id from gtype_vs_gid where goods_type_id = 11 

delete from gtype_vs_gid where id in (1359,1362)

select id as goodsId  , goods_name as goodsName from goods where goods_name like '%限时特卖%'  
-- 91 「限时特卖」山糯米酒39.9
-- 2071299 「限时特卖」桃花水果酒28.99元

2071388
91
2071299
64


select * from goods where id in (select goods_id from goods_selection)

select id , goods_name from goods where id in(select goods_id from gtype_vs_gid where goods_type_id = 11)

113 天使之手白葡萄酒
64  一款神奇的果酱
2071337 来自曲奇的故乡
2071334 女神哆啦咪子
91 「限时特卖」山糯米酒39.9

113 

2071341 螃蟹
91
127 少女心




