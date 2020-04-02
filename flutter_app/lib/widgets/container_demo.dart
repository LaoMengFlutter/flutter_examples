import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
              Border.all(color: Colors.red, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: new Text("子控件"),
      alignment: AlignmentDirectional.center,
    ));
  }
}
