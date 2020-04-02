import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class CupertinoButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return CupertinoDialog();
            });
      },
      child: Text('弹出CupertinoDialog'),
    );
  }
}
