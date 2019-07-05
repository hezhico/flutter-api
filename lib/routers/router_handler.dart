import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import '../views/index/index.dart';
import '../views/index/detail.dart';
import '../views/devices/device.dart';

Handler detailsHanderl = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String goodsId = params['id'].first;
    // print('index>details goodsID is ${goodsId}');
    // return DetailsPage(goodsId);
    return IndexHome();

  }
);

// 列表到个人详情页
Handler detailsListHandler = Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>> params){
    // String userId = params['id'].first;
    print('index>details goodsID is ${params}');
    // return DetailsPage(goodsId);
    return DetailPage(params);

  }
);

// 设备信息
Handler devicesHandler = Handler(
    handlerFunc: (BuildContext context,Map<String,List<String>> params){
      // String userId = params['id'].first;
//      print('index>details goodsID is ${params}');
      // return DetailsPage(goodsId);
      return DevicesPages();

    }
);


