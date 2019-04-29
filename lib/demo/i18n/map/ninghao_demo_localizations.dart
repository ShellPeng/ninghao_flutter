import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class FlyingfishDemoLocalizations {
  final Locale locale;

  FlyingfishDemoLocalizations(this.locale);

  static FlyingfishDemoLocalizations of(BuildContext context) {
    return Localizations.of<FlyingfishDemoLocalizations>(
      context,
      FlyingfishDemoLocalizations
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '您好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class FlyingfishDemoLocalizationsDelegate
    extends LocalizationsDelegate<FlyingfishDemoLocalizations> {
  FlyingfishDemoLocalizationsDelegate();

  @override
  Future<FlyingfishDemoLocalizations> load(Locale locale) {
    return SynchronousFuture<FlyingfishDemoLocalizations>(
        FlyingfishDemoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<FlyingfishDemoLocalizations> old) {
    return false;
  }
}
