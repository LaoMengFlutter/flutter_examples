import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class CupertinoAlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text('删除提示'),
                content: Text('确定要删除吗？'),
                actions: <Widget>[
                  FlatButton(
                    child: Text('确定'),
                    onPressed: () {

                    },
                  ),
                ],
              );
            });
      },
      child: Text('弹出CupertinoAlertDialog'),
    );
  }
}
