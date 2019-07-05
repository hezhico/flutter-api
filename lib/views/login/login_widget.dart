import 'package:flutter/material.dart';

import '../../routers/application.dart';
import '../../service/http.dart';

class LoginWidget extends StatelessWidget {
  
  String _name;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;


    return Scaffold(
        // appBar: new AppBar(title: new Text('d'),),
        body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 200.0, 0, 0),
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new TextFormField(
                decoration: new InputDecoration(
                  labelText: '用户名',
                ),
                onSaved: (val) => this._name = val,
                ),
            new TextFormField(
                decoration: new InputDecoration(
                  labelText: '密码',
                ),
                onSaved: (val) => this._name = val,
                ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 36.0),
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){
                  print('点击');
                  getLogin().then((val){
                    print(val);
                    if(val['code'] == '00') {
                      Application.router.navigateTo(context,"/detail");
                    }
           
                  });
                  
                },
                child: Container(
                  width: width,
                  height: 45.0,
                  // color: Colors.lightBlue, 
                  alignment: Alignment.center,// 上下垂直居中
                  child: new Text("登录", 
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,

                  ),
                  decoration: new BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(3.0),
                    ), 
                  ),
                ),
                
              )
            ),
          ],
        ),
      ),
    ));
  }
}
