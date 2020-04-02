import 'package:flutter/material.dart';
import 'package:flutter_app/locations/intl_messages/intl_localizations.dart';
import 'package:intl/intl.dart';

///
/// des:
///
class IntlLocalizationsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'intl app_name：${IntlLocalizations.of(context).appName}'),
    );
  }
}

