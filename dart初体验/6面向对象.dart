import './Car.dart';

// 声明不要放在main函数里面,一般单独放,引入使用
class Person {
  String name;
  int age = 12;
  static int a = 9; // 静态的属性不能挂在this身上，所以实例上没有。直接通过类来访问，静态的属性不同通过实例化来赋值

  // 构造器 传参 类似 constructor （赋值）
  Person(this.name, this.age); // 只能声明一个

  showName() {
    // 非静态的方法里面可以使用非静态的属性和方法，也可以使用静态的属性和方法
    // 方法里面使用属性 $属性 this.属性
    print('$name今年$age岁');
    print('${this.name}');
  }

  static showAge2() {
    // 静态方法里面不能使用非静态的属性或者方法，可以使用静态的属性或者方法
    print(a);
  }

  // 命名构造函数(自定义构造函数) 可以声明多个
  Person.now(this.name, this.age) {
    print('Hello');
  }

  // 使用默认值 和传参
  Person.showOne([name = '6', age = 6])
      : name = '李四1',
        age = 2 {
    print('$name是1$age岁');
  }

  // get set
  get showAge {
    return age;
  }

  set addAge(val) {
    age = val;
  }
}

void main(List<String> args) {
  // Person 接口
  // $ 字符串插值来打印字符串文字内变量的字符串
  // Person p1 = Person('张三', 1);
  // print(p1.showAge); // get
  // p1.addAge = 12;
  // print(p1.showAge);

  // p1.showName();

  // 使用初始化列表 ;Person.showOne方法的调用没有经过 new Person 这一步
  // Person.showOne(); // 使用初始化列表
  // Person.showOne('陈', 1); // 使用初始化列表

  // 访问静态成员
  // Person.showAge2();

  Car c1 = Car('bba', 10);
  Child child1 = Child('bba', 10, 'gril');

  print(c1.name);
  child1.showName();
  child1.showSex();
}
