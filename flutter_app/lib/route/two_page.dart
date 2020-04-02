import 'package:flutter/material.dart';
import 'package:flutter_app/route/routes.dart';

///
/// des:
///
class TwoPage extends StatelessWidget {
  TwoPage(this.title, {Key key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.title}'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).popAndPushNamed(Routes.threePage);
          },
        ),
      ),
    );
  }
}
