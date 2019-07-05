import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/list_sub_item.dart';


class FindComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.grey[200],
      child: new Column(
        children: <Widget>[
          new ListSubItem(
            icon: new Icon(Icons.ac_unit,color: Colors.lightBlue,),
            iconColor: Colors.lightBlue,
            title: '原生功能',
            iconRight: new Icon(Icons.arrow_forward_ios,color: Colors.grey[40],),
            iconRightColor: Colors.grey[40],
            onTap:(){
              Fluttertoast.showToast(
                  msg: "该功能正在开发",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.black87,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          ),
          new ListSubItem(
            icon: new Icon(Icons.access_alarm),
            iconColor: Colors.pink,
            title: 'webview',
            iconRight: new Icon(Icons.arrow_forward_ios),
            iconRightColor: Colors.grey[40],
            onTap:(){
              Fluttertoast.showToast(
                  msg: "该功能正在开发",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 1,
                  backgroundColor: Colors.black87,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          ),
        ],
      ),
    );
  }
}

