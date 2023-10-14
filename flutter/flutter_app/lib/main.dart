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
            // height: 100,
            child:ListView(
              children:<Widget>[
                ListTile(
                  leading:Icon(Icons.home,color:Colors.red),
                  title: Text('一级标题1'),
                  subtitle: Text('二级标题1'),
                  trailing:Icon(Icons.search),
                ),
                ListTile(
                  leading:Icon(Icons.search,color:Colors.red),
                  title: Text('一级标题2'),
                  subtitle: Text('二级标题2'),
                  trailing:Icon(Icons.search),
                ),
                ListTile(
                  leading:Icon(Icons.search,color:Colors.red),
                  title: Text('一级标题3'),
                  subtitle: Text('二级标题3'),
                  trailing: Image.network('https://dj-1302809963.file.myqcloud.com/uploads/userfiles/18/images/pageimg/20220708/18-220FR0542G.jpg'),
                ),
                ListTile(
                  leading:Icon(Icons.home,color:Colors.red),
                  title: Text('一级标题4'),
                  subtitle: Text('二级标题4'),
                  trailing:Icon(Icons.search),
                ),
              ]
            )
          ),
        ),
      ),
    );
  }
}
