import 'package:flutter/material.dart';

class RowDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _row_demo();
}

class _row_demo extends State<RowDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.red, width: 1, style: BorderStyle.solid)),
            child: new Text("1"),
            alignment: AlignmentDirectional.center,
          ),
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.red, width: 1, style: BorderStyle.solid)),
            child: new Text("2"),
            alignment: AlignmentDirectional.center,
          ),
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.red, width: 1, style: BorderStyle.solid)),
            child: new Text("3"),
            alignment: AlignmentDirectional.center,
          ),
        ],
      ),
    );
  }
}
