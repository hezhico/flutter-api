// ui库
import 'package:flutter/material.dart'; // android 风格
import 'package:flutter/cupertino.dart'; // ios 风格
import './pages/index_page.dart';
// 入口函数
void main() => runApp(MyApp());

// 无状态组件
class MyApp extends StatelessWidget {
  // 重写build方法
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '百姓生活', // 基本没用
      debugShowCheckedModeBanner: false, // 关闭右上角的debug
      theme: ThemeData( // ui库 自带的主题， 支持自定义
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
    );
  }
}

