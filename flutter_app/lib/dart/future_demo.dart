import 'dart:io';

import 'package:flutter/material.dart';

///
/// des:
///
class FutureDemo {
  test() async {
    var future = Future(() {
      print('这是一个耗时任务');
    });

    //延迟1秒执行
    var future1 = Future.delayed(Duration(seconds: 1), () {
      print('这是一个耗时任务');
    });

    Future.wait([future, future1]).then((values) {
      //future和future1都执行完毕后
    });

    Future(() {}).then((value) {
      print('$value');
    }).then((value) {
      print('$value');
    }).catchError((error) {
      print('$error');
    });

    String s = await doWork();
  }

  doWork() async {
    return await "";
  }

  void doWork1() async {
    print('这是一个耗时任务');
  }
}
