// 添加Application.dart 应用根组件
// import 'package:app/pages/home/index.dart';
import 'package:app/pages/home/index.dart';
import 'package:app/pages/login.dart';
import 'package:app/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 挂载路由
    FluroRouter router = FluroRouter();
    Routes.defineRoutes(router);
    return MaterialApp(
      home: HomePage(),
      onGenerateRoute: router.generator,
    );
  }
}
