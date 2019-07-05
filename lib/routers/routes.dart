import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import './router_handler.dart';

class Routes {
  static String root='/';
  static String detailsPage = '/detail';
  static String detailsList = '/detailsList';
  static String devicesList = '/devicesList';

  static void configureRoutes(Router router){
    router.notFoundHandler= new Handler(
      handlerFunc: (BuildContext context, Map<String,List<String>> params){
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
      }
    );
    // 登录
    router.define(detailsPage,handler:detailsHanderl);
    // 列表详情页
    router.define(detailsList,handler:detailsListHandler);
    // 设备信息
    router.define(devicesList, handler: devicesHandler);
  }
}