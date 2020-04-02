import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewDemo();
}

class _ListViewDemo extends State<ListViewDemo> {
  var _list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        RaisedButton(
          child: Text('删除'),
          onPressed: () {
            setState(() {
              _list.removeAt(0);
            });
          },
        ),
        Flexible(
          child: ListView.separated(
            itemCount: _list.length,
            separatorBuilder: (context, index) {
              return Container(
                height: 1,
                color: Colors.black12,
              );
            },
            itemBuilder: (context, index) {
              return Item(
                key: Key('${_list[index]}'),
                name: _list[index].toString(),
                onTap: (key) {
                  int name = int.parse((key as ValueKey).value);

                  setState(() {
                    _list.removeWhere((item) => item == name);
                  });
                },
              );
            },
          ),
        )
      ],
    );
  }
}

class Item extends StatefulWidget {
  Item({Key key, this.name, this.onTap}) : super(key: key);

  final String name;
  final ValueCallback onTap;

  @override
  State<StatefulWidget> createState() => _Item();
}

class _Item extends State<Item> {
  bool select = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call(widget.key);
      },
      onLongPress: () {
        setState(() {
          select = !select;
        });
      },
      child: Container(
        alignment: Alignment.center,
        color: select ? Colors.black12 : Colors.white,
        height: 50,
        child: Text('name:${widget.name},key:${widget.key.toString()}'),
      ),
    );
  }
}

typedef ValueCallback = Function(Key key);
