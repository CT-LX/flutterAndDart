void main(List<String> args) {
  // print('1');
  // 算数运算符 + - * /  %(取余/模)  ～/（取整）
  print(5 / 2 == 2.5); // 结果是浮点型 都会转成浮点数
  print(5 ~/ 2 == 2); // 结果是 整型 去除小数点后面
  print(5 % 2 == 1); // 余数

  // 比较（关系）运算符
  // ==  !=  > < >= <=
  print(null == null);

  //逻辑运算符
  // || && !

  // 赋值运算符
  // =     ??=(表示如果为空就默认赋值)
  // += -= *= /= %= ～/=
  // ++ -- a++ ++a的区别（在赋值的时候才有区别）

  // / 除法得到的值是 double
  // ～/ 取整过后得到的是 int

  var a;
  a ??= 2;
  print(a);

  int e = 1;
  print(e++); // 先赋值，在加
  print(e);

  // print(++e); // 先加，再赋值

  // 条件表达式
  // 条件?条件成立执行的代码:条件不成立执行;

  // 如果赋值是基于判定是否为null ，考虑使用 ??
  var n;
  var m = n ?? 'aaa';
  print('如果赋值是基于判定是否为null ，考虑使用 ??');
  print(m);
}
