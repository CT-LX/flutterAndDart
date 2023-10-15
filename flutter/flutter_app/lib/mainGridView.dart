import 'dart:math';

import 'package:app/mainText.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppTwo());

List<Map> data = [
  {
    'text': '水浒传1',
    'imgUrl':
        'https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg'
  },
  {
    'text': '红楼梦',
    'imgUrl':
        'https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg'
  },
  {
    'text': '西游记',
    'imgUrl':
        'https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg'
  },
  {
    'text': '三国演义2',
    'imgUrl':
        'https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg'
  }
];
List<Widget> getDataFn() {
  Iterable<Widget> list = data.map((v) {
    return Column(
      children: <Widget>[
        Text(v['text']),
        Image.network(v['imgUrl']),
      ],
    );
  });
  return list.toList();
}

// 静态 网格列表
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('image'),
        ),
        body: Center(
          child: Container(
              child: GridView.count(
            crossAxisCount: 2, // 列数
            crossAxisSpacing: 10, // 子级之间左右的间距
            padding: EdgeInsets.all(10),
            childAspectRatio: 0.6, // 控制宽高的比例 宽度/高度
            mainAxisSpacing: 300, // 子级之间上下的间距
            children: const <Widget>[
              Column(
                children: <Widget>[Text('我是产品1')],
              ),
              Column(
                children: <Widget>[Text('我是产品2')],
              ),
              Column(
                children: <Widget>[Text('我是产品3')],
              ),
              Column(
                children: <Widget>[Text('我是产品4')],
              )
            ],
          )),
        ),
      ),
    );
  }
}

// for
class MyAppOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('image'),
        ),
        body: Center(
          child: Container(
              child: GridView.count(
            crossAxisCount: 2, // 列数
            crossAxisSpacing: 10, // 子级之间左右的间距
            padding: EdgeInsets.all(10),
            childAspectRatio: 0.6, // 控制宽高的比例 宽度/高度
            mainAxisSpacing: 30, // 子级之间上下的间距
            children: getDataFn(),
          )),
        ),
      ),
    );
  }
}

// GridView.Builder
class MyAppTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('image'),
        ),
        body: Center(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //列数
              crossAxisSpacing: 30, // 子级之间左右的间距
              // padding // padding 不能用
              childAspectRatio: 0.6, // 控制宽高的比例 宽度/高度
              mainAxisSpacing: 30, // 子级之间上下的间距
            ),
            itemBuilder: (v, i) {
              return Column(
                children: [
                  Text(data[i]['text']),
                  Image.network(data[i]['imgUrl']),
                ],
              );
            },
            itemCount: data.length, // 这个不能少，循环的长度
          ),
        ),
      ),
    );
  }
}
