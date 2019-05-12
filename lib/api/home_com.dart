import 'package:dio/dio.dart';  // http 请求模块
import '../config/config.dart'; // 基础路径的配置文件
// import 'dart:io';   // contentType 对象


Future getHomePage() async {
  // http 请求可能失败
  try {
    Response response;
    Dio dio = new Dio();

    dio.options.connectTimeout = 5000;
    dio.options.receiveTimeout = 3000;
    
    var params = {
      'token': '123456',
    };
    response = await dio.post(servicePath['homePageContext'], data: params);
    return response.data;
    
  } catch (e) {
  }
}

