### 物流接口

<u>***editor : qucheng***</u>

<u>***time : 2016-11-9***</u>

<u>***interfaceName : ../logistical/queryLogisticalByOrderId.do***</u>



### description : 

##### 1.后台接口需要同步更新,包括有一個录入订单信息，查看订单信息

##### 2.接口需要配置一份文档. 物流公司编号的文档

##### 3.excel文档放在git上c端页面接口的目录下的物流下面



### request

method : get

args:

```
{
  orderId : 201600121		订单Id（整型）
}
```

### response

```
{
  status : {
    code : 1001 ,   				success
    msg : "请求成功"
  }
  data : {
    shipperCode :	GTO,		物流公司编码GTO 对应国通
    logisticCode : 43098232342,		物流单号
    traces : [
      {
        content : "这个sb已经收件" ,		物流内容
        time : "2016-10-09 20:26:29"	时间点
      },
      {
        content : "这个sb已经发件" ,		物流内容
        time : "2016-10-08 20:26:29"	时间点
      },
      {}
      。。。
    ]
  }
}
```

