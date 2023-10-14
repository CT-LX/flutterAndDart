class Demo {
  late String name;
  String show(String a) {
    print(a);
    return a;
  }
}

// 泛型 T
class Demo1<T> {
  late String name;
  T show(T a) {
    print(a);
    return a;
  }
}

// 泛型的接口
abstract class DataForm<T> {
  late T name;
  add(T);
}

void main(List<String> args) {
  /* 
  泛型类
  如果想让 list 仅仅支持字符串类型， 可以将其声明为 List<String> （读作“字符串类型的 list”）。
  那么当一个非字符串被赋值给了这个 list时，开发工具就能够检测到这样的做法可能存在错误
  */
  // 系统自带的泛型类
  List<String> names = [];
  names.addAll(['s', 'a']);
  // names.add(a);// 错误

  // 自己封装的泛型类
  Demo d = Demo();
  d.show('a'); // 没有定义泛型时，参数只能传 字符串，不能定义为其他类型

  // 定义泛型 T
  Demo1 d1 = Demo1();
  d1.show(2);

  // 泛型方法 想传入什么数据类型就返回什么数据类型
  // 泛型方法可以约束一个方法使用同类型的参数、返回同类型的值，可以约束里面的变量类型。
  String showAge(String name) {
    return '';
  }

  T showAge1<T>(T a) {
    // T 什么字母都可以，就是一个占位符
    return a;
  }

  print(showAge1(1));
  print(showAge1('参数类型可以随意'));

  // 泛型的字面量
  var a = <String>['Seth', 'kathy'];
}
// 泛型类
// 自己封装泛型类
// 泛型接口
// 泛型方法
// 泛型字面量
