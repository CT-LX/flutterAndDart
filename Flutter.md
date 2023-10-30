- 回顾
  - Material 组件就是 andrfid 风格的组件
  - Cupertino 组件就是 ios 风格的组件
- Text- 用于显示文字的组件
- Image -用于显示图片的组件 
- Icon - 用于显示图标，有内置的 Material 和 Cupertino 风格的图标Container-类似html 中的 div。可以很方便的添加 内外边距，对齐，背景，边角的特性
- Row,Column-用于水平和垂直方向的多组件展示。使用 flex 布局。Stack-用于z轴方向的多组件展示。可以把一个组件堆叠到另外一个组件上面，类似cSs 中的 Position。
- Scafold.页面的基本组件,提供了基本的页面结构。包括 顶部 title 及功能按钮，顶部tab，底部tab，导航按钮等。
- 生命周期
### 目录
- 一共分为七个文件夹：
  - api：存放所有数据类
  - model：存放所有数据类
  - router：存放路由相关
  - style：存放所有的公共样式
  - utils：存放所有的工具类
  - views：存放所有页面
  - widgets：存放所有封装好的组件
- static
  - images
  - icons
  - fonts
### 从0到1 
- 路由规则
  - 创建 routes.dart
    - 1.定义路由名称
    - 2.定义路由处理函数
    - 3.编写函数 defineRoutes 关联路由名称和处理函数
  - Application.dart 挂载路由
  - 路由404：routes.dart文件 新增 notFoundHandler
  - 路由参数
  - 路由跳转
    - Navigator.pushNamed(context, Routes.login);
  - 新增一个路由，替换旧的路由：Navigator.pushReplacementNamed(context, Routes);

- BottomNavigationBar 底部导航
- 边距/异形屏幕问题
  - SafeArea
- 垂直高度不足
  - 使用 ListView替代 Column
- 屏幕的宽度
  - MediaQuery.of(context).size.width
### 使用第三方组件
- fluro 
- AdvancedNetworkImage 
  - 网络图片添加本地缓存
  - 延长网络请求超时时间
  - 安装依赖
  - 使用
  
### 通用组件封装
- loading
- fluterToast
- request(dioHttp)
- 路由拦截
  - 路由守卫 路由执行顺序 home ->  route -> onGenerateRoute -> onUnknownRoute
  - onGenerateRoute: (RouteSettings routeSettings) {}
  - 获取路由名称 routeSettings.name
  - 获取路由参数 routeSettings.arguments
- 权限申请 permission_handler
- 
### 数据管理 scoped_model
### 网络请求及dio_http封装
- flutter 通过httpClient发送请求
- dio 插件 对httpClient的封装
  - https://github.com/cfug/dio/blob/main/dio/README-ZH.md
  - 
### 本地存储shared_preferences 及store 封装
### 序列号及反序列化半自动生成实体类
### 图片上传
### app icon 及启动页
### 首页 轮播图的准备
- flutter_swiper 
- 安装 
  - flutter_swiper_null_safety: ^1.0.2
- 使用
  - 引入依赖  
    - import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
- 例子
