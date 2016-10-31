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

**接口** :     /goodsSort/queryBannerSort.do

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
        			{themeId:12 , img:"" , url:""},
        			{themeId:13 , img:"" , url :""},
        			...
        		] 
        }
        	
    }	
```

#### 2.保存专题排序

##### 接口  :  /goodsSort/addBannerSort.do

##### 请求方式  :  post

##### 参数 

```
 {
  bannerSort : [
        			{themeId:12 , img:"" , url : ""},
        			{themeId:13 , img:"" , url :"" },
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

#### 3.通过专题Id判断专题是否存在

##### 接口  :  /goodsTheme/isExistThemeByThemeId.do

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
                    }
}	
```

##### 
