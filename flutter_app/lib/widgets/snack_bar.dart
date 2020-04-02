import 'package:flutter/material.dart';

///
/// des:
///
class SnackBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {

  Future test() async {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('请安装京东商城app')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('点击'),
          onPressed: () {
//            test();
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('请安装京东商城app')));
          },
        ),
      ),
    );
  }
}
