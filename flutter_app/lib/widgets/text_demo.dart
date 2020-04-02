import 'package:flutter/material.dart';

///
/// des: Text 组件实例
///
class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var paint = new Paint();
    paint.color = Color(0xFF00FF00);

    var shadowList = [
      new Shadow(color: Color(0xFFFF0000), offset: Offset(3, 3), blurRadius: 3)
    ];

    return Column(children: <Widget>[
      SizedBox(
        height: 10,
      ),
      //直接显示'Flutter 实战入门'
//        Text('Flutter 实战入门'),
      //字体颜色为蓝色、字体为20,带阴影
//        Text(
//          'Flutter 实战入门',
//          style: TextStyle(color: Colors.blue,fontSize: 20,
//              shadows: [
//                Shadow(color: Colors.black12,offset: Offset(3, 3),blurRadius: 3)
//              ]),
//        )
      //文本对齐方式
//        Container(
//          width: 300,
//          color: Colors.black12,
//          child: Text('Flutter 实战入门'),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Container(
//          width: 300,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门',
//            textAlign: TextAlign.center,
//          ),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Container(
//          width: 300,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门',
//            textAlign: TextAlign.end,
//          ),
//        ),
      //自动换行属性
//        Text(
//          'Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门',
//          softWrap: true,
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Text(
//          'Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门Flutter 实战入门',
//          softWrap: false,
//        ),
      //截取方式
//        Container(
//          width: 150,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门 截取方式：直接截取',
//            overflow: TextOverflow.clip,
//            softWrap: false,
//          ),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Container(
//          width: 150,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门 截取方式：渐隐',
//            overflow: TextOverflow.fade,
//            softWrap: false,
//          ),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Container(
//          width: 150,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门 截取方式：省略号',
//            overflow: TextOverflow.ellipsis,
//            softWrap: false,
//          ),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Container(
//          width: 150,
//          color: Colors.black12,
//          child: Text(
//            'Flutter 实战入门 截取方式：显示',
//            overflow: TextOverflow.visible,
//            softWrap: false,
//          ),
//        ),
      //textSpan
      Text.rich(
        TextSpan(
          text: '当前你所看的书是《',
          style: TextStyle(color: Colors.black),
          children: <InlineSpan>[
            TextSpan(text: 'Flutter 实战入门', style: TextStyle(color: Colors.red)),
            TextSpan(
              text: '》。',
            ),
          ],
        ),
      ),
    ]);
  }
}
