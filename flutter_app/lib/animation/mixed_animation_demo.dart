import 'package:flutter/material.dart';

///
/// des:
///
class MixedAnimationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MixedAnimationDemo();
}

class _MixedAnimationDemo extends State<MixedAnimationDemo>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  var animationSize;
  var animationColor;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
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

//    animationSize = Tween(begin: 80.0, end: 100.0);
//    animationColor = ColorTween(begin: Colors.red, end: Colors.black);

    animationSize = Tween(begin: 80.0, end: 100.0).animate(CurvedAnimation(
        parent: animationController, curve: Interval(0.0, 0.5)));
    animationColor = ColorTween(begin: Colors.red, end: Colors.black).animate(
        CurvedAnimation(
            parent: animationController, curve: Interval(0.5, 1.0)));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
//        height: animationSize.evaluate(animationController),
//        width: animationSize.evaluate(animationController),
//        color: animationColor.evaluate(animationController),
        height: animationSize.value,
        width: animationSize.value,
        color: animationColor.value,
      ),
    );
  }
}
