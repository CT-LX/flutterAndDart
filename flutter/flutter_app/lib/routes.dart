import 'package:app/pages/home/index.dart';
import 'package:app/pages/login.dart';
import 'package:app/pages/room_detail/index.dart';
import 'package:app/pages/not_found.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  // 1.定义路由名称
  static String home = '/';
  static String login = '/login';
  static String roomDetail = '/room/:roomId';

  // 2.定义路由处理函数
  // var usersHandler =
  //     Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  //   return UsersScreen(params["id"][0]);
  // });

  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomePage();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return LoginPage();
  });
  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return NotFound();
  });
  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RoomDetailPage(roomId: params['roomId'][0]);
  });

  // 3.编写函数 defineRoutes 关联路由名称和处理函数
  static void defineRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
