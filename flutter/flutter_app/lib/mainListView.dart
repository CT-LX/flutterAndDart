import 'dart:math';

import 'package:app/mainText.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyAppTwo());

List<Widget> getDataFn(){
  List<String> data = ['水浒传','三国演义','红楼梦','西游记'];
  List<Widget> list = [];
  for(int i = 0; i < data.length;i++){
    list.add(
      ListTile(
        title:Text(data[i]),
      )
    );
  }
  return list;
}
// 静态列表
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
            child:ListView(
              children:
              // 列表
              <Widget>[
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
            width: 400,
            child: ListView(
              children:getDataFn(),
            )
          ),
        ),
      ),
    );
  }
}

// ListView.Builder
class MyAppTwo extends StatelessWidget {
  List<String> data = ['水浒传2','三国演义','红楼梦','西游记'];
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
            child:ListView.builder(
              itemCount:data.length,
              itemBuilder:(v,i){
                return ListTile(
                  title: Text(data[i]),
                );
              },
            )
          ),
        ),
      ),
    );
  }
}
