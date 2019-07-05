
import 'package:flutter/material.dart';


class ListSubItem extends StatefulWidget {
  // 左侧icon
  final Widget icon;
  final Color iconColor;
  // 二级菜单标题
  final String title;
  // 右侧icon
  final Widget iconRight;
  final Color  iconRightColor;

  final VoidCallback  onTap;


  ListSubItem({Key key,
    this.icon,
    this.iconColor,
    this.title,
    this.iconRight,
    this.iconRightColor,
    this.onTap}): super(key: key);


  @override
  _ListSubItemState createState() => _ListSubItemState();
}

class _ListSubItemState extends State<ListSubItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
      color: Colors.white,
      child: InkWell(
        onTap: widget.onTap,
        child: new Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: widget.icon != null ? new Container(
                  child: SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: widget.icon,

                  ),

                  ) : new Container(
                  child: SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: new Icon(Icons.account_circle)
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: widget.title != null ? new Text(widget.title) : new Text(''),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: widget.iconRight != null ? new Container(
                  child: SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: widget.iconRight
                  ),
                  decoration: new BoxDecoration(
//                  border: Border.all(width: 2.0, color: Colors.lightBlue)
                  ),

                  ) : new Container(
                  child: SizedBox(
                  width: 32.0,
                  height: 32.0,
                  child: new Icon(Icons.arrow_forward_ios)
                  ),
              ),
              )
            )
          ],
        ),
      ),
    );
  }
}

//new Row(
//children: <Widget>[
////            icon
//widget.icon != null ? new Container(
//child: SizedBox(
//width: 32.0,
//height: 32.0,
//child: widget.icon,
//
//),
//
//) : new Container(
//child: SizedBox(
//width: 32.0,
//height: 32.0,
//child: new Icon(Icons.account_circle)
//),
//),
//
//// title
//widget.title != null ? new Text(widget.title) : new Text(''),
//
//// icon right
//widget.iconRight != null ? new Container(
//child: SizedBox(
//width: 32.0,
//height: 32.0,
//child: widget.iconRight
//),
////              margin: EdgeInsets.symmetric(horizontal: 100.0),
//alignment: Alignment(100.0, 10.0),
//decoration: new BoxDecoration(
//border: Border.all(width: 2.0, color: Colors.lightBlue)
//),
//
//) : new Container(
//child: SizedBox(
//width: 32.0,
//height: 32.0,
//child: new Icon(Icons.arrow_forward_ios)
//),
//),
//
//],
//),