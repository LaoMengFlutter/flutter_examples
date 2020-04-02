import 'package:flutter/material.dart';

///
/// des:
///
class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.all(8.0),
//      child: Center(
//        child: Text('Padding'),
//      ),
//    );
//    return Align(
//      alignment: Alignment.bottomCenter,
//      child: Text('Align'),
//      widthFactor: 2.0,
//      heightFactor: 2.0,
//    );
    return Center(
        child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
            child: AspectRatio(aspectRatio: 2, child: Text('AspectRatio')
            )
        )
    );
  }
}
