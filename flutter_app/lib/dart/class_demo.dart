import 'package:flutter_app/dart/person.dart' as prefix0;

///
/// des:class 基础
///
class ClassDemo {
  fun() {
    var person = Person("王三", "男");
//    var p = prefix0.Person("王三", 12);
//    p._age //访问不到
    var p1 = Person("王三", "男");
    var p2 = Person("王三1", "男1");
    var p3 = p1 + p2;
  }
}

class Person extends prefix0.Person1 {
  String name;
  String sex;
  String age;

//  Person(this.name, this.sex);
//
//  Person.loadData(this.name, this.sex) {}
//
//  Person.load(String name) : this(name, "");

  Person(this.name, this.sex)
      : assert(name != null),
        assert(sex != null),
        age = "name:$name",
        super('', 0) {
    //这里是构造函数，也可以省略
  }

  operator +(Person person) {
    return Person(person.name, this.sex + person.sex);
  }
}

class Person1 {
  String getSex() {
    return "";
  }
}

class Person2{}

class Person22{}

class Person3 extends Person1 {}

class Person4 extends Person1 with Person2,Person22 {}

class Person5 with Person1, Person2 {}

abstract class Person6 {
  String getName();

  String getSex() {
    return "";
  }
}

class Person7 extends Person6 {
  @override
  String getName() {
    return null;
  }
}

class Person8 implements Person1 {
  @override
  String getSex() {
    return null;
  }
}
