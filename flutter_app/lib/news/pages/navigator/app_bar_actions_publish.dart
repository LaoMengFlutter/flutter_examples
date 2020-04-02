import 'package:flutter/material.dart';

///
/// des:app bar 发布
///
class AppBarActionsPublish extends StatelessWidget {
  ///
  /// 点击发布
  ///
  _onTap() {
    print('点击发布');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.camera_alt,
            color: Colors.white,
            size: 26,
          ),
          Text(
            '发布',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
