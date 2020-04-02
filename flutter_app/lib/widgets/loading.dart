import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class Loading extends StatefulWidget {
  Loading({Key key, this.callback}) : super(key: key);

  Future callback;

  @override
  State<StatefulWidget> createState() => _Loading();
}

class _Loading extends State<Loading> {
  @override
  void initState() {
    super.initState();
    if (widget.callback != null) {
      widget.callback.then((v) {
//        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Color(0xcc333333),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
