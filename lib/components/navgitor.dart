
import 'package:flutter/material.dart';


class TopNavitator extends StatelessWidget {
  final String baseUrl = "https://fuss10.elemecdn.com";

  final List NavList;

  // TopNavitator(this.NavList);
  TopNavitator({Key key, this.NavList}) : super(key: key);

  Widget _gridViewWidget(BuildContext context, item) {
    return InkWell(
      onTap: (){print("点击时间");},
      child: Column(
        children: <Widget>[
          Image.network( baseUrl + item['image_url'], width: 40.0,),
          Text(item['title'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 300.0,
        padding: EdgeInsets.all(3.0),
        decoration: BoxDecoration(
          border:  Border.all(width: 2.0, color: Colors.lightBlue)
        ),
        child: GridView.count(
          crossAxisCount: 4,
          padding: EdgeInsets.all(3.0),
          children: NavList.map((item){
            return _gridViewWidget(context, item);
          }).toList()
        )
      ),
    );
  }
}

