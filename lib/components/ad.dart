import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';


class AdBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // child: new Image.asset('lib/image/recommend01.jpg'),
      child: InkWell(
        onTap: _lanchURL,
        child: new Image.asset('lib/image/recommend01.jpg'), // 本地资源的访问
      ),
    );
  }

  void _lanchURL() async{
    String url ="tel:17557283492";
    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'url 不能访问';
    }
  }
}