import 'dart:math';

import 'package:app/mainText.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('container容器'),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 400,
            // color: Colors.yellow,
            // alignment: Alignment.center, // 控制容器里面物体(子级)的位置
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            padding: const EdgeInsets.all(50),
            // padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 10,
                ),
                // decoration 和color 不能同时使用
                color: Colors.yellow,
                borderRadius: const BorderRadius.all(Radius.circular(200))),
            child: const Text(
              '我是container的子级',
              style: TextStyle(backgroundColor: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
