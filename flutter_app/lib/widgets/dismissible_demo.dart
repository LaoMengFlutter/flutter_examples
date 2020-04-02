import 'package:flutter/material.dart';

///
/// des:
///
class DismissibleDemo extends StatelessWidget {
  List<String> items = new List<String>.generate(30, (i) => "列表项${i + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      final item = items[index];
      return Dismissible(
        key: Key(item),
        child: ListTile(
          title: Text("$item"),
        ),
        background: Container(
          color: Colors.red,
        ),
        secondaryBackground:  Container(
          color: Colors.green,
        ),
        crossAxisEndOffset: 0.3,
      );
    });
  }
}
