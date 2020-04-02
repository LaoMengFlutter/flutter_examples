import 'package:flutter/material.dart';
import 'package:flutter_app/news/pages/home/news_list.dart';

///
/// des:
///
class Home extends StatefulWidget {
  Map<String, String> _tab = {
    '电视': 'BA10TA81wangning',
    '电影': 'BD2A9LEIwangning',
    '明星': 'BD2AB5L9wangning',
    '音乐': 'BD2AC4LMwangning',
    '体育': 'BA8E6OEOwangning',
    '财经': 'BA8EE5GMwangning',
    '军事': 'BAI67OGGwangning'
  };

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: widget._tab.keys.length, vsync: ScrollableState());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          tabs: widget._tab.keys.map((key) {
            return Text(key);
          }).toList(),
          unselectedLabelColor: Colors.black,
          labelColor: Theme.of(context).primaryColor,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          labelPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        ),
        Divider(
          height: 1,
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            children: widget._tab.values.map((v) {
              return NewsList(v);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
