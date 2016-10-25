

**商品接口文档**



1	接口名：goods/recommendList.do  推荐列表

```
method : get
入参 ： 无
出参 ： status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
          bannerList ：[{					// banner列表
             bannerId : 345343,		//编号
             bannerImg : "image/2342342.png",	// banner图
             url : "https://www.freshfun365.com"	//点击banner图跳转的地址
          }],
          selectionList ：[{				// 精选列表
             	goodsId : '123',  // 商品编号
        		goodsName : '少女心桃红起泡酒',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		goodsDesc : '给自己一个浪漫的起泡酒',	//商品描述
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
          }],
           specialList ：[{				// 专题列表
             	specialInfoImg : "image/1234.png", //专题详情图片
      			specialDesc : "常常未了早上多睡会，只能赶时间....", //专题描述
     	 		goodsList : [{		//商品推荐
        			goodsId : '123',  // 商品编号
        			goodsName : '饼干',  //商品名称
        			goodsImg : 'image/778899.png',  // 商品图片地址
        			shopMoney : 28.00,  // 商品实际销售价格
        			marketMoney : 42.00,  //参考价格
      			}]
           }]
  		}
```

2	接口名：goods/getAlcoholType.do	酒水列表

```
method : get
入参 ：107 - 酒水对应的编号	page - 当前页码	pageSize - 显示数量
出参：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data: {
         	alcoholImg : "image/2342342.png",
         	goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
     	 }]
  	}
```

3	接口名：goods/getSnacksType.do	零食列表

```
  method : get
  入参 ：106 - 零食对应的编号		page	pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data: {
         	snacksImg : "image/2342342.png",
         	goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述		
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
     	 }]
  	}
```

4	接口名：goods/getSugarType.do	糖巧列表

```
  method : get
  入参 ：103 - 糖巧对应的编号		page 	pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		sugarImg : "image/737745456.png",		//糖巧顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  	}
```

5	接口名：goods/getGoodsList.do		//推荐商品列表

```
  method : get
  入参 ：page - 当前页码	pageSize - 每页显示商品的数量
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : [{
          	goodsId : '123',  // 商品编号
        	goodsName : '饼干',  //商品名称
        	goodsDesc : '特级饼干',		//商品详细描述
        	goodsImg : 'image/778899.png',  // 商品图片地址
        	shopMoney : 28.00,  // 商品实际销售价格
        	marketMoney : 42.00,  //参考价格
  		}]
```

6	接口名：goods/getTeaType.do	茶饮列表

```
  method : get
  入参 ：101 - 对应茶饮编号	page - 当前页码	 pageSize - 页码显示的数量
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		teaImg : "/image/9278923.png",	//茶顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

7	接口名：goods/getFreshType.do  生鲜列表

```
  method : get
  入参 ：108 - 生鲜对应的编号		page	pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		freshImg : "/image/09789789.png",		//生鲜顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

8	接口名：goods/getTablewareType.do 餐具列表

```
  method :  get
  入参 ：105 - 餐具对应编号		page		pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		tablewareImg : "/image/24234234.png",		//餐具列表顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',			//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

9	接口名：goods/getFastFoodType.do  速食列表

```
  method : get
  入参 ：104 - 速食对应编号		page	pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		foodImg : "/image/77373.png"	//速食顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : "特级饼干",		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

10	接口名：goods/getSpecialTheme.do  专题接口

```
  method : get
  入参 ：无
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		specialImg : "image/234353242.png"	//专题图片
      		goodsList : [{		//商品列表
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : "好吃",	//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

11	接口名：goods/getBannerDetails.do  banner详情接口

```
  method : get
  入参 ：bannerId
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
     	 	 	bannerInfoImg : "image/123456.png", // banner详情图
      			bannerDesc : "从小打大作为小卖部的常驻会员..." //描述
      			goodsRecomment : [{		//商品推荐
        			goodsId : '123', // 商品编号
        			goodsName : '饼干', //商品名称
        			goodsDesc : "好吃",		//商品详细描述
        			goodsImg : 'image/778899.png', // 商品图片地址
        			shopMoney : 28.00, // 商品实际销售价格
        			marketMoney : 42.00, //参考价格
      			}]
			}  
  补充 ： 后续活动页banner接口待定
```

12 	接口名：goods/getSpecialDetails.do	专题详情接口

```
	method : get
	入参 ： specialId
	出参 ： status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      			specialInfoImg : "image/1234.png", //专题详情图片
      			specialDesc : "常常未了早上多睡会，只能赶时间....", //专题描述
     	 		goodsList : [{		//商品推荐
        			goodsId : '123',  // 商品编号
        			goodsName : '饼干',  //商品名称
        			goodsImg : 'image/778899.png',  // 商品图片地址
        			goodsDesc : "好吃",			//商品详细描述
        			shopMoney : 28.00,  // 商品实际销售价格
        			marketMoney : 42.00,  //参考价格
      			}]
  		}
	
	
```

13   接口名 ：goods/getGoodsDetails.do	商品详情接口

```
	method : get
	入参 ：goodsId		//商品编号
	出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
  			specification : {"key":"value","brand","品牌"},		//商品规格
      		goods : { 
      				goodsId : '123',  // 商品编号
                    goodsName : '饼干',  //商品名称
                    goodsDesc : "充满童趣好吃不胖的手工烘培曲奇饼干..."		//商品描述
                    description : "下午茶时间，一杯英式伯爵红茶"		//悦选小编说
                    shopMoney : 28.00,  	// 商品实际销售价格
                    marketMoney : 42.00,  		//参考价格
                    bannerImg : 'image/778899.png,image/23423.png',  // 商品banner图
                    detailImg : "image/89932.png,image/9789234.png",	// 商品详情图
        	}
  		}
```
14	获取商品规格属性

```
接口名		goods/queryGoodsStandard.do	获取商品规格
method : get
response :
{
  status: {
    code: 1001,  //所有的成功都是1001
    msg: "添加成功！"
  },
  data: {
        goodsStandard : [
          {"key":"name" ,"name":"品名"},
          {"key":"brand" , "name":"品牌"},
          {"key":"productPlace" , "name":"产地"},
          {"key":"standard" , "name":"规格"},
          {"key":"netContents" , "name":"净含量"},
          {"key":"shelfLife" , "name":"保质期"},
          {"key":"storageMethod" , "name":"存储方式"},
          {"key":"ingredientList" , "name":"配料表"},
          {"key":"isSugary" , "name":"是否含糖"},
          {"key":"isOrganic" , "name":"是否有机"},
          {"key":"isImported" , "name":"是否进口"},
          {"key":"isBoxPacked" , "name":"是否盒装"},
          {"key":"packageComponent" , "name":"套餐分量"},
          {"key":"taste" , "name":"口味"},
          {"key":"facility" , "name":"功能"},
          {"key":"unsuitable" , "name":"不适宜人群"},
          {"key":"suitable" , "name":"适宜人群"},
          {"key":"productForm" , "name":"产品剂型"},
          {"key":"foodAdditives" , "name":"食品添加剂"},
          {"key":"setCycle" , "name":"套餐周期"},
          {"key":"factoryName" , "name":"厂名"},
          {"key":"factorySite" , "name":"厂址"},
          {"key":"productStandardNum" , "name":"产品标准号"},
          {"key":"freshStoreTemp" , "name":"生鲜储存温度"},
          {"key":"proof" , "name":"酒精度数"},
          {"key":"degree" , "name":"度数"},
          {"key":"adaptiveScene" , "name":"适用场景"},
          {"key":"packingMethod" , "name":"包装方式"},
          {"key":"packingType" , "name":"包装种类"},
          {"key":"wineStyle" , "name":"葡萄酒种类"},
          {"key":"suitSpecification" , "name":"套装规格"},
          {"key":"decanteDuration" , "name":"醒酒时间"},
          {"key":"particularYear" , "name":"年份"},
          {"key":"smell" , "name":"香味"},
          {"key":"colourSort" , "name":"颜色分类"},
          {"key":"styleType" , "name":"风格类型"},
          {"key":"size" , "name":"尺寸"},
          {"key":"specialty" , "name":"特产品种"},
         ]
  }
}
```