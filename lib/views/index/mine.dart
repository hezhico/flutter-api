import 'package:flutter/material.dart';
import '../components/list_item.dart';



class MineCenter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    final String id = this.pragma['id'][0];
    return Scaffold(
//      appBar: new AppBar(
//        title: new Text('个人详情'),
//        elevation: 0,
//        iconTheme: IconThemeData(color: Colors.white),
//      ),
      body: Container(
        color: Colors.white,
        child: new Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Container(
//                  width: 300.0,
                  height: 220.0,
                  color: Colors.white,
                ),
                new ClipPath(
                  clipper: new TopBarClipper(
                      MediaQuery.of(context).size.width, 200.0),
                  child: new SizedBox(
                    width: double.infinity,
                    height: 200.0,
                    child: new Container(
                      width: double.infinity,
                      height: 240.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                // 名字
                Container(
                  margin: new EdgeInsets.only(top: 40.0),
                  child: new Center(
                    child: new Text(
                      "九公主",
                      style: new TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Align(
                    child: Container(
                      margin: new EdgeInsets.only(top: 100.0),
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            "https://hezhico.github.io/2019/05/02/test/cyq.jpeg",
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            new Center(),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 100.0),
              child: Card(
                  color: Colors.blue,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        ListItem(
                          icon: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                          ),
//                          title: Translations .of(context).text("qqGroup"),
                          titleColor: Colors.white,
                          describe: "554981921",
                          describeColor: Colors.white,
                          onPressed: () {},
                        ),
                        ListItem(
                          icon: Icon(
                            Icons.http,
                            color: Colors.white,
                          ),
//                          title: Translations.of(context).text("github"),
                          titleColor: Colors.white,
                          describe: "https://github.com/xuelongqy",
                          describeColor: Colors.white,
                          onPressed: () {
//                            launch("https://github.com/xuelongqy");
                          },
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

// 顶部栏裁剪
class TopBarClipper extends CustomClipper<Path> {
  // 宽高
  double width;
  double height;

  TopBarClipper(this.width, this.height);

  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(width, 0.0);
    path.lineTo(width, height / 2);
    path.lineTo(0.0, height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
