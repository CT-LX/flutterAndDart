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
          title: const Text('image'),
        ),
        body: Center(
          child: Container(
            width: 400,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.red,
              // borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            // 网络图片
            // child: Image.network(
            //   'https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg',
            //   alignment: Alignment.center,
            //   fit: BoxFit.contain, // 图片填充
            //   repeat: ImageRepeat.repeat, // 是否重复
            // ),
            // 本地图片
            child:Image.asset('images/1.jpg')
          ),
        ),
      ),
    );
  }
}
