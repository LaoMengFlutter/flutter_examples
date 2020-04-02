import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  List<Widget> _getItem() {
    List<Widget> list = [];
    for (int i = 0; i < 100; i++) {
      list.add(_getWidget(i));
    }
    return list;
  }

  Widget _getWidget(int index) {
    return Container(
      height: 30,
      alignment: Alignment.center,
      color: Colors.black12,
      child: Text(index.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
//    return GridView.count(
//      scrollDirection: Axis.vertical,
//      crossAxisCount: 3,
//      mainAxisSpacing: 10,
//      crossAxisSpacing: 10,
//      childAspectRatio: 3 / 4,
//      padding: EdgeInsets.all(3),
//      children: _getItem(),
//    );
//    return GridView.builder(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 3,
//            mainAxisSpacing: 20,
//            crossAxisSpacing: 10,
//            childAspectRatio: 1),
//        itemBuilder: (BuildContext context, int index) {
//          return _getWidget(index);
//        });
    return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
          childAspectRatio: 3/4),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return _getWidget(index);
      }),
      semanticChildCount: 100,
    );
  }
}
