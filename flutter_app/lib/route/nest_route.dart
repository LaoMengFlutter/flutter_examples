import 'package:flutter/material.dart';
import 'package:flutter_app/route/routes.dart';

///
/// des:
///
class NestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NestRouteState();
}

class _NestRouteState extends State<NestRoute> {
  int _currentIndex = 0;


  _onTap() {
    Navigator.of(context).pushNamed(Routes.onePage);
    Navigator.of(context).pushNamedAndRemoveUntil('new route name',ModalRoute.withName('home'));
  }

  @override
  Widget build(BuildContext context) {
    var bodyList = [
      Center(
        child: RaisedButton(
          child: Text('Home'),
          onPressed: () {
            _onTap();
          },
        ),
      ),
      Center(
        child: Text('Profile'),
      ),
    ];

    return Scaffold(
      body: bodyList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
