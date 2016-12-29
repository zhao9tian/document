品牌美食c端接口文档

editor > qucheng

created > 2016-12-29

desc : 品牌美食c端接口文档



1. 品牌美食列表

   接口名:queryBrandFoodList.do

   request

   ```

   ```

   response

   ```
   {
     {
     status:{
       code:1001,
       msg:"请求成功"
     },
     brandFoodsList:[
     	{
     		brandFoodId:1,
     		brandFoodName:"品牌美食",
     		brandImg:"http://.....",
     		articleList : [
             {
             	title : "title",
             	img : "http" ,
             	url : "文章链接"
             },
             {},
             {}
     		]
     	},
     	{},
     	{},
     	{}....
     	]
     
   }
   }
   ```

   ​

2. 品牌美食详情

   接口名 : queryBrandFoodDetailById.do

   request

   ```
   {
     brandFoodId : 300
   }
   ```

   response


   ```
   {
       status:{
         code:1001,
         msg:"请求成功"
       },
    	brandFoodDetail:{
         	brandFoodName : "pinpaimeishi",
   		brandFoodImg :"http://dadasa",
   		brandFoodDesc :"yiduanshuoming",
   		articleList : [
             {
             	title : "title",
             	subtitle : "subtitle",
             	img : "http" ,
             	url : "文章链接"
             },
             {},
             {}
     		]
    	}
    }
   ```

   ​