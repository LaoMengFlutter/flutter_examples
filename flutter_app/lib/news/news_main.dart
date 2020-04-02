import 'package:flutter/material.dart';
import 'package:flutter_app/news/pages/navigator/navigator_main.dart';

///
/// des: 新闻主页
///
class NewsMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFB90A1B),
      ),
      home: NavigatorMain(),
    );
  }
}

