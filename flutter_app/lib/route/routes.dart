import 'package:flutter/material.dart';
import 'package:flutter_app/route/one_page.dart';
import 'package:flutter_app/route/three_page.dart';
import 'package:flutter_app/route/two_page.dart';

///
/// des:
///
class Routes {
  static const String onePage = 'one_page';
  static const String twoPage = 'two_page';
  static const String threePage = 'three_page';
  static Map<String, WidgetBuilder> routes = {
    onePage: (context) => OnePage(),
    twoPage: (context) => TwoPage(ModalRoute.of(context).settings.arguments),
    threePage: (context) => ThreePage(),
  };
}
