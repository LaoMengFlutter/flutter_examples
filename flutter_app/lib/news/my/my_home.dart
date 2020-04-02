import 'package:flutter/material.dart';

///
/// des:
///
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFEEEEEE),
      child: Column(
        children: <Widget>[
          _buildLogin(context),
          SizedBox(
            height: 5,
          ),
          _buildCommonFunctions(),
          SizedBox(
            height: 5,
          ),
          _buildMore(),
        ],
      ),
    );
  }

  Widget _buildMore() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              '更多功能',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Table(
            children: <TableRow>[
              TableRow(children: <Widget>[
                _buildFuncItem(Icons.memory, '超级会员'),
                _buildFuncItem(Icons.public, '圆梦公益'),
                _buildFuncItem(Icons.merge_type, '夜间模式'),
                _buildFuncItem(Icons.comment, '评论'),
              ]),
              TableRow(children: <Widget>[
                Container(
                  height: 30,
                ),
                Container(),
                Container(),
                Container(),
              ]),
              TableRow(children: <Widget>[
                _buildFuncItem(Icons.favorite_border, '点赞'),
                _buildFuncItem(Icons.scanner, '扫一扫'),
                _buildFuncItem(Icons.fingerprint, '广告推广'),
                Container(),
              ]),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildLogin(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 80, bottom: 50),
        color: Colors.white,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          radius: 50,
          child: Text(
            '登录',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ));
  }

  Widget _buildCommonFunctions() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              '常用功能',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildFuncItem(Icons.hearing, '关注'),
              _buildFuncItem(Icons.notifications_none, '消息通知'),
              _buildFuncItem(Icons.star_border, '收藏'),
              _buildFuncItem(Icons.history, '阅读历史'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildFuncItem(Icons.card_giftcard, '钱包'),
              _buildFuncItem(Icons.edit, '用户反馈'),
              _buildFuncItem(Icons.invert_colors, '免流量服务'),
              _buildFuncItem(Icons.settings, '系统设置'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildFuncItem(IconData iconData, String txt) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 30,
          ),
          Text(txt)
        ],
      ),
    );
  }
}
