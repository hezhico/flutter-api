import 'package:flutter/material.dart';


class NavItem extends StatefulWidget {
  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: new Container(
        child: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  child: new InkWell(
                    child:  new Column(
                      children: <Widget>[
                        new Image.asset('images/icon_1.png'),
                        new Container(
                          child:  new Text("未報件"),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                        )
                      ],
                    ),
                    onTap: (){
                      print('icon_1');
                    },
                  ),
                  width: MediaQuery.of(context).size.width/4,
                  padding: EdgeInsets.all(20.0),
                ),
                new Container(
                  child: new InkWell(
                    child:  new Column(
                      children: <Widget>[
                        new Image.asset('images/icon_2.png'),
                        new Container(
                          child:  new Text("赏金红包"),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                        )
                      ],
                    ),
                    onTap: (){
                      print('icon_1');
                    },
                  ),
                  width: MediaQuery.of(context).size.width/4,
                  padding: EdgeInsets.all(20.0),
                ),
                new Container(
                  child: new InkWell(
                    child:  new Column(
                      children: <Widget>[
                        new Image.asset('images/icon_3.png'),
                        new Container(
                          child:  new Text("商户查询"),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                        )
                      ],
                    ),
                    onTap: (){
                      print('icon_1');
                    },
                  ),
                  width: MediaQuery.of(context).size.width/4,
                  padding: EdgeInsets.all(20.0),
                ),
                new Container(
                  child: new InkWell(
                    child:  new Column(
                      children: <Widget>[
                        new Image.asset('images/icon_4.png'),
                        new Container(
                          child:  new Text("热点查询"),
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                        )
                      ],
                    ),
                    onTap: (){
                      print('icon_13');
                    },
                  ),
                  width: MediaQuery.of(context).size.width/4,
                  padding: EdgeInsets.all(20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
