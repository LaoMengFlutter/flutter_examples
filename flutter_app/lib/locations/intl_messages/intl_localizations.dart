import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';


///
/// des:
///
class IntlLocalizations {
  IntlLocalizations();


  static IntlLocalizations of(BuildContext context) {
    return Localizations.of<IntlLocalizations>(context, IntlLocalizations);
  }

  String get appName {
    return Intl.message('app_name');
  }

  static const LocalizationsDelegate<IntlLocalizations> delegate =
  _IntlLocalizationsDelegate();

  static Future<IntlLocalizations> load(Locale locale) async{
    final String localeName = Intl.canonicalizedLocale(locale.toString());
    await initializeMessages(localeName);
    Intl.defaultLocale = localeName;
    return IntlLocalizations();
  }
}

class _IntlLocalizationsDelegate
    extends LocalizationsDelegate<IntlLocalizations> {
  const _IntlLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<IntlLocalizations> load(Locale locale) =>
      IntlLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<IntlLocalizations> old) => false;
}


