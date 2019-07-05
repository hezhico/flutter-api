import 'package:flutter/material.dart';

import 'dart:io';
import 'package:device_info/device_info.dart';

class DevicesPages extends StatefulWidget {
  @override
  _DevicesPagesState createState() => _DevicesPagesState();
}

class _DevicesPagesState extends State<DevicesPages> {
  var devicesInfo;  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDevicesInfo();
  }

  @override
  Widget build(BuildContext context) {
    print(devicesInfo);
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(title: new Text('设备信息'),),
        body: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.topLeft,
          child: new Column(
            children: <Widget>[
              // new Text('version :: ${devicesInfo.version}', style: TextStyle(fontSize: 24.0),),
              new Text('board :: ${devicesInfo.board}', style: TextStyle(fontSize: 24.0),),
              new Text('bootloader :: ${devicesInfo.bootloader}', style: TextStyle(fontSize: 24.0),),
              new Text('brand :: ${devicesInfo.brand}', style: TextStyle(fontSize: 24.0),),
              new Text('device :: ${devicesInfo.device}', style: TextStyle(fontSize: 24.0),),
              new Text('display :: ${devicesInfo.display}', style: TextStyle(fontSize: 24.0),),
              new Text('host :: ${devicesInfo.host}', style: TextStyle(fontSize: 24.0),),
              new Text('id :: ${devicesInfo.id}', style: TextStyle(fontSize: 24.0),),
              new Divider(),
              new Container(
                margin: EdgeInsets.symmetric(vertical: 100.0),
                child: new Text('列举了部分数据,其他参数自行查看源码'),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  void getDevicesInfo() async {
    print('--------');
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print(androidInfo.version.codename);
    // 变量赋值
    setState((){
      devicesInfo = androidInfo;
    });
  }
}

var devicesInfo;  


