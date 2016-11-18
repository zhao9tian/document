# 地址修改接口文档（IOS）

> 版本：1.0
>
> 作者：子铭
>
> 创建时间：2016-11-17
>
> 修改时间：2016-11-17

## 接口列表

#### 1.新增地址接口

**接口名称**：/address/addAddressIos.do

**请求方式**：post

**入参**：

```
{
	userId:245777,				//用户id
	name:"子铭",					//收货人名称
	tel:"15038292019",			//收货人手机号
	provCode:110000,            //省级代码
    cityCode:110100,            //市级代码
    distCode:110101,	         //区县代码
	address:"文二西路738号",		//详细地址
	isDefault:1					//是否为默认地址,1为默认，0为非默认
}
```

**出参**：

```
status{
	code:1001,
	msg:"请求成功"
},data{
  addressId:12553
}
```

#### 2.修改地址接口

**接口名称**：/address/modifyAddressIos.do

**请求方式**：post

**入参**：

```
{
	addressId:12553,				//地址id
	userId:245777,				//用户id
	name:"子铭",					//收货人名称
	tel:"15038292019",			//收货人手机号
	provCode:110000,            //省级代码
    cityCode:110100,            //市级代码
    distCode:110101,	         //区县代码
	address:"文二西路738号",		//详细地址
	isDefault:1				  //是否为默认地址,1为默认，0为非默认
}
```

**出参**：

```
status{
	code:1001,
	msg:"请求成功"
},data{
  addressId:12553
}
```

#### 3.查询用户默认地址接口

**接口名称**：/address/getDefaultAddress.do

**请求方式**：get

**入参**：

```
userIdStr:"154566"
```

**出参**：

```
status{

	code:1001,         //1005，msg：没有默认地址

	msg:"请求成功"

},data{
	addressId:12553,				//地址id
	name:"子铭",					//收货人名称
	tel:"15038292019",			//收货人手机号
	provCode:110000,			//省级代码
	cityCode:110100,				//市级代码
	distCode:110101,				//县区代码
	city:"吉林省长春市二道区",
	address:"文二西路738号",		//详细地址
}
```

**注意事项**：如果该用户无默认地址，默认返回最近修改的地址

#### 4.删除地址接口

**接口名称**：/address/removeAddress.do

**请求方式**：get

**入参**：

```
addressId:154322       //地址对象id
```

**出参**：

```
status{
	code:1001,
	msg:"请求成功"
}
```

#### 5.查询用户地址列表

**接口名称**：/address/getAllAddress.do

**请求方式**：get

**入参**：

```
userIdStr:"154244"
```

**出参**:

```
status{

	code:1001,

	msg:"请求成功"

},data{
  addressList:[
    {
      	addressId:12553,				//地址id
		name:"子铭",					//收货人名称
		tel:"15038292019",			//收货人手机号
		provCode:110000,			//省级代码
		cityCode:110100,				//市级代码
		distCode:110101,				//县区代码
		city:"吉林省长春市二道区",
		address:"文二西路738号",		//详细地址
		isDefault:1					//是否为默认地址,1为默认，0为非默认
    },{
      	addressId:12553,				//地址id
		name:"子铭",					//收货人名称
		tel:"15038292019",			//收货人手机号
		provCode:110000,			//省级代码
		cityCode:110100,				//市级代码
		distCode:110101,				//县区代码
		city:"吉林省长春市二道区",
		address:"文二西路738号",		//详细地址
		isDefault:0					//是否为默认地址,1为默认，0为非默认
    },
    ...,{
      	addressId:12553,				//地址id
		name:"子铭",					//收货人名称
		tel:"15038292019",			//收货人手机号
		provCode:110000,			//省级代码
		cityCode:110100,				//市级代码
		distCode:110101,				//县区代码
		city:"吉林省长春市二道区",
		address:"文二西路738号",		//详细地址
		isDefault:0					//是否为默认地址,1为默认，0为非默认
    }
  ]
}
```

**注意事项**：后端返回地址列表，第一个为默认的地址，没有默认只按照更新时间排序