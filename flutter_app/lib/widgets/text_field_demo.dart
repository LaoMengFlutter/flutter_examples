import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// des:文本输入控件
///
class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
//        TextField(
//          decoration: InputDecoration(
//            filled: true,
//            border: OutlineInputBorder(
//                borderRadius: BorderRadius.all(Radius.circular(20))),
//          ),
//          textAlign: TextAlign.center,
//          inputFormatters: [
//            WhitelistingTextInputFormatter(RegExp("[a-zA-Z]")),
//          ],
//        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: TextField(
            decoration: InputDecoration(labelText: '请输入密码'),
            obscureText: true,
          ),
        ),
      ],
    );
  }
}
