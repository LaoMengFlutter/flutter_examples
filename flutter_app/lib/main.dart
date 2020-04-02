import 'package:flutter/material.dart';
import 'package:flutter_app/file/file_demo.dart';
import 'package:flutter_app/locations/intl_messages/intl_localizations.dart';
import 'package:flutter_app/news/news_main.dart';
import 'package:flutter_app/route/nest_route.dart';
import 'package:flutter_app/route/one_page.dart';
import 'package:flutter_app/route/routes.dart';
import 'package:flutter_app/sql/sqllite_demo.dart';
import 'package:flutter_app/widgets/qq_login.dart';
import 'package:flutter_app/widgets/signature_painter.dart';
import 'package:flutter_app/widgets/snack_bar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'locations/intl_localizations_demo.dart';
import 'locations/localizations_demo.dart';
import 'locations/simple_localizations.dart';
import 'note/note_list.dart';
import 'widgets/text_demo.dart';
import 'package:flutter_app/widgets/text_demo.dart';
import 'widgets/text_field_demo.dart';
import 'widgets/image_demo.dart';
import 'widgets/button_demo.dart';
import 'widgets/container_demo.dart';
import 'widgets/row_demo.dart';
import 'widgets/scaffold_demo.dart';
import 'widgets/appbar_demo.dart';
import 'widgets/sliver_app_bar_demo.dart';
import 'widgets/bottom_navigation_bar_demo.dart';
import 'widgets/tab_bar_demo.dart';
import 'widgets/drawer_demo.dart';
import 'widgets/cupertino_activity_indicator_demo.dart';
import 'widgets/cupertino_alert_dialog_demo.dart';
import 'widgets/cupertino_button_demo.dart';
import 'widgets/cupertino_popup_surface_demo.dart';
import 'widgets/cupertino_slider_demo.dart';
import 'widgets/cupertino_switch_demo.dart';
import 'widgets/padding_demo.dart';
import 'widgets/transform_demo.dart';
import 'widgets/stack_demo.dart';
import 'widgets/wrap_demo.dart';
import 'widgets/table_demo.dart';
import 'widgets/listview_demo.dart';
import 'widgets/gridview_demo.dart';
import 'widgets/expansiontile_demo.dart';
import 'gesture/gesture_detector_demo.dart';
import 'gesture/gesture_recognizer.dart';
import 'gesture/listener.dart';
import 'gesture/gesture_conflict.dart';
import 'gesture/slide_delete.dart';
import 'widgets/dismissible_demo.dart';
import 'animation/animation_demo.dart';
import 'animation/animated_widget_demo.dart';
import 'animation/animated_builder_demo.dart';
import 'animation/mixed_animation_demo.dart';
import 'animation/animated_list_demo.dart';
import 'animation/hero_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
//      initialRoute: Routes.onePage,
      onGenerateRoute: (RouteSettings settings){
        print('onGenerateRoute:$settings');
      },
      onUnknownRoute: (RouteSettings settings){
        print('onUnknownRoute:$settings');
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        SimpleLocalizations.delegate,
        IntlLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('zh'),
        Locale('en'),
      ],
      localeListResolutionCallback: (List<Locale> locales, Iterable<Locale> supportLocales){
        if(locales.isNotEmpty){
          if(locales[0].languageCode == 'zh'){
            return Locale('zh','CN');
          }else if(locales[0].languageCode == 'en'){
            //所有英语区域使用美式英语
            return Locale('en','US');
          }
        }
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var location = Localizations.localeOf(context);
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Flutter 实战入门'),
//      ),
//      body: Row(
//        mainAxisSize: MainAxisSize.max,
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(),
//          SizedBox(width: 10,),
//          RaisedButton(),
//        ],
//      ),
//    );
    return NoteList();

  }
}
