enum Color {
  blue,
  green,
  yellow,
}

// Set 有引号
Set set1 = {'a', 'b', 'c'};

void main(List<String> args) {
// 枚举中的每个值都有一个index 方法，该方法返回值所在枚举类型定义中的位置（从0开始）
  print(Color.blue.index);
  print(Color.green.index);
  print(Color.yellow.index);

  // 使用枚举的values 常量，获取所有的枚举值列表（list）
  List<Color> colors = Color.values;
  print(colors);

  print(colors[2]);

  // 枚举不能被实例化，mixins或实现
  // var c1 = Color();
}
