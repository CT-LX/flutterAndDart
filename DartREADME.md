### dart 下载安装

- 安装了 flutter 自带 dart： https://flutter.cn/docs/get-started/install

### 安装插件

- vscode 下载 code runner 插件，执行 dart 文件

### 注意事项

- 要执行的所有东西都要放到 main()这个入口方法里面,main 函数返回值为空
- 一句话写完以后必须加分号;

### 指令运行 dart xxx 文件

### dart 数据类型 https://dart.cn/language/built-in-types

- 字符串
  - 声明字符串
    - 1. var str = '';
    - 2. String str = '';
  - 字符串的声明，不区分单引号和双引号
  - 三个引号 可以折行，并且保留折行
  - 字符串拼接
    - -
    - ${}
  - 字符串只能比较是否相同，不能比较大小
  - 字符串的长度和下标
  - 字符串的相关方法
    - isEmpty 判断是否为空
    - stra.split('') 切割字符串，返回 list 集合
    - stra.contains('a'); 检查是否含有某个字符串,返回的是 true false
    - stra.startsWith('2');检查是否以一个字符串开头 ,返回的是 true false
    - stra.indexOf('3');检查是否含有某个字符串，并返回下标，没有返回 -1
    - stra.substring(2);截取一个字符串 substring（开始位置，结束位置），不包含结束；如果不写结束位置就是从开始位置到最后
    - 转换大小写 toLowerCase() toUpperCase()
    - str2.replaceAll('a', 'b'); 替换
    - new RegExp('a').hasMatch('a'); 检测是否包含某个字符串
      ...
- number 的类型有 2 种 int 整数，double 浮点数
  - int 不能赋值成浮点数，浮点数可以赋值整数
  - 类型转换
    - string ---> int (string 必须符合 数字的范畴，要不然就报错)
      - int.parse('1')
    - string ---> double (string 必须符合 数字的范畴)
      - double.parse('1')
    - num.parse('1'); 浮点数 整数都可以
    - int --> string
      - 1.toString()
    - is 判断是什么类型
      - print(1.toString() is String);
  - 数字的计算 没有隐式类型转换
    - -
    - -
    - -
    - /
      - 除数的问题：
        - print(2 / 0); // Infinity 无穷
        - print(0 / 0); // NaV not a number 不是一个数字
    - %
    - ~/ 取整，把小数点后面的去除了
  - 数字的方法
    - 判断是不是 NaN：(0 / 0).isNaN
    - 判断是不是无穷：(0 / 0).isInfinite
    - 判断是不是负数：(-2).isNegative
    - 判断是不是偶数：(2).isEven
  - 数学方法
    - abs 绝对值：(-2).abs()
    - ceil 向上去整：(1.1).ceil()
    - floor 向下去整：(1.1).floor()
    - 四舍五入：(1.12).round()
    - 去除小数点后的东西：(1.12).truncate()
- Boolean true false
  - var bflag = true;print(bflag is bool);
- List 数据集合

  - 字面量声明 、构造函数 声明
    - var list1 = [1, 2, 3];
    - var list2 = <String>[];
    - List<int> listthree = [];
  - 定义常数的 list
    - var list3 = const [1, 2, 3];
  - list 的方法
    - 通过下标获取数据，下标从 0 开始： print(list1[0]);
    - list 的长度：print(list1.length);
    - 添加：list1.add(7);
    - 查找元素返回对应的下标：list1.indexOf(7)
    - 删除某个元素：list1.removeAt(2);
    - 清除所有数据：list1.clear();
    - 排序 sort

- Map 是无序的键值对集合

  - 字面量声明
    - var map1 = {"a": 1};
  - 构造函数
    - var map2 = Map(); print('${map1} ${map2}');
  - Map 的注意
    - key value 可以是任意的数据类型
    - key 唯一，不能重复
    - key 必须要加引号，单双引号都可以
  - 定义数据类型
    - var map5 = Map<String, int>();
  - 定义常量
    ```dart
      var map6 = const {
        "q": 1,
        "2": 1,
      };
    ```
  - 方法
    - 添加 只能用 []；map6['c'] = 'a'; 不能像 js 中 obj.a = 1
    - 删除 remove('d');
    - 检测键是否存在键 .containsKey：print(map4.containsKey('1'));
    - 检测值是否存在值：print(map4.containsValue('1'));

- Set 是一个元素唯一的无序的集合

  ```dart
    // 字面量声明
  var set1 = {
    "a",
    "b",
  };
  print(set1);

  // 构造函数
  var set2 = Set();
  set2.add('a');
  print(set2);

  // 数据类型

  var set4 = Set<int>();
  set4.add(1);
  print(set4);

  // 常量
  var set5 = const {'a', 'b', "C"};
  print(set5);

  // 方法
  // 无序所以没有下标
  // 长度 length
  // 添加 add
  // 唯一
  // 添加一组 addAll();
  // 检测set里面有没有值 contains();
  // 检测是否包含一组值
  print(set4.containsAll([4, 5]));

  ```
- List Map Set 共有的方法
  ```dart
  // set ---> list
  var set1 = {1, 2, 3};
  print(set1.toList());

  // list ---> set
  print(set1.toSet());

    // map ---> list
  var map1 = {
    "a": 1,
    "b": 2,
  };
  print(map1.keys);
  print(map1.values);

  print(map1.keys.toList());
  // map ---> set
  print(map1.values.toSet());

  ```
- List的遍历
  ```dart
  // for
  // for in
  for (var element in list1) {
    print(element);
  }
  // forEach
  list1.forEach((element) {
    print(element);
  });
  print('map 返回了一个数据集合');
  // map 返回了一个数据集合
  var list2 = list1.map((v) {
    return v * 2;
  });
  print(list2);
  print(list2.toList()); // 转成List 集合

  // where 类似filter
  var list3 = list1.where((element) {
    return element > 8;
  });
  print(list3);
  print(list3.toList());
  print(list3.toSet());

  // any 检查集合中是否至少有一个元素满足条件
  // every 检查集合中是否全部元素满足条件
  ```
- Set 的遍历
  - 不支持for循环，支持 for in，forEach，map，where，any，every
- Map的遍历
  ```dart
  // for-in 遍历里面的.values 或者keys
  for (var element in map1.values) {
    print(element);
  }
  // forEach
  map1.forEach((key, value) {
    print('$key ---- $value');
  });
  ```
### 函数
- 函数的定义
  - dart中有很多内置的函数，例如 print();
  - 自定义函数
    - 返回值的类型 函数的名称(参数1，参数2){
      - // code
      - return 返回值;
    - }
  - 调用
    - 函数名称();
  - 如果函数中只有一句表达式：可以改成箭头函数 show()=>1;
- 参数的类型定义
  - show(String a,int b){};
  - 可选参数的定义 [] 可选参数放在最后
    - show(String a,int b,[bool c,double d]){};
    - show('a',2,true,1.2,);
- 默认值(可选参数才有默认值)
  - show([a=12]){}; 
- 函数如果没有传参， 参数相当于变量，变量声明了没有赋值，默认就是null 所有的都是对象
- 命名参数
  ```dart
  show1(a, {name}) {
    print(name);
  }

  show1(1, name: '张三');
  ```
- 所有的函数都是有返回值的，不写return 都会隐士的返回一个 null
- 高阶函数（HOF）
  - 所谓的高阶函数就是把函数作为参数传递进去
- 匿名函数
  - 没有名字的函数
  - 命名函数 函数名()
  - 匿名函数 (){}
  - 匿名函数的自执行 (){}();
- 作用域 
  - 全局变量：定义了在任何地方都可以调用
    - 生命周期：一直存在
    - 占用内存：一直占用内存
    - 容易被污染
  - 局部变量：只能在局部的作用域当中使用
    - 生命周期：在使用的时候才会存在，使用完以后就销毁了
    - 占用内存：不是很占内存
  - 垃圾回收：dart是高级语言，可以自动进行垃圾回收，局部变量在使用完以后就会回收。
- 闭包
  - 在函数定义的时候，出现了函数的嵌套，子函数就可以访问父函数的局部变量。
  - 闭包存在的意义就是可以访问别的作用域中的变量，不会污染全局变量
  - 闭包危害：变量无法被释放掉
### 面向对象
- 基本写法
  - Dart是一个面向对象的语言
  - Dart里面所有的东西都是对象。所有的东西都继承于Object
  - 什么是对象
    - 对象就是属性和方法的集合
  - class 使用构造函数 传参
    - Person(this.name, this.age);
  - 命名构造函数(自定义构造函数) 可以声明多个
  - 初始化列表（参数的默认值）
    - 命名构造函数 一般使用初始化列表
- getter setter
  - Getter 和Setter 是用于对象属性读和写的特殊方法
  - 每个实例变量都有一个隐式Getter，通常情况下还会有一个Setter。
  - 使用get和set关键字实现Getter 和 Setter，能够为实例创建额外的属性。
- 类的私有属性和私有方法
  - 注意：要使用私有属性和方法，类必须分离出去。
  - 使用 _xxx 来定义私有属性和方法
  - 私有属性和方法只能在类的内部使用，类产生的实例是无法调用私有属性和方法的
- 静态属性和方法（类的属性和方法）
  - 静态的属性和方法是通过static关键字来实现的
  - 静态变量（类变量）对于类级别的状态是非常有用的，可以直接通过类来访问不需要实例化
  - 静态变量在被使用的时候才会初始化。
  - 静态方法（类方法）不能在实例上使用，因此它们不能访问this。
  - 静态函数可以当做编译时常量使用。例如：可以将静态方法作为参数传递给常量构造函数。
  - 静态方法不能访问非静态成员，非静态成员可以访问静态的成员
- 继承（扩展类）
  - 面向对象的三大特性：封装 继承 多态
    - 使用extends 关键字来创建子类，使用super 关键字来引用父类
    - 使用extends 会继承父类中可见的属性或者方法，但是不会继承构造函数
    - 子类可以重写父类的方法 
      - override 可写可不写 目的就是让咱们知道这个东西是重写的
- 抽象类：可以理解为一个标准，用来约束子级必须有某个方法
  - 使用 abstract 修饰符来定义 抽象类
    - 抽象类目的是定义标准，不能实例化
    - 抽象类通常用来定义接口，以及部分实现、其实就是指定规范的作用。
    - 抽象类通常具有 抽象方法。没有方法体的方法就是抽象方法，不管有多少个抽象方法子类必须实现
- 多态
  - 同一个方法调用执行不同的效果，说白了就是子类继承了父类的方法，但是不同子类执行的效果不同。
- 隐式类（接口的定义）
  - 使用implement来实现接口
  - 如果要创建一个A类，A要支持 B类的Api，但是不需要继承 B的方法，那么可以通过 implement 实现B 的接口
  - extends抽象类和implements的区别
    - 如果要复用抽象类里面的方法，并且要用抽象方法约束子类，我们用extends继承抽象类
    - 如果只是把抽象类当做标准的话我们就用implements
- 多接口的实现
  - class A implements x,y{}
- mixins
  - class Demo3 with Demo1,Demo2 {}
  - 混入的类不能继承其他类
  - 当出现相同的方法 注意顺序
### 枚举类型
- 枚举类型也称为 enumerations 或 enums，是一种特殊的类，用于表示数量固定的常量值。
- 使用enum 关键字 定义一个枚举类型
  - enum Color {red,green,blue}
- 枚举中的每个值都有一个index 方法，该方法返回值所在枚举类型定义中的位置（从0开始）
- 枚举不能被实例化，mixins或实现
### 泛型
- 什么是泛型
  - 泛型就是解决类，接口，方法的复用，以及对不特定数据类型的校验
- 为什么使用泛型
  - 在类型安全上通常需要泛系支持，它的好处不仅仅是保证代码的正常运行：
    - 正确指定泛型类型可以提高代码质量
    - 使用泛型可以减少重复的代码。
### 库
- 所谓的库就是一些功能的集合，通过封装，我们可以在项目中通过引用来使用
- 库在Dart中分类
  - 自定义的库
    - 创建
      - 把类、接口、方法等内容单独抽离放入Dart文件
    - 使用
      - import './xxx';
  - 系统中的库，这里面有两种
    - 一种核心库：内置库（该库会被自动导入每个Dart程序）包含：
      - 控制台打印 print
      - 数字
        - .parse
        - .toString
      - 字符串正则
        - .contains
        - .startsWith
        - .endWith
        - ...
      - 集合 List Set Map
        - .add
        - .addAll
        - .sort
      - URI
        - 编码和解码完整合法的URI
          - encodeFull()
          - decodeFull()
        - 编码和解码 URI 组件
          - encodeComponent()
          - decodeComponent()
        - URI解析构建
          - parse()
          - Uri()
      - DateTime
        - 获取当前时刻 DateTime.now();
        - 创建 DateTime 对象： DateTime(2000);
        - 返回现在距离1970.1.1的毫秒数：DateTime().millisecondsSinceEpoch
    - 其他的系统库是需要导入的
      - dart:async - 异步编程 从Dart 2.1开始不用引入
        - async await
      - dart:math
      - ...
      - 引入import 'dart:xxx';
### 第三方库的使用
  - 第三方库 pub包的库
  - 地址：https://pub.dev/packages
    - 需要在项目目录下创建pubspec.yaml
    - 在pubspec.yaml 文件中配置信息
    - 运行 pub get 获取包下载到本地
    - 项目中引用库 import 'package:http://xxx'