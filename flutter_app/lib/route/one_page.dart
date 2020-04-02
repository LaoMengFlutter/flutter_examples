import 'package:flutter/material.dart';
import 'package:flutter_app/route/routes.dart';
import 'package:flutter_app/route/two_page.dart';

///
/// des:
///
class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnePage'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('跳转'),
          onPressed: () async {
//            var result = await Navigator.of(context)
//                .push(MaterialPageRoute(builder: (context) {
//              return TwoPage();
//            }));
            var result = await Navigator.of(context)
                .pushNamed(Routes.twoPage, arguments: 'TwoPage');
//            var result = await Navigator.of(context)
//                .pushNamed(Routes.threePage);
            print('$result');
          },
        ),
      ),
    );
  }
}
