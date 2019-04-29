import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'ninghao_demo_messages_all.dart';

class FlyingfishDemoLocalizations {
  static FlyingfishDemoLocalizations of(BuildContext context) {
    return Localizations.of<FlyingfishDemoLocalizations>(
      context,
      FlyingfishDemoLocalizations
    );
  }

  static Future<FlyingfishDemoLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return FlyingfishDemoLocalizations();
    });
  }
  
  String get title => Intl.message(
    'hello',
    name: 'title',
    desc: 'demo localizations.',
  );

  String greet(String name) => Intl.message(
    'hello $name',
    name: 'greet',
    desc: 'greet someone.',
    args: [name],
  );
}

class FlyingfishDemoLocalizationsDelegate
    extends LocalizationsDelegate<FlyingfishDemoLocalizations> {
  FlyingfishDemoLocalizationsDelegate();

  @override
  Future<FlyingfishDemoLocalizations> load(Locale locale) {
    return FlyingfishDemoLocalizations.load(locale);
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