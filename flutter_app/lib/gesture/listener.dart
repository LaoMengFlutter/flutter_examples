import 'package:flutter/material.dart';

///
/// des:
///
class ListenerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Listener(
        onPointerDown: (v)=>print('onPointerDown'),
        onPointerMove: (v)=>print('onPointerMove'),
        onPointerCancel: (v)=>print('onPointerCancel'),
        onPointerUp: (v)=>print('onPointerUp'),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
