// 首页 服务 报表 我的
// 4 个 tab 内容区（tabView）
import 'package:app/pages/bottom_tab/data_form/index.dart';
import 'package:app/pages/bottom_tab/home/index.dart';
import 'package:app/pages/bottom_tab/my/index.dart';
import 'package:app/pages/bottom_tab/server/index.dart';
import 'package:flutter/material.dart';

List<Widget> tabViewList = [
  const WorkPlatPage(),
  const ServerPage(),
  const DataFormPage(),
  MyPage(),
];

List<Map> tabMapList = [
  {
    'icon': const Icon(Icons.home),
    'label': '首页',
  },
  {
    'icon': const Icon(Icons.volunteer_activism),
    'label': '服务',
  },
  {
    'icon': const Icon(Icons.description),
    'label': '报表',
  },
  {
    'icon': const Icon(Icons.perm_identity),
    'label': '我的',
  }
];

//  4 个 BottomNavigationBarItem
List<BottomNavigationBarItem> barItemListFn() {
  List<BottomNavigationBarItem> barItemList = [];
  for (var i = 0; i < tabMapList.length; i++) {
    barItemList.add(BottomNavigationBarItem(
        icon: tabMapList[i]['icon'], label: tabMapList[i]['label']));
  }
  return barItemList;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidget> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String titleLabel = tabMapList[_selectedIndex]['label'];
    return Scaffold(
      appBar: AppBar(
        title: Text(titleLabel),
      ),
      body: SafeArea(
        child: tabViewList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: barItemListFn(),
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
