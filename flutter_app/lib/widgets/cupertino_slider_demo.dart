import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// des:
///
class CupertinoSliderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CupertinoSliderDemo();
}

class _CupertinoSliderDemo extends State<CupertinoSliderDemo> {
  double _value = 1.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSlider(
        value: _value,
        onChanged: (double v) {
          setState(() {
            print('$v');
            _value = v;
          });
        },
        min: 1.0,
        max: 10.0,
        divisions: 5,
        activeColor: Colors.red,
      ),
    );
  }
}
