import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter 实战入门'),),
      body: Container(
        child: Text('body'),
        alignment: Alignment.center,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('头像'),
            ),
            ListTile(title: Text("我的"),),
            ListTile(title: Text("关于"),),
            ListTile(title: Text("主页"),)
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('头像（end）'),
            ),
            ListTile(title: Text("我的"),),
            ListTile(title: Text("关于"),),
            ListTile(title: Text("主页"),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text('+'),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons:List.generate(3, (index){
        return RaisedButton(onPressed: (){},child: Text("persistent"),textColor: Colors.black,);
      }),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("微信"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("通讯录"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("发现"),),
            flex: 1,
          ),
          Expanded(
            child: RaisedButton(onPressed: (){},child: Text("我"),),
            flex: 1,
          ),
        ],
      ),
      bottomSheet: RaisedButton(onPressed: (){},child: Text('bottomSheet'),),

    );
  }

}