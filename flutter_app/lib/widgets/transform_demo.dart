import 'package:flutter/material.dart';
import 'dart:math';

///
/// des:
///
class TransformDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        transform: Matrix4.diagonal3Values(2, 2, 1)..rotateZ(pi / 2),
        child: Text('Flutter 实战入门'),
      ),
    );
  }
}
