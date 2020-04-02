import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';

///
/// des: 左滑出现"删除"效果
///
class SlideDelete extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SlideDelete();
}

class _SlideDelete extends State<SlideDelete> {
  /// 确认删除吗
  bool delete = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.centerLeft,
        height: 70,
        child: Slide(
          actions: <Widget>[
            _createDelete(),
          ],
          actionsWidth: 100,
          child: GestureDetector(
            onTap: () {},
            child: _createItem(),
          ),
        ),
      ),
    );
  }

  ///
  /// 左滑删除
  ///
  _createDelete() {
    return GestureDetector(
      onTap: () {
        if (delete) {
          //点击删除

        } else {
          setState(() {
            delete = !delete;
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 100,
        color: Colors.red,
        child: Text(delete ? '确认删除' : '删除'),
      ),
    );
  }

  ///
  /// item
  ///
  Widget _createItem() {
    return Container(
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.only(left: 4),
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('左滑删除'),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

class Slide extends StatefulWidget {
  Key key;
  List<Widget> actions;
  Widget child;
  double actionsWidth;

  Slide(
      {this.key,
      @required this.child,
      @required this.actionsWidth,
      @required this.actions})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _Slide();
}

class _Slide extends State<Slide> with TickerProviderStateMixin {
  double translateX = 0;

  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        lowerBound: -widget.actionsWidth,
        upperBound: 0,
        vsync: this,
        duration: Duration(milliseconds: 300))
      ..addListener(() {
        translateX = animationController.value;
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: widget.actions,
        )),
        GestureDetector(
          onHorizontalDragUpdate: (v) {
            onHorizontalDragUpdate(v);
          },
          onHorizontalDragEnd: (v) {
            onHorizontalDragEnd(v);
          },
          child: Transform.translate(
            offset: Offset(translateX, 0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: widget.child,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void onHorizontalDragUpdate(DragUpdateDetails details) {
    translateX =
        (translateX + details.delta.dx).clamp(-widget.actionsWidth, 0.0);
    setState(() {});
  }

  void onHorizontalDragEnd(DragEndDetails details) {
    animationController.value = translateX;
    if (details.velocity.pixelsPerSecond.dx > 200) {
      close();
    } else if (details.velocity.pixelsPerSecond.dx < -200) {
      open();
    } else {
      if (translateX.abs() > widget.actionsWidth / 2) {
        open();
      } else {
        close();
      }
    }
  }

  void open() {
    if (translateX != -widget.actionsWidth)
      animationController.animateTo(-widget.actionsWidth);
  }

  void close() {
    if (translateX != 0) animationController.animateTo(0);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
