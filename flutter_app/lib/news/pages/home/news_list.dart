import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/news/http/http.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

import 'news_entry.dart';

///
/// des:
///
class NewsList extends StatefulWidget {
  NewsList(this.newsKey);

  final String newsKey;

  @override
  State<StatefulWidget> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  ///页码
  int _page = 1;
  static const _pageSize = 20;
  List<News> _newList = List();

  ///
  /// 下拉刷新数据
  ///
  Future _onRefresh() async {
    try {
      var url = '${widget.newsKey}/${(_page - 1) * _pageSize}-$_pageSize.html';
      var response = await Http.instance.dio.get(url);
      if (response.statusCode == 200) {
        String data = response.data;
        if (data != null && data.isNotEmpty) {
          //data数据包含在artiList()中，序列号json需要去掉artiList()
          data = data.substring(9, data.length - 1);
          data = data.replaceFirst('${widget.newsKey}', 'news');
          var jsonMap = json.decode(data);
          var news = NewsEntry.fromJson(jsonMap);
          _page = 1;
          _newList.clear();
          _newList.addAll(news.news);
          setState(() {});
        }
      } else {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
                'status code:${response.statusCode},${response.statusMessage}')));
      }
    } catch (e) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('$e')));
    }
  }

  @override
  void initState() {
    super.initState();
    _onRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return _buildClickItem(_newList[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Color(0xFFCCCCCC),
            );
          },
          itemCount: _newList.length),
    );
  }
  ///
  /// 跳转到详情
  ///
  toDetail(String url){
    print('$url');
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return WebviewScaffold(
        url: url,
        withJavascript: true,
        appBar: AppBar(),
      );
    }));
  }
  ///
  /// 点击item
  ///
  _buildClickItem(News news){
    return GestureDetector(
      onTap: ()=>toDetail(news.url),
      child: _buildItem(news),
    );
  }
  ///
  /// 构建item
  ///
  _buildItem(News news) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Text(
                  '${news.title}',
                  style: TextStyle(fontSize: 18),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 5,),
              Image.network(
                '${news.imgsrc}',
                height: 70,
                width: 112,
                fit: BoxFit.cover,
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Text(
              '${news.commentCount}评论  ${computeTime(news.ptime)}',
          style: TextStyle(fontSize: 12,color: Colors.grey),),
        ],
      ),
    );
  }

  String computeTime(String time) {
    var dateTime = DateTime.parse(time);
    var now = DateTime.now();
    var duration = now.difference(dateTime);
    if (duration.inDays > 0) {
      return '${duration.inDays}天前';
    }
    if (duration.inHours > 0) {
      return '${duration.inHours}小时前';
    }
    if (duration.inMinutes > 0) {
      return '${duration.inMinutes}分钟前';
    }
    return '1分钟前';
  }
}
