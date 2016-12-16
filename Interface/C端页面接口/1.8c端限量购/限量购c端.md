### 限量购c端

> Version  1.0.0
>
> Author 	渠成
>
> created 	2016/12/13
>
> description   两个限时购列表页 ， 一个详情页



#### 1.接口名 : 重用recommendList.do  

##### desc : 查询首页限量购商品

##### method ：get

##### request ： 

```
{}
```

##### response

```
{
	
  	indexLimitGoods : [
      {
        goodsId : 56 ,								商品Id
        title :	"我是限量购商品",  					商品标题
        limitStock : 5000,							限量购商品总库存
        limitLeave : 500,							限量购商品剩余库存
        limitPrice : "20.00"						限量购价格
        originPrice : "18.00"						原价
        goodsImg :"http:pic......"					商品图片
      },
      {},{},{}
    ]
  }
}
```





#### 2.接口名 : queryLimitGoodsList.do

##### desc : 点击查看更多   —— 查询限量购商品列表

##### method ：get

##### request ： 

```
{}
```

##### response

```
{
  status : {
    code : 1001,
    msg : "请求成功"
  }，
  data : {
    sortlimitGoods : [
      {
        goodsId : 56 ,								商品Id
        title :	"我是限量购商品",  				    商品标题
        subTitle : "我是副标题",						 副标题
        goodsImg : "http://....",					商品图片
        limitStock : 5000,							限量购商品总库存
        limitLeave : 500,							限量购商品剩余库存
        limitPrice : "20.00"						限量购价格
        originPrice : "18.00"						原价
        isLimitedSell : 0 							是否按限量价出售 0:是 1:否
      },
      {},{}....
    ]
  }
}
```



