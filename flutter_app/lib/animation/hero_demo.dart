import 'package:flutter/material.dart';
import 'package:flutter_app/animation/hero_detail_demo.dart';

///
/// des:
///
class HeroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return HeroDetailDemo();
        }));
      },
      child: Center(
        child: Hero(
          tag: 'chair',
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/icons/chair.png'),
          ),
        ),
      ),
    );
  }

  _buildItem(context, index) {

  }
}
