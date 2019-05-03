import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_page.dart';
import 'cate_page.dart';
import 'cart_page.dart';
import 'mine_page.dart';


class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  // 底部bar
  final List<BottomNavigationBarItem> bottomTabs = [
    new BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: new Text("首页")
    ),
    new BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      title: new Text("分类")
    ),
    new BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.shopping_cart),
      title: new Text("购物车")
    ),
    new BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: new Text("会员中心")
    ),
  ];
  // 底部bar 对应的body
  final List tabBodies  = [
    new HomePage(),
    new CatePage(),
    new CartPage(),
    new MinePage(),
  ];

  int _currentIndex = 0 ;
  var _currentPage;

  @override
  void initState() {
    // TODO: implement initState
    _currentPage = tabBodies[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(title: new Text("shouye"),),
      body:_currentPage,
      bottomNavigationBar: CupertinoTabBar (
        // type: BottomNavigationBarType.fixed, // 底部tab 超过四个之后
        currentIndex: _currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
             _currentIndex = index;
             _currentPage = tabBodies[index];         
          });
        },
      ),
    );
  }
}