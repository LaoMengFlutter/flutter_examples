import 'package:flutter/material.dart';

///
/// des:
///
class TryCatchOn {
  void test() {
    try {
      //do something
    } catch (e, s) {
      //不指定异常类型，捕获所有异常
      print("exception:$e，stack:$s");
    }

    try {
      //do something
    } on Exception {
      //指定异常类型，但不处理异常
    }

    try {
      //do something
    } on Exception catch (e) {
      //指定异常类型并且处理异常
      print("exception:$e");
    }

    try {
      //do something
    } on FormatException catch (e) {
      //指定异常类型并且处理异常
      print("exception:$e");
    } on Exception catch (e) {
      //指定异常类型并且处理异常
      print("exception:$e");
    } catch (e) {
      //捕获其他异常
      print("exception:$e");
    }

    try {
      //do something
    } catch (e) {
      print("exception:$e");
    } finally {
      //do something
    }
  }
}
