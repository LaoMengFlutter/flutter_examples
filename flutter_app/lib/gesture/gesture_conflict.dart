import 'package:flutter/material.dart';

///
/// des:手势冲突
///
class GestureConflict extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
        itemCount: 10000,
        separatorBuilder: (context, index) {
          return Container(
            width: 1,
            color: Colors.black12,
          );
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return createViewPage();
          } else {
            return Container(
              width: 50,
              alignment: Alignment.center,
              child: Text(index.toString()),
            );
          }
        });
  }

  Widget createViewPage() {
    return Container(
      width: 200,
      child: PageView.builder(itemBuilder: (context, index) {
        return Container(
          color: Colors.red,
          child: Center(
            child: Text('$index'),
          ),
        );
      }),
    );
  }
}
