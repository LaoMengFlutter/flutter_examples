import 'package:flutter/material.dart';

///
/// des:
///
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 实战入门'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('头像'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("我的"),
            ),
            ListTile(
              leading: Icon(Icons.change_history),
              title: Text("关于"),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("主页"),
            )
          ],
        ),
      ),
    );
  }
}
