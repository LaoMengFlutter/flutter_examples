import 'package:flutter/material.dart';

///
/// des:
///
class AnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimationDemo();
}

class _AnimationDemo extends State<AnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  var animation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          //执行结束反向执行
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          //反向执行结束正向执行
          animationController.forward();
        }
      });

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animation = Tween(begin: 80.0, end: 100.0).animate(animation);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: animation.value,
        width: animation.value,
        color: Colors.red,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
