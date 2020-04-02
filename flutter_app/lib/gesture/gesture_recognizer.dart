import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// des:
///
class GestureRecognizerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GestureRecognizerDemo();
}

class _GestureRecognizerDemo extends State<GestureRecognizerDemo> {
  var _tapGestureRecognizer = TapGestureRecognizer();
  var _textColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer..onTapDown = (v) {
      setState(() {
        _textColor = Colors.red;
      });
    };
    _tapGestureRecognizer..onTapUp = (v) {
      setState(() {
        _textColor = Colors.black;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(children: <InlineSpan>[
          TextSpan(
              text: '你好，Flutter实战入门',
              style: TextStyle(color: _textColor),
              recognizer: _tapGestureRecognizer),
        ]),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tapGestureRecognizer.dispose();
  }
}
