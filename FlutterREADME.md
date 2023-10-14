### Flutter 组件（Widget）

- 项目创建
  - flutter create 项目名称
- 启动项目
  - flutter run
- 项目目录介绍
  - android 就是安卓的资源文件
  - build 就是运行项目的时候生成的编译目录
  - ios 就是 ios 的资源项目目录
  - lib 就是写代码的目录
  - test 就是测试文件的目录
  - pubspec.yaml 项目的配置文件
- 快捷键

  - r:hot reload
  - R:hot restart
  - q: 退出（终止设备上的应用程序
  - c 清除屏幕
  - flutter devices

  - open -a Simulator ：命令行打开 ios 模拟器
  - emulator -avd huawei：命令行打开 android 模拟器(emulator -avd huawei)

- import 'package:flutter/material.dart';
  - material 一个 UI 库
- 入口方法

```dart
  void main(){
    runApp();
  }
```

- 文本组件
  - Text('文本内容',可选参数)
  - 可选参数
    - textAlign 文本应如何水平对齐
    - maxLines 文本可跨越的可选最大行数，必要时可换行。如果文本超过给定的行数，则会根据 overflow 将其截断
    - overflow 视觉溢出应如何处理
    - softWrap 文本是否应在换行符处中断
    - textDirection 文本的方向性
    - style 文本的样式
    ***
    - textSpan 要显示为 InlineSpan 的文本
    - locale 当可以根据区域设置以不同方式呈现相同的 Unicode 字符时，用于选择字体
    - semanticsLabel 此文本的替代语义标签
    - strutStyle 使用的支撑杆样式。撑杆样式定义撑杆，该撑杆设置最小的垂直布局度量。
    - textHeightBehavior 定义段落如何将 TextStyle.height 应用于第一行的上升沿和最后一行的下降沿
    - textScaleFactor 每个逻辑像素的字体像素数
    - textWidthBasis 定义如何测量渲染文本的宽度
- Container

  - 属性
    - child
    - width/height 如果没有设置，并且没有子级，默认是整个内容区域，如果有内容，就是内容的大小。
    - color 背景色
    - padding
    - margin
    - decoration 和 color 不能同时使用
    - alignment 控制容器里面物体的位置
    - transform

  ```dart
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

  ```
- Image
  - 网络图片
    - Image.network(src)
  - 本地图片
    - Image.asset(src)
      - 1. 根目录下创建images文件夹
        - 2.x
        - 3.x
      - 2. pubspec.yaml
        - assets:
        - images/ddd.webp
        - images/2.x/ddd.webp
        - images/3.x/ddd.webp
- 列表 ListView
  - 属性
    - children 是list 里面都是组件 widget
      - ListTile
        - leading:排列在左侧
        - title：一级标题
        - subtitle：二级标题
        - trailing：排列在右边
    - padding:EdgeInsets.all(),
    - scrollDirection：Axisj.horizontal,
      - 默认是竖直方向
      - 如果是水平方向，那么竖直方向充满父级，如果是竖直方向，水平是充满父级
  - 动态列表
    - for
    - ListView.Builder