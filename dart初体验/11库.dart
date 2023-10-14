void main(List<String> args) {
  // DateTime date = DateTime.now();
  // print(date);

  // int mill = DateTime.now().millisecondsSinceEpoch;
  // print(mill);

  // URI 解析
  Uri uri = Uri.parse(
      'https://www.bilibili.com/video/BV1uf4y1D757/?p=45&spm_id_from=pageDriver&vd_source=95f8d3be1f15b88ce39f73f7ac4b6b24');

  // print(uri.scheme);
  // print(uri.host);
  // print(uri.path);
  // print(uri.fragment);
  // print(uri.queryParameters);

  // `assert`是Dart语言的一个关键字,用于验证表达式是否为true
  assert(uri.toString() == 'http://www.bilibili.com/video');

  // URI 构造
  // Uri uriLink = Uri(
  //   scheme: 'https',
  //   host: 'www.bilibili.com',
  //   path: 'video/BV1uf4y1D757',
  //   fragment: 'frag', // hash
  //   queryParameters: {'storeId': '10161'}, // query 参数
  // );
  // print(uriLink);
}
