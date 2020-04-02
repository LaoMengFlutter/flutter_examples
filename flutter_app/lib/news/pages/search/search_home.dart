import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// des:
///
class SearchHome extends StatelessWidget {
  static const List<String> _topicList = [
    '老人公安局门口被保安推倒骨折',
    '57岁关之琳与光头男爬山',
    '珠珠谈入选全球最美面孔',
    '2019国家科学技术奖',
    '埋尸案二审维持原判',
    '陈晓陈妍希同框',
    '金卡戴珊花样炫富',
    '周华健回应婚后不顾家',
    '李小璐直播间带货秀鸽子蛋钻戒',
    '不良鱼贩往水里加柴油',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //搜索框
            _buildSearchInput(context),
            SizedBox(
              height: 20,
            ),
            _buildTodayHot(),
            SizedBox(
              height: 20,
            ),
            _buildTopic(),

          ],
        ),
      ),
    );
  }

  ///
  /// 话题榜
  ///
  _buildTopic() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          '话题榜',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 7 / 1),
          itemBuilder: (context, index) {
            return _buildTopicItem(_topicList[index], index + 1);
          },
          itemCount: _topicList.length,
        ),
      ],
    );
  }

  ///
  /// topic item
  ///
  Widget _buildTopicItem(String txt, int index) {
    var color = [1, 2, 3].contains(index) ? Colors.pink : Colors.grey;
    return Text.rich(
      TextSpan(
          text: '$index',
          style: TextStyle(color: color),
          children: <TextSpan>[
            TextSpan(text: '  $txt', style: TextStyle(color: Colors.black)),
          ]),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  ///
  /// build 今日热点
  ///
  _buildTodayHot() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '今日热点',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          spacing: 15,
          runSpacing: 10,
          children: [
            '故宫春节开放时间',
            '国家科学技术奖',
            '香港41名公务员被捕',
            '机票作废躲过坠机',
            'NBA全明星二轮票王',
            '黑龙江富豪被分尸',
          ].map((f) {
            return _buildHotText(f);
          }).toList(),
        ),
      ],
    );
  }

  ///
  /// build 热点view
  ///
  Widget _buildHotText(String text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      decoration: ShapeDecoration(
        color: Color(0xFFEEEEEE),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100))),
      ),
      child: Text(text),
    );
  }

  ///
  /// build search input
  ///
  _buildSearchInput(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Container(
            height: 45,
            child: TextField(
              autofocus: true,
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFEEEEEE),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFEEEEEE))),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                hintText: '故宫春节开放时间',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text('取消'),
        )
      ],
    );
  }
}
