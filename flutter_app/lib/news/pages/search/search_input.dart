import 'package:flutter/material.dart';
import 'package:flutter_app/news/pages/search/search_home.dart';

///
/// des:顶部的搜索框
///
class SearchInput extends StatefulWidget {
  /// 输入框内滚动内容
  List<String> titles = [
    '浓眉哥拒绝湖人续约 | 武汉通报肺炎事件',
    '伊朗或有第三轮袭击 | 大众cc老款图片',
    '苹果呼吸灯怎么设置 | 红旗H9全球首秀',
    '武汉肺炎事件后续 | 沃尔沃xc70图片',
    '北京户口申请条件 | 红旗H9汽车',
    '武汉新型冠状病毒 | 马刺'
  ];

  @override
  State<StatefulWidget> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput>
    with SingleTickerProviderStateMixin {
  ///当前滚动内容的索引
  int _currentIndex = 0;

  /// animation controller
  AnimationController _animationController;
  var _outAnimation;
  var _inAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(milliseconds: 800), vsync: this)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              //执行结束后5秒在此执行
              Future.delayed(Duration(seconds: 5), () {
                _currentIndex++;
                _animationController.reset();
                _animationController.forward();
              });
            }
          });
    _outAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -40))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Interval(0, 0.5)));
    _inAnimation = Tween<Offset>(begin: Offset(0, 40), end: Offset(0, 0))
        .animate(CurvedAnimation(
            parent: _animationController, curve: Interval(0.5, 1)));
    Future.delayed(Duration(seconds: 5), () {
      _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildClick();
  }
  _buildClick(){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return SearchHome();
        }));
      },
      child:_build() ,
    );
  }
  _build(){
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 20,
          ),
          Flexible(
            child: _buildOutTitle(),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
  ///
  /// 出场动画
  ///
  Widget _buildOutTitle() {
    return Stack(
      children: <Widget>[
        _buildText(
            widget.titles[_currentIndex % widget.titles.length], _outAnimation),
        _buildText(widget.titles[(_currentIndex + 1) % widget.titles.length],
            _inAnimation),
      ],
    );
  }

  ///
  /// 构建title
  ///
  _buildText(String title, Animation<Offset> animation) {
    return Transform.translate(
      offset: animation.value,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}
