import 'dart:math';

import 'package:app/mainText.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: OneApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('第一页'),
          ),
          body: Center(
            // child: ElevatedButton(onPressed: () {}, child: const Text('按钮')),
            // child: OutlinedButton(onPressed: () {}, child: const Text('按钮')),
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.search),
                label: const Text('带图标的普通按钮')),

            // child: TextField(
            //   autofocus: false,
            //   decoration: InputDecoration(
            //       labelText: '用户名',
            //       hintText: '请输入用户名',
            //       prefixIcon: Icon(Icons.search)),
            // ),

            //
            // child: LinearProgressIndicator(
            //   backgroundColor: Colors.black,
            //   value: .3,
            // ),

            // 圆环进度条
            // child: CircularProgressIndicator(
            //   backgroundColor: Colors.red,
            //   value: .2,
            // ),
          )),
    );
  }
}

class OneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('第一页'),
        ),
        body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                // 跳转下一页
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TwoPage('a'))); // 跳转 传参
              },
              icon: const Icon(Icons.search),
              label: const Text('带图标的普通按钮')),
        ));
  }
}

class TwoPage extends StatelessWidget {
  late String param;
  TwoPage(this.param);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('第二页'),
        ),
        body: Center(
          // child: ElevatedButton(onPressed: () {}, child: const Text('按钮')),
          // child: OutlinedButton(onPressed: () {}, child: const Text('按钮')),
          child: ElevatedButton.icon(
              onPressed: () {
                print(param);
                // 返回上一页
                Navigator.pop(context);
              },
              icon: const Icon(Icons.search),
              label: const Text('带图标的普通按钮')),
        ));
  }
}
