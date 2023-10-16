import 'dart:math';

import 'package:app/application.dart';
import 'package:app/mainText.dart';
import 'package:flutter/material.dart';

void main() => runApp(Application());

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
