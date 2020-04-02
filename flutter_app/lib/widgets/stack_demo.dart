import 'package:flutter/material.dart';

///
/// des:
///
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          CircleAvatar(
            child: Image.asset('assets/icons/flutter_icon.png'),
            radius: 100,
          ),
          Text('Flutter 实战入门',style: TextStyle(color: Colors.red),)
        ],
      ),
    );
  }
}
