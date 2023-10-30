import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../config.dart';

class DioHttp {
  late Dio _client;
  late BuildContext context;
  static DioHttp of(BuildContext context) {
    return DioHttp._internal(context);
  }

  // 初始化方法
  DioHttp._internal(this.context) {
    BaseOptions options = BaseOptions(
        baseUrl: Config.BaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 3),
        extra: {'context': context});
    // client.interceptors.add(LogInterceptor());
    // client.findProxy
    _client = Dio(options);
  }

// get
  Future<Response<Map<String, dynamic>>> get(String path, // 接口
      [Map<String, dynamic>? queryParameters, // get 参数
      String? token]) async {
    Options options = Options(headers: {'Authorization': token});
    return _client.get(
      path,
      queryParameters: queryParameters,
      options: options,
    );
  }

  // post
  Future<Response<Map<String, dynamic>>> post(String path, // 接口
      [Map<String, dynamic>? params, // post 参数
      String? token]) async {
    Options options = Options(headers: {'Authorization': token});
    return _client.post(
      path,
      data: params,
      options: options,
    );
  }

  // formData ??
  Future<Response<Map<String, dynamic>>> postFormData(
    String path, // 接口
    [
    Map<String, dynamic>? params,
    String? token,
  ]) async {
    Options options = Options(
      contentType: 'multipart/form-data',
      headers: {'Authorization': token},
    );
    return _client.post(
      path,
      data: params,
      options: options,
    );
  }
}
