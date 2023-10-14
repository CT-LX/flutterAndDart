class Car {
  String name;
  int age;
  Car(this.name, this.age); // 参数

  showName() {
    print('父级--- my car${name}');
  }
}

class Child extends Car {
  String sex = '';

  // 如果只是用extends不能继承构造函数中的东西
  Child(String name, int age, String sex) : super(name, age) {
    // 通过初始化列表，使用super引用父级的构造函数
    this.sex = sex;
  }

  showSex() {
    // 使用父级的方法 super
    super.showName();
    print(this.sex);
  }

  @override // 可写可不写 目的就是让咱们知道这个东西是重写的
  showName() {
    print('我是子级-我的car是${this.name}');
  }
}
