// 可选参数才有默认值
void main(List<String> args) {
  // 传参
  show(a, [b = 2]) {
    print(a);
    print(b);
  }

  // 可选参数
  show('a');

  // 传参
  show('a', 1);

  // b 默认值
  show('a');

  // 命名 参数
  show1(a, {name}) {
    print(name);
  }

  show1(1, name: '张三');

  // 闭包
  Function show3() {
    int a = 111;
    return () {
      print(a);
    };
  }

  var fn = show3();
  fn();
}
