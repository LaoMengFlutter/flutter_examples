import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

///
/// des:
///
class SQLLiteDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SQLLiteDemo();
}

class _SQLLiteDemo extends State<SQLLiteDemo> {
  final String _table = 'User';
  Future<Database> _db =
      openDatabase('user.db', version: 1, onCreate: (Database db, int version) {
    //创建table，表分3列id、name、age，id是主键
    db.execute(
        'CREATE TABLE User (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)');
  });

  ///
  /// 保存数据
  ///
  insert(User user) async {
    var db = await _db;
    var result = await db.insert(_table, user.toMap());
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('保存成功，$result')));
  }

  ///
  /// 查询全部数据
  ///
  query() async {
    var db = await _db;
    var list = await db.query(_table);
    _list.clear();
    list.forEach((map) {
      _list.add(User(map['id'], map['name'], map['age']));
    });
    setState(() {});
  }

  ///
  /// 查询全部数据
  ///
  queryById(int id) async {
    var db = await _db;
    var list = await db.query(_table, where: 'id=?', whereArgs: [id]);
    _list.clear();
    list.forEach((map) {
      _list.add(User(map['id'], map['name'], map['age']));
    });
    setState(() {});
  }

  ///
  /// 更新
  ///
  update(User user) async {
    var db = await _db;
    var result = await db.update(_table, user.toMap(), where: 'id=?', whereArgs: [user.id]);
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('更新成功，$result')));
  }

  ///
  /// 删除数据
  ///
  deleteById(int id) async {
    var db = await _db;
    var result = await db.delete(_table, where: 'id=?', whereArgs: [id]);
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('删除成功，$result')));
  }

  List<User> _list = [];
  var _id = '0';
  var _name = '';
  var _age = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'id'),
                onChanged: (value) {
                  setState(() {
                    _id = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: 'name'),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              TextField(
                decoration: InputDecoration(hintText: 'age'),
                onChanged: (value) {
                  setState(() {
                    _age = value;
                  });
                },
              ),
              Wrap(
                children: <Widget>[
                  RaisedButton(
                    child: Text('提交'),
                    onPressed: () {
                      var user = User(int.parse(_id), _name, int.parse(_age));
                      insert(user);
                    },
                  ),
                  RaisedButton(
                    child: Text('查询全部'),
                    onPressed: () {
                      query();
                    },
                  ),
                  RaisedButton(
                    child: Text('查询'),
                    onPressed: () {
                      int id = int.parse(_id);
                      queryById(id);
                    },
                  ),
                  RaisedButton(
                    child: Text('更新'),
                    onPressed: () {
                      update(User(int.parse(_id), _name, int.parse(_age)));
                    },
                  ),
                  RaisedButton(
                    child: Text('删除'),
                    onPressed: () {
                      int id = int.parse(_id);
                      deleteById(id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('id:${_list[index].id}'),
                    Text('name:${_list[index].name}'),
                    Text('age:${_list[index].age}'),
                  ],
                ),
              );
            },
            itemCount: _list.length,
          ),
        ),
      ],
    );
  }
}

class User {
  User(this.id, this.name, this.age);

  final int id;
  final String name;
  final int age;

  toMap() {
    return {'id': this.id, 'name': this.name, 'age': this.age};
  }
}
