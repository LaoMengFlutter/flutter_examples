import 'package:flutter/material.dart';

///
/// des:
///
class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: <int, FixedColumnWidth>{
        0: FixedColumnWidth(50),
        1: FixedColumnWidth(80),
      },
      textDirection: TextDirection.rtl,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(children: <Widget>[
          SizedBox(
            height: 50,
            child: Text('Flutter1'),
          ),
          Text('Flutter2'),
          Text('Flutter3'),
        ]),
        TableRow(children: <Widget>[
          Text('Flutter1'),
          Text('Flutter2'),
          Text('Flutter3'),
        ]),
        TableRow(children: <Widget>[
          Text('Flutter1'),
          Text('Flutter2'),
          Text('Flutter3'),
        ]),
      ],
    );
  }
}
