# C端后台—专题排序—接口文档

> 版本：1.0.0
>
> 作者：图腾
>
> 创建时间：2016年10月25日
>
> 修改时间：2016年10月27日

## 接口列表

#### 1.获取专题排序

**接口** :     /goods/queryBannerSort.do

**请求方式**  ：get

**参数** : 

``` 
不用传参
```

**返回** :
json

``` 
	{
        "status": {
                    "code": 1001,   1004    是错误
                    "msg": "请求成功"
                    },
        "data":{ 
        		bannerSort : [
        			{themeId:12 , img:""},
        			{themeId:13 , img:"" },
        			...
        		] 
        }
        	
    }	
```

#### 2.保存专题排序

##### 接口  :  /goods/addBannerSort.do

##### 请求方式  :  post

##### 参数 

```
{
  bannerSort : [
        			{themeId:12 , img:"" },
        			{themeId:13 , img:"" },
        			...
        		] 
}
```

##### 返回

```
{
        "status": {
                    "code": 1001,   1004    是错误
                    "msg": "请求成功"
        }
 }	
```

#### 3.通过专题Id获取专题信息(当做校验专题是否存在),在用户输入id失焦之后请求

##### 接口  :  /goods/queryThemeByThemeId.do

##### 请求方式  :  get

##### 参数

```
{
  themeId : 10001
}
```

返回

```
{
        "status": {
                    "code": 1001,   1004    不存在
                    "msg": "请求成功"
                    },
        "data" : {
          themeName : "我是一个专题"   ,          专题名称
          themeImg : "http/........jpg"   ,       专题图
          themeDes : "小编说"  ,				 小编说
          goodsIds : 12345,12346,12347 ,
        }
 }	
```

##### 
