import 'package:flutter/material.dart';

///
/// des:
///
class HeroDetailDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 1,
        child: Hero(
          tag: 'chair',
          child: Image.asset('assets/icons/chair.png'),
        ),
      ),
    );
  }
}
