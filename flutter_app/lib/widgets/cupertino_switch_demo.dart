import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class CupertinoSwitchDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoSwitchDemo();
}

class _CupertinoSwitchDemo extends State<CupertinoSwitchDemo> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: _value,
        onChanged: (bool v) {
          setState(() {
            _value = v;
          });
        },
        activeColor: Colors.red,
      ),
    );
  }
}
