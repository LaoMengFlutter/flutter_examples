import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/locations/value_en.dart';
import 'package:flutter_app/locations/value_zh_cn.dart';

///
/// des:
///
class SimpleLocalizations {
  SimpleLocalizations(this._locale);

  final Locale _locale;

  static SimpleLocalizations of(BuildContext context) {
    return Localizations.of<SimpleLocalizations>(context, SimpleLocalizations);
  }

  Map<String, Map<String, String>> _localizedValues = {
    'zh': valuesZHCN,
    'en': valuesEN
  };

  Map<String, String> get values {
    if (_locale == null) {
      return _localizedValues['zh'];
    }
    return _localizedValues[_locale.languageCode];
  }

  static const LocalizationsDelegate<SimpleLocalizations> delegate =
      _SimpleLocalizationsDelegate();

  static Future<SimpleLocalizations> load(Locale locale) {
    return SynchronousFuture<SimpleLocalizations>(SimpleLocalizations(locale));
  }
}

class _SimpleLocalizationsDelegate
    extends LocalizationsDelegate<SimpleLocalizations> {
  const _SimpleLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<SimpleLocalizations> load(Locale locale) =>
      SimpleLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<SimpleLocalizations> old) => false;
}
