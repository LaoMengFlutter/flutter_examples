import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/icons/flutter_icon.png'),
        radius: 20,
      ),
      title: Text('课程'),
      children: <Widget>[
        Text('语文'),
        Text('数学'),
        Text('体育'),
        Text('化学'),
        Text('生物'),
      ],
    );
  }
}
