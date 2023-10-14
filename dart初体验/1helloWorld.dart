// main() {
//   print('hello world');
// }

void main(List<String> args) {
  print(args);

  Map<String, String> map1 = Map();
  map1['1'] = '1';
  print(map1);

  Set<String> set1 = Set(); // ***
  set1.add('a');
  print(set1);
  print('$set1');
}
