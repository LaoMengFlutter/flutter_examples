import 'package:flutter/material.dart';
import 'package:flutter_app/news/my/my_home.dart';
import 'package:flutter_app/news/pages/home/home.dart';
import 'package:flutter_app/news/pages/navigator/app_bar_actions_publish.dart';
import 'package:flutter_app/news/pages/search/search_input.dart';

///
/// des:
///
class NavigatorMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigatorMainState();
}

class _NavigatorMainState extends State<NavigatorMain> {
  int _navigationIndex = 0;
  List<Widget> widgets = [Home(), Home(), Home(), MyHome()];

  @override
  Widget build(BuildContext context) {
    var primaryColor = Theme.of(context).primaryColor;
    var body = widgets[_navigationIndex];
    var appBar = _navigationIndex != 3?AppBar(
      title: SearchInput(),
      actions: <Widget>[
        AppBarActionsPublish(),
        SizedBox(width: 15),
      ],
    ):null;
    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navigationIndex,
        onTap: (index) {
          setState(() {
            _navigationIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            title: Text('视频'),
            activeIcon: Icon(Icons.video_library),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            title: Text('小视频'),
            activeIcon: Icon(Icons.play_circle_outline),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('未登录'),
            activeIcon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
