import 'package:flutter/material.dart';

import './views/login/login_widget.dart';

import 'package:fluro/fluro.dart';
import './routers/routes.dart';
import './routers/application.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router=router;

    return MaterialApp(
      title: "app",
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SafeArea( // 安全区域
        child: LoginWidget(),
      ),
    );
  }
}