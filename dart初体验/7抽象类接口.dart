// 我们在继承时，有的时候需要约束子级必须有某个方法。那这个时候就用抽象类，也就是说其实抽象类可以理解为一个标准
abstract class Person {
  String name = '张三';

  showName(); // 抽象方法 抽象方法没有方法体
  showAge(); // 如果有多个方法必须都实现
}

class Child extends Person {
  int age = 1;

  @override
  showName() {
    return name;
  }

  @override
  showAge() {
    return age;
  }
}

void main(List<String> args) {
  // 抽象类目的是定义标准，不是用来实例化
  Child c1 = Child();
  print(c1.showName());
  print(c1.showAge());
}
