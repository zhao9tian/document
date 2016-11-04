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
             themeId : 345343,		//专题编号  为活动页时默认值为0
             img : "image/2342342.png",	// banner图
             url : "https://www.freshfun365.com",	//点击banner图跳转的地址
             isCampaign : 0     //是否为活动页 0:专题页  10:活动页
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
           		specialId : "2434",		//专题编号
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
           goodsSort ：[{				// 商品排序列表
             	goodsId : '123',  // 商品编号
        		goodsName : '少女心桃红起泡酒',  //商品名称
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		goodsDesc : '给自己一个浪漫的起泡酒',	//商品描述
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
          }],
          limitGoodsList : [{       //限时购商品
                goodsId : '123',    //商品编号
                goodsImg : 'image/778899.png',      //商品图片
                shopMoney   : 22.00,        //销售价
                marketMoney :   42.00,       //参考价
                startTime : 242342,         //距离开始时间
                endTime : 3242332,          //距离结束时间
          }]
  		}
```

2	接口名：goods/getCategory.do	类别接口

```
method : get
入参 ：categoryKey : 107 - 酒水对应的编号	page - 当前页码	pageSize - 显示数量
出参：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data: {
         	img : "image/2342342.png",
         	goodsList : [{
        		goodsId : '123',  // 商品编号
        		goodsName : '饼干',  //商品名称
        		goodsDesc : '特级饼干',		//商品详细描述
        		goodsImg : 'image/778899.png',  // 商品图片地址
        		shopMoney : 28.00,  // 商品实际销售价格
        		marketMoney : 42.00,  //参考价格
     	 }]
  	}
  	
3   接口名：goods/getGoodsList.do   更多商品
    method : get
    入参：page pageSize
    出参：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : [{
        		    goodsId : '123',  // 商品编号
        			goodsName : '饼干',  //商品名称
        			goodsImg : 'image/778899.png',  // 商品图片地址
        			shopMoney : 28.00,  // 商品实际销售价格
        			marketMoney : 42.00,  //参考价格
      			}]
```

10	接口名：goods/getSpecialTheme.do  专题接口

```
  method : get
  入参 ：page pageSize
  出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
      		specialList ：[{				// 专题列表
           		specialId : "2434",		//专题编号
             	specialInfoImg : "image/1234.png", //专题详情图片
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
      			goodsList : [{		//商品推荐
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
        			isDiscount : 0         //是否为折扣商品
      			}]
  		}
	
	
```

13   接口名 ：goods/findGoodsDetails.do	商品详情接口

```
	method : get
	入参 ：goodsId		//商品编号
	出参 ：status: {
    	code: 1001,  //所有的成功都是1001
    	msg: "成功"
  		},
  		data : {
  			specification : [{"key":"品牌","name":"爱马仕"}],		//商品规格
      		goods : { 
      				goodsId : '123',  // 商品编号
                    goodsName : '饼干',  //商品名称
                    goodsDesc : "充满童趣好吃不胖的手工烘培曲奇饼干..."		//商品描述
                    descriptionStr : "下午茶时间，一杯英式伯爵红茶"		//悦选小编说
                    shopMoney : 28.00,  	// 商品实际销售价格
                    marketMoney : 42.00,  		//参考价格
                    bannerImgList : '[image/778899.png,image/23423.png]',  // 商品banner图
                    detailImgList : '[image/89932.png,image/9789234.png]',	// 商品详情图
                    isDiscount : 0   5    10  //是否为折扣商品 0 正常商品    5限时打折商品and未开始     10限时打折商品and进行中
                 startTime: 28883   时间戳/1000
                    endTime: 88888   时间戳/1000
        	}
  		}
```
```