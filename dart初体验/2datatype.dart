// 数据类型
import 'dart:math';

// 1.声明字符串
void mainString() {
  String str = ''; // ***
  str = 'Hello World 123';
  print(str);

  String strone = """我是
  字符串
  并且可以换行
  """;
  print(strone);

  var stra = '23';
  print('1${stra}4');

  // 字符串只能比较是否相同，不能比较大小
  var a = 'a';
  var b = 'a';
  print(a == b);

  // 字符串的长度和下标
  print(a.length);
  print(a[0]);

  // 字符串的相关方法
  // 判断是否为空
  print(str.isEmpty);

  // 切割字符串，返回 list集合
  print(stra.split(''));

  // 检查是否含有某个字符串,返回的是true false
  print(stra.contains('a'));

  // 检查是否以一个字符串开头 ,返回的是true false
  print(stra.startsWith('2'));

  // 检查是否以一个字符串结尾 ,返回的是true false
  print(stra.endsWith('3'));

  //检查是否含有某个字符串，并返回下标，没有返回 -1
  print(stra.indexOf('3'));
  print(stra.lastIndexOf('3'));

  // 截取一个字符串substring（开始位置，结束位置），不包含结束；如果不写结束位置就是从开始位置到最后
  print(stra.substring(2));

  // 转换大小写 toLowerCase() toUpperCase()
  print(str.toLowerCase());
  print(str.toUpperCase());

  // 去掉首尾空格 trim()
  String str2 = '    1232dmdaaa fdkfk  ';
  print(str2.trim());

  // 字符串的方法都是返回了一个新的字符串，原来的字符串是没有发现改变的

  var reg = new RegExp('a');
  // 替换
  print(str2.replaceAll('a', 'b'));

  // 检测是否包含某个字符串
  print(reg.hasMatch('a'));
}

// 2 number 的类型有2种 int double
//   int 整数不能大于 64位
void mainNumber() {
// 声明方式
  var n = 1;
  int num = 123; // ***
  double k = 3;

  // 赋值的问题
  // int 不能赋值成浮点数，浮点数可以赋值整数

  // string ---> int (string 必须符合 数字的范畴，要不然就报错)
  print(int.parse('1'));

  // string ---> double (string 必须符合 数字的范畴)
  print(double.parse('1'));

  // num.parse('1'); 浮点数 整数都可以

  // int --> string
  print(1.toString() is String);
  // is 判断是什么类型

  // 数字的计算 没有隐式类型转换
  // +
  // -
  // *
  // /
  // %
  // ~/ 取整，把小数点后面的去除了

  // 关于除数的问题
  print(2 / 0); // Infinity 无穷
  print(0 / 0); // NaV not a number 不是一个数字

  // 数字的方法
  // 判断是不是NaN
  print((0 / 0).isNaN);
  // 判断是不是无穷
  print((0 / 0).isInfinite);
  // 判断是不是负数
  print((-2).isNegative);
  // 判断是不是偶数
  print((2).isEven);

  // 数学方法
  // abs绝对值
  print((-2).abs());

  // ceil 向上去整
  print((1.1).ceil());
  // floor 向下去整
  print((1.1).floor());
  // 四舍五入
  print((1.12).round());
  // 去除小数点后的东西
  print((1.12).truncate());
}

// 3 Boolean true false
void main3() {
  var bflag = true;
  bool a = false; // ***
  print(bflag is bool);
}

// 4 List 数据集合
void main4() {
  // List 的声明
  // 第一种 字面量声明 、构造函数 声明
  var list1 = [1, 2, 3];
  var list2 = <String>[];
  list2.add('a');
  List<int> listthree = []; // ***
  listthree.add(11);
  print(listthree);

  // 定义常数的list
  var list3 = const [1, 2, 3];
  // list3.add(4); // 报错
  print(list3);

  // list的方法
  // 通过下标获取数据，下标从0 开始
  print(list1[0]);
  // list 的长度
  print(list1.length);
  print(list1);
  // 添加
  list1.add(7);
  print(list1);
  // 添加多个元素
  list1.addAll([4, 5, 6]);
  print(list1);

  // 查找元素返回对应的下标
  print(list1.indexOf(7));
  // 删除某个元素
  list1.removeAt(2);
  print(list1);

  // 清除所有数据
  list1.clear();
  print(list1);
// 排序 sort
}

// 5 Map 是无序的键值对集合
void main5() {
  // 字面量声明
  var map1 = {"a": 1};
  // 构造函数
  var map2 = Map();
  print('${map1} ${map2}');

  // Map的注意
  // key value 可以是任意的数据类型
  // key 唯一，不能重复
  // key 必须要加引号，单双引号都可以

  // 关于数据类型
  /**
     var map3 = { // 默认推断你的数据类型是<String,int>
    "a": 1,
  };
  map3[2] = '';
   */

  var map4 = {};
  map4['a'] = 1;
  print(map4);

  // 一上来就定义数据类型
  var map5 = Map<String, int>();

  Map<String, int> map7 = Map(); // ***

  map5['1'] = 1;
  print(map5);

  // 定义常量
  var map6 = const {
    "q": 1,
    "2": 1,
  };
  // map6['c'] = '';
  print(map6);

  // 方法
  // 添加 只能用 []
  // 删除 remove('d');

  // 检测键是否存在键 .containsKey
  print(map4.containsKey('1'));
  // 检测值是否存在值
  print(map4.containsValue('1'));
}

// 6  Set
void mainSet() {
  // Set 是一个元素唯一的无序的集合
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

  Set<String> set3 = Set(); // ***
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
}

// List Map Set 共有的方法
void mainOther() {
  // set ---> list
  var set1 = {1, 2, 3};
  print(set1.toList());

  // list ---> set
  print(set1.toSet());

  // list 去重
  var list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 3];

  var set2 = list1.toSet();
  set2.addAll({1, 2});
  print(set2.toList());

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

// List 的遍历
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

  // Set 的遍历
  // 不支持for循环，支持 for in，forEach，map，where，any，every

  // Map 的遍历
  // for-in 遍历里面的.values 或者keys
  for (var element in map1.values) {
    print(element);
  }
  // forEach
  map1.forEach((key, value) {
    print('$key ---- $value');
  });
}

void main() {
  // Rune :用来表示字符串中的 UTF-32编码字符
  // Dart里面的字符串使用UTF-16来表示，也就是一些特殊的字符无法表示。Rune支持
  print('\u2665');
  print('\u{1f600}'); // 如果是非数字需要加{}

  // Symbol 一个Symbol对象表示Dart程序中声明的运算符或者标识符。
  // 通过字面量Symbol，也就是标识符前面添加一个 # 号，来获取标识符测Symbol

  // 字面量声明
  var s1 = #a;
  print(s1);

  var s2 = Symbol('b');
  print(s2);
}
