import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ImageDemo();
  }
}

class _ImageDemo extends State<ImageDemo> {
  String _storageDir = '';

  _getLocalFile() async {
    String storageDir = (await getExternalStorageDirectory()).path;
    setState(() {
      _storageDir = storageDir;
    });
    return storageDir;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        Image.network(
//          'http://pic1.win4000.com/pic/c/cf/cdc983699c.jpg',
//          width: 200,
//          height: 200,
//        ),
//        Image.asset(
//          'assets/icons/flutter_icon.png',
//          width: 200,
//          height: 200,
//        ),
        Image.file(
          File('$_storageDir/flutter_app.png'),
          width: 200,
          height: 200,
        ),
      ],
    );
  }

}
