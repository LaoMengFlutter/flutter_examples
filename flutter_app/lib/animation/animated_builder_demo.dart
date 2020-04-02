import 'package:flutter/material.dart';

///
/// des:
///

class AnimatedBuilderDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedBuilderDemo();
}

class _AnimatedBuilderDemo extends State<AnimatedBuilderDemo>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  var animation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
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
      child: _AnimatedBuilder(
        animation: animation,
        child: FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}

class _AnimatedBuilder extends StatelessWidget {
  _AnimatedBuilder({this.child, this.animation});

  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Container(
          height: animation.value,
          width: animation.value,
          child: child,
        );
      },
      child: child,
    );
  }
}
