

**商品接口文档**



1	接口名：/recommendList.do  推荐列表

```
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
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
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
           }],
           goodsList ：[{					// 商品列表
             	goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
           }]
  		}
```

2	接口名：/getAlcoholType.do	酒水列表

```
入参 ：
出参：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data: {
         	alcoholImg : "image/2342342.png",
         	goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
     	 }]
  	}
```

3	接口名：/getSnacksType.do	零食列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data: {
         	snacksImg : "image/2342342.png",
         	goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
     	 }]
  	}
```

4	接口名：/getSugarType.do	糖巧列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		sugarImg : "image/737745456.png",		//糖巧顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  	}
```

5	接口名：/getBeautyType.do	美颜列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      			beautyImg : "image/78892342.png",		//美颜顶图
      			goodsList : [{
        			goodsId : '123',  // 商品编号
        			goodsName : '饼干',  //商品名称
        			goodsImg : 'image/778899.png',  // 商品图片地址
        			shopMoney : 28.00,  // 商品实际销售价格
        			marketMoney : 42.00,  //参考价格
      			}]
  		}
```

6	接口名：/getTeaType.do	茶饮列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		teaImg : "/image/9278923.png",	//茶顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

7	接口名：/getFreshType.do  生鲜列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		freshImg : "/image/09789789.png",		//生鲜顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

8	接口名：/getTablewareType.do 餐具列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		tablewareImg : "/image/24234234.png",		//餐具列表顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

9	接口名：/getFastFoodType.do  速食列表

```
  入参 ：
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		foodImg : "/image/77373.png"	//速食顶图
      		goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

10	接口名：/getSpecialTheme.do  专题接口

```
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
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
      		}]
  		}
```

11	接口名：/getBannerDetails.do  banner详情接口

```
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
        			goodsImg : 'image/778899.png', // 商品图片地址
        			shopMoney : 28.00, // 商品实际销售价格
        			marketMoney : 42.00, //参考价格
      			}]
			}  
  补充 ： 后续活动页banner接口待定
```

12 	接口名：/getSpecialDetails.do	专题详情接口

```
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
        			shopMoney : 28.00,  // 商品实际销售价格
        			marketMoney : 42.00,  //参考价格
      			}]
  		}
	
	
```

13   接口名 ：/getGoodsDetails.do	商品详情接口

```
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

