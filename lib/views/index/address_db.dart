import 'package:flutter/material.dart';

import '../components/swiper.dart';
import '../components/nav_item.dart';


class AddresDbComponent extends StatefulWidget {
  @override
  _AddresDbComponentState createState() => _AddresDbComponentState();
}

class _AddresDbComponentState extends State<AddresDbComponent> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new SwiperDiy(),
            new NavItem(),
          ],
        ),
      )
    );
  }
}


