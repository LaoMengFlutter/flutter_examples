import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class Http {
  factory Http() => _getInstance();

  static Http get instance => _getInstance();

  static Http _instance;
  Dio dio;

  var _host = 'https://3g.163.com/touch/reconstruct/article/list/';

  static Http _getInstance() {
    if (_instance == null) {
      _instance = Http._();
    }
    return _instance;
  }

  ///
  /// 初始化
  ///
  Http._() {
    var options = BaseOptions(
        baseUrl: '$_host', connectTimeout: 5000, receiveTimeout: 3000);
    dio = Dio(options);
  }
}
