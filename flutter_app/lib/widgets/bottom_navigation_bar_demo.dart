import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigationBarDemo> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(
              '微信',
            ),
            icon: Icon(
              Icons.line_weight,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.line_weight,
              color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '通讯录',
            ),
            icon: Icon(
              Icons.book,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.book,
              color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '发现',
            ),
            icon: Icon(
              Icons.find_in_page,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.find_in_page,
              color: Colors.green,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我',
            ),
            icon: Icon(
              Icons.my_location,
              color: Colors.black,
            ),
            activeIcon: Icon(
              Icons.my_location,
              color: Colors.green,
            ),
          ),
        ],
        iconSize: 24,
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
        fixedColor: Colors.green,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
