void mainIf() {
  // 条件判断语句if
  bool flag = true;
  // if() 里面写的是条件判断，最终变成布尔值。 和前端不同的是，判断条件必须是布尔值
  if (flag) {
    print('进入if');
  }

  // switch() 条件
  int n = 2;
  switch (n) {
    case 1:
      print('网络链接失败');
      break;
    case 2:
      print('用户拒绝');
      break;
    default:
  }
}

// for
void main() {
  print('for');
  /*
    for(声明变量赋值（初始条件）;条件判断;自增或者自减){
      // 代码 条件成立的代码
    }
   */
  for (var i = 0; i < 10; i++) {
    print(i);
  }
  print('while');

  /*
    初始化条件
    while (条件) {
      条件成立的代码
      自增或者自减
    }
   */
  int n1 = 5;
  while (n1 > 2) {
    print(n1);
    n1--;
  }

  print('do-while');
  // do {
  //   // 成立的代码
  // } while (条件);
  int n2 = 5;
  do {
    print(n2);
    n2--;
  } while (n2 > 3);

  // whild 和do-while 的区别
  // 就算最开始的条件不成立do-while也会先执行一次

  // break、continue
  // break：switch跳出条件；循环中 跳出整个循环
  // continue:用在循环中，跳出本次循环
}
