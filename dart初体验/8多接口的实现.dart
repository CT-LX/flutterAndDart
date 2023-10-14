abstract class InterfaceA {
  late String a;
  show();
}

abstract class InterfaceB {
  late String b;
  showB();
}

// 多接口

// 混入的类不能继承其他类
class Demo implements InterfaceA, InterfaceB {
  @override
  late String a;

  @override
  late String b;

  @override
  show() {
    return 'a';
  }

  @override
  showB() {
    return 'b';
  }
}
