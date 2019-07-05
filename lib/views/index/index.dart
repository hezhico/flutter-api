import 'package:flutter/material.dart';

import './home_content.dart';
import './address_db.dart';
import './find.dart';
import './other.dart';
import './mine.dart';

class IndexHome extends StatefulWidget {
  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  List<Widget> list = new List();
  // 默认选中的tab
  int _currentIndex = 0;

  @override
  void initState() { 
    super.initState();
    list..add(new AddresDbComponent())
        ..add(new HomeContent())
        ..add(new FindComponent())
        ..add(new OtherComponent())
        ..add(new MineCenter());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: list[_currentIndex],),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.lightBlue,
              ),
              title: Text('首页', style: TextStyle(color: Colors.lightBlue))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.phone_android,
                color: Colors.lightBlue,
              ),
              title: Text('通讯录', style: TextStyle(color: Colors.lightBlue))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.find_in_page,
                color: Colors.lightBlue,
              ),
              title: Text('发现', style: TextStyle(color: Colors.lightBlue))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.open_with,
                color: Colors.lightBlue,
              ),
              title: Text('其他', style: TextStyle(color: Colors.lightBlue))),
          new BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.lightBlue,
              ),
              title: Text('我', style: TextStyle(color: Colors.lightBlue))),
          
        ],
        type : BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[50],
        elevation: 8.0,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState((){
             _currentIndex= index;
           });
        },
      ),
    );
  }
}