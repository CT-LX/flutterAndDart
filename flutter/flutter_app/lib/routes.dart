import 'package:app/pages/home/index.dart';
import 'package:app/pages/login.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  // 1.定义路由名称
  static String home = '/';
  static String login = '/login';

  // 2.定义路由处理函数
  // var usersHandler =
  //     Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  //   return UsersScreen(params["id"][0]);
  // });

  static final Handler _homeHandler = Handler(handlerFunc:
      (BuildContext? context, Map<String, List<String>> parameters) {
    return HomePage();
  });

  static final Handler _loginHandler = Handler(handlerFunc:
      (BuildContext? context, Map<String, List<String>> parameters) {
    return LoginPage();
  });

  // 3.编写函数 defineRoutes 关联路由名称和处理函数
  static void defineRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
  }
}
