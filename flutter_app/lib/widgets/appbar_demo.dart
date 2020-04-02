import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: Text('Flutter 实战入门'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
          IconButton(icon: Icon(Icons.dashboard), onPressed: () {}),
          IconButton(icon: Icon(Icons.cached), onPressed: () {}),
        ],
      ),
    );
  }
}
