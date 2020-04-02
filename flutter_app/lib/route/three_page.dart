import 'package:flutter/material.dart';

///
/// des:
///
class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ThreePage'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).pop('返回参数');
          },
        ),
      ),
    );
  }
}
