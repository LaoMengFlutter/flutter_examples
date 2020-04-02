import 'package:flutter/material.dart';

///
/// des:
///
class GestureDetectorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GestureDetectorDemo();
}

class _GestureDetectorDemo extends State<GestureDetectorDemo> {
  double _height = 200;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
//      onTapDown: (TapDownDetails tapDownDetails) {
//        print('onTapDown');
//      },
//      onTapUp: (TapUpDetails tapUpDetails) {
//        print('onTapUp');
//      },
//      onTap: () {
//        print('onTap');
//      },
//      onTapCancel: () {
//        print('onTapCancel');
//      },
//      onDoubleTap: ()=>print('onDoubleTap'),
//      onLongPressStart: (v) => print('onLongPressStart'),
//      onLongPressMoveUpdate: (v) => print('onLongPressMoveUpdate'),
//      onLongPressUp: () => print('onLongPressUp'),
//      onLongPressEnd: (v) => print('onLongPressEnd'),
//      onLongPress: () => print('onLongPress'),
//      onVerticalDragStart: (v) => print('onVerticalDragStart'),
//      onVerticalDragDown: (v) => print('onVerticalDragDown'),
//      onVerticalDragUpdate: (v) => print('onVerticalDragUpdate'),
//      onVerticalDragCancel: () => print('onVerticalDragCancel'),
//      onVerticalDragEnd: (v) => print('onVerticalDragEnd'),
      onScaleStart: (v) => print('onScaleStart'),
      onScaleUpdate: (ScaleUpdateDetails scaleUpdateDetails) {
        setState(() {
          _height = 200 * scaleUpdateDetails.verticalScale;
        });
      },
      onScaleEnd: (v) => print('onScaleEnd'),
      child: Center(
        child: Container(
          width: 200,
          height: _height,
          color: Colors.red,
        ),
      ),
    );
  }
}
