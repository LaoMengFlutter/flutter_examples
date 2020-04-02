import 'dart:core';
/*
 多行注释
 多行注释
 多行注释
 */
/**
 * 文档注释
 */

///
/// des: dart 基础语法
///
class BasicGrammar {
  fun() {
    //显式定义变量
    int a; //默认值null
    int b = 0;
    String s = b.toString();

    //隐式定义
    var c = 0;
    c = 2;
//    c = ";"; //错误，c已经定义为int类型
    var d = "";

    //定义常量
    final int e = 9;
    const PI = 3.14;
    final final_now = DateTime.now(); //正确
//    const const_now = DateTime.now(); //错误

    double dou = 3.1416;
    String str = dou.toStringAsFixed(2); //double转String，保留2位小数
    var sd = double.parse("3.14");

    //拼接字符串
    String s1 = "hello";
    String s2 = "Flutter";
    var s3 = s1 + s2;
    var s4 = "hello ${s2}";

    //List
    List<int> list = [1, 2, 3, 4];
    list.add(4);
    print(list[0]); //获取list下标为0的数据
    print(list.length);

    //map
    //创建
    Map<String, Object> map = {"name": "davi", "age": 18, "sex": "男"};
    map["age"] = 19; //赋值
    String name = map["name"]; //获取

    add(a = 1, b = 2);

    add2(1, 2);
    add2(1, 2, c: 3);
    add2(a = 1, b = 2, c: 3);

    func(1, 2);

    int a1 = 0;
    if (a1 is int) {
      //如果a1是int类型
      String str = (a1 as int).toString(); //将a1转换为int类型
    }

    bool flag = true;
    var f = flag ? 0 : 1;

    var ss = "Flutter";
    var ss1 = "实战入门";
    var ss2 = ss ?? ss1; //返回Flutter

//    Person()..setName()..setAge();
    print(ss?.toLowerCase());

    if (a < 0) {
      // do something
    } else if (a == 0) {
      // do something
    } else {
      // do something
    }

    switch (a) {
      case 0:
        // do something
        break;
      case 1:
        // do something
        break;
      case 2:
        // do something
        break;
      default:
      // do something
    }

    for (int i = 0; i < 10; i++) {
      // do something
    }
    while (a > 10) {
      // do something
    }

    do {
      // do something
    } while (a > 10);

    for (var item in list) {
      // do something
    }
    list.forEach((item) {
      // do something
    });

    map.forEach((key, value) {
      print("key:$key,value:$value");
    });

    for (var key in map.keys) {
      print("key:$key,value:${map[key]}");
    }

    List<String> list1 = List();
    list1.add('Box');
//    list1.add(1); //错误，需要字符串类型
  }

  int add(int a, int b) {
    return a + b;
  }

  add1(int a, int b) {
    return a + b;
  }

  int add2(int a, int b, {int c = 0}) {
    return a + b + c;
  }

  var func = (int a, int b) {
    return a + b;
  };

  int add3(int a, int b) => a + b;

  var fun1 = (int a, int b) => a + b;
}
