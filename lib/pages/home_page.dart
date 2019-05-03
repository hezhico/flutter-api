import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'dart:convert';

import '../api/home_com.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String HomePageCon = "正在获取数据";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getHomePage().then((result) {
      setState((){
        // HomePageCon = result.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('趣味外卖'),
        elevation: 4, // banner 的阴影
      ),
      body: FutureBuilder(
         future: getHomePage(),
         builder: (context, future) {
          //  print(future.data);
           if(future.hasData) {
             print('222${future.data}');
            //  var data = json.decode(future.data);
             print(future.data['code']);
             List<Map> list = (future.data['data'] as List).cast();
             return Column(
               children: <Widget>[
                 SwiperBanner( SwiperList:list ),
               ],
             );
            //  return Center(child: Text("正在加载1"),);
           }else {
             return Center(child: Text("正在加载"),);
           }
         },
      )
    );
  }
}


class SwiperBanner extends StatelessWidget {

  final List SwiperList;
  SwiperBanner({Key key, this.SwiperList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Swiper(
        itemBuilder: (BuildContext content, int index){
          return Container(
            // child: SwiperList[index],
            child: Text('${SwiperList[index]['title']}'),
            decoration: new BoxDecoration(
              border:  Border.all(width: 2.0, color: Colors.lightBlue)
            )
          );
        },
        itemCount: SwiperList.length,
        autoplay: true,
      ),
    );
  }
}