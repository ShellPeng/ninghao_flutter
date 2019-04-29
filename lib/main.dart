import 'package:flutter/material.dart';
import 'package:ninghao_flutter/demo/animation/animation_demo.dart';
import 'package:ninghao_flutter/demo/bloc/bloc_demo.dart';
import 'package:ninghao_flutter/demo/http/http_demo.dart';
import 'package:ninghao_flutter/demo/i18n/i18n_demo.dart';
import 'package:ninghao_flutter/demo/rxdart/rxdart_demo.dart';
import 'package:ninghao_flutter/demo/state/state_management_demo.dart';
import 'package:ninghao_flutter/demo/stream/stream_demo.dart';
import 'package:ninghao_flutter/demo/test/test_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/navigator_demo.dart';
import './demo/form_demo.dart';
import './demo/material_components.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:ninghao_flutter/demo/i18n/map/ninghao_demo_localizations.dart';
import 'package:ninghao_flutter/demo/i18n/intl/ninghao_demo_localizations.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('en', 'US'),
      // locale: Locale('zh', 'CN'),
      // localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
      //   return Locale('en', 'US');
      // },
      localizationsDelegates: [
        FlyingfishDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationBarDemo(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state-management': (context) => StateManagementDemo(),
        '/stream': (context) => StreamDemo(),
        '/rxdart': (context) => RxDartDemo(),
        '/bloc': (context) => BlocDemo(),
        '/http': (context) => HttpDemo(),
        '/animation': (context) => AnimationDemo(),
        '/i18n': (context) => I18nDemo(),
        '/test': (context) => TestDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor:  Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}

