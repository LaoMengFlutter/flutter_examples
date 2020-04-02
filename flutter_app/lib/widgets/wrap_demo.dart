import 'package:flutter/material.dart';

///
/// des:
///
class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 5,
      alignment: WrapAlignment.center,
      runSpacing: 10,
      textDirection:TextDirection.rtl ,
    verticalDirection: VerticalDirection.up,
      children: <Widget>[
        RaisedButton(child: Text('Flutter 实战入门1'),),
        RaisedButton(child: Text('Flutter 实战入门2'),),
        RaisedButton(child: Text('Flutter 实战入门3'),),
        RaisedButton(child: Text('Flutter 实战入门4'),),
        RaisedButton(child: Text('Flutter 实战入门5'),),
      ],
    );
  }
}

