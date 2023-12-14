import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Certificate_page.dart';
import 'Main_page.dart';
import 'Past_event.dart';
import 'Settings.dart';
import 'Sign_in_page.dart';
import 'Sign_up_page.dart';

class RouteGenerator {
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android)
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
    else
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => gidilecekWidget,
      );
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _routeOlustur(Home_page(), settings);
      case '/settings_page':
        return _routeOlustur(Settings(), settings);
      case '/past_event_page':
        return _routeOlustur(Past_event(), settings);
      case '/certificate_page':
        return _routeOlustur(Certificate(), settings);
      case '/Sign_in_page':
        return _routeOlustur(Sign_in(), settings);
      case '/Sign_up_page':
        return _routeOlustur(Sign_up(), settings);

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('404'),
            ),
            body: Center(
              child: Text('Sayfa Bulunamadı'),
            ),
          ),
        );
    }
  }
}
