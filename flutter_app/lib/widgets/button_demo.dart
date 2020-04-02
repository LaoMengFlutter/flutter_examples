import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('RaisedButton'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('FlatButton'),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('OutlineButton'),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            OutlineButton(
              onPressed: () {},
              child: Text('none'),
              borderSide: BorderSide(color:Colors.green,width: 2.0,style: BorderStyle.none),
            ),
            OutlineButton(
              onPressed: () {},
              child: Text('solid'),
              borderSide: BorderSide(color:Colors.green,width: 2.0,style: BorderStyle.solid),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('onPressed'),
            ),
            RaisedButton(
              child: Text('not press'),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('normal'),
              textTheme: ButtonTextTheme.normal,
            ),
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('accent'),
              textTheme: ButtonTextTheme.accent,
            ),
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('primary'),
              textTheme: ButtonTextTheme.primary,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text('not press'),
              disabledColor: Colors.red,
            )
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('darks'),
              colorBrightness: Brightness.dark,
            ),
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('light'),
              colorBrightness: Brightness.light,
            ),
          ],
        ),
        Row(

          children: <Widget>[
            RaisedButton(
                onPressed: (){print('onPressed');},
                child: Text('elevation=10'),
              elevation: 10,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('onPressed');},
              child: Text('Border'),
              shape: Border.all(),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('nonenonenonenonenone');},
              child: Text('nonenonenonenonenone'),
              clipBehavior: Clip.none,
            ),

            RaisedButton(
              onPressed: (){print('hardEdge');},
              child: Text('hardEdge'),
              clipBehavior: Clip.hardEdge,
            ),

          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: (){print('antiAlias');},
              child: Text('antiAlias'),
              clipBehavior: Clip.antiAlias,
            ),
            RaisedButton(
              onPressed: (){print('antiAliasWithSaveLayer');},
              child: Text('antiAliasWithSaveLayer'),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ],
        ),

        RaisedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.access_alarm),
            label: Text('label')
        ),
        Container(
          child: ButtonBar(
            children: <Widget>[
              RaisedButton(child: Text('ButtonBar'),),
              RaisedButton(child: Text('ButtonBar'),),
              RaisedButton(child: Text('ButtonBar'),),

            ],
          ),
        ),
      ],
    );
  }
}
