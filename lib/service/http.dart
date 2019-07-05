import 'package:dio/dio.dart';
import 'dart:io';
import './serviceConfig.dart';


Future getLogin() async{

  try{
    print('开始login');
    Response response;
    Dio dio = new Dio();
    dio.options.contentType= ContentType.parse("application/json");
    // var formData = {'lon':'115.02932','lat':'35.76189'};
    response = await dio.post(servicePath['login'], data:{"id":12,"name":"wendu"});
    if(response.statusCode==200){
      // print(response.data)
      return response.data;
    }else{
      throw Exception('error.........');
    }
  }catch(e){
    return print('ERROR:======>${e}');
  }

}