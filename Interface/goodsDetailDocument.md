# FreshFun 悦选商品详情页接口文档

> 版本：1.0.0
>
> 作者：迈克
>
> 创建时间：2016年10月12日
>

## 接口列表

### 1.index页商品列表接口

**接口** : https://www.freshfun365.com/FreshFun/goods/queryGoodsDetail.do

**方法** : get

**参数** : 

``` 
goodsId;
```

**返回** :

``` 
{
  status: {
    code: 1001,  //所有的成功都是1001，1022代表用户未登录
    msg: ""
  },
  data: {
   goodsInfo: {
       "goodsId":55,
       "goodsName":"甜蜜整颗心的星空糖",//商品名称
       "goodsDes": "甜而不腻追剧必备手工星空糖 一盒 12g x 9瓶",//商品描述	   "actualMoney": "43.80",//实际售价
       "originMoney": "500",//商品标价
       "ffunerSaid": "酒品呈淡黄色；具有典型的芳香、面包香，果香浓郁；酒体口感柔顺、香甜、上口非常清爽，带有少量气泡，美妙至极",//悦选小编说
	   "bannerImg":"/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg",//商品轮播图
	   "standardImg": "/image/2016/9/13/1473757743180.jpg",//商品规格图
	    "detailImg": "/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg","/image/2016/9/13/1473757743180.jpg"//商品详情图 
	 
    }
	"fetcherId" = 5555;
}

```
