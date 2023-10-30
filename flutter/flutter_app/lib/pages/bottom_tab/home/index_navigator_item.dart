import 'package:flutter/material.dart';

import '../../../routes.dart';

// 定义接口
class IndexNavigatorItem {
  String title;
  Widget icon;
  final Function onTap;
  IndexNavigatorItem(this.title, this.icon, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', Icon(Icons.search), (BuildContext context) {
    Routes.router.navigateTo(context, Routes.login);
  }),
  IndexNavigatorItem('合租', Icon(Icons.access_alarm), (BuildContext context) {
    Routes.router.navigateTo(context, Routes.login);
  }),
  IndexNavigatorItem('地图找房', Icon(Icons.map_outlined), (BuildContext context) {
    Routes.router.navigateTo(context, Routes.login);
  }),
  IndexNavigatorItem('去出租', Icon(Icons.car_crash), (BuildContext context) {
    Routes.router.navigateTo(context, Routes.login);
  }),
];
