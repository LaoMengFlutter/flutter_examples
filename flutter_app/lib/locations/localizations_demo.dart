import 'package:flutter/material.dart';
import 'package:flutter_app/locations/simple_localizations.dart';

import 'localizations_key.dart';

///
/// des:
///
class LocalizationsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          '当前app_name国际化值：${SimpleLocalizations.of(context).values[LocalizationsKey.appName]}'),
    );
  }
}
