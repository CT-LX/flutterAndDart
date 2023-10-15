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
        body: const Center(
          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [Text('Row'), Text('Row'), Text('Row'), Text('Row')],
          // ),

          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [Text('Row'), Text('Row'), Text('Row'), Text('Row')],
          // ),

          // child: Flex(
          //   direction: Axis.horizontal,
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [Text('Row'), Text('Row'), Text('Row'), Text('Row')],
          // ),

          // Row 超过一行会报错
          // child: Row(
          //   children: [Text('Row组件默认就是一行，超出范围就会报错，有的时候不确定会不会超出，Wrap')],
          // ),

          // wrap 会换行
          // child: Wrap(
          //   children: [Text('Row组件默认就是一行，超出范围就会报错，有的时候不确定会不会超出，Wrap')],
          // ),

          // child: Stack(alignment: Alignment.topCenter, children: <Widget>[
          //   Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.red,
          //   ),
          //   Container(
          //     width: 90,
          //     height: 90,
          //     color: Colors.green,
          //   ),
          //   Container(
          //     width: 80,
          //     height: 80,
          //     color: Colors.blue,
          //   ),
          // ]),

          // child: Stack(
          //   children: [
          //     Align(
          //       alignment: Alignment.topLeft,
          //       child: Icon(Icons.search),
          //     ),
          //     Align(
          //       alignment: Alignment.bottomCenter,
          //       child: Icon(Icons.send),
          //     )
          //   ],
          // ),

          // child: Stack(
          //   children: [
          //     Positioned(
          //       child: Icon(Icons.search),
          //       top: 0,
          //       left: 10,
          //     ),
          //     Positioned(
          //       child: Icon(Icons.send),
          //       top: 0,
          //       right: 10,
          //     )
          //   ],
          // ),
          // child: Row(
          //   children: [
          //     Expanded(
          //       flex: 1,
          //       child: Icon(Icons.send),
          //     ),
          //     Expanded(
          //       flex: 2,
          //       child: Icon(Icons.search),
          //     )
          //   ],
          // ),
          child: Row(
            children: [
              Icon(Icons.search),
              Expanded(
                flex: 1,
                child: Icon(Icons.send),
              )
            ],
          ),
        ),
      ),
    );
  }
}
