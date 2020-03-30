import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:two_platform/home/home_page.dart';

void main() => runApp(MyApp(iOS: true,));

class MyApp extends StatelessWidget {
  MyApp({
    this.key,
    this.android = false,
    this.iOS = false,
    this.switchUI = false,
  }) {
    _useMaterial = android;
    _useCupertino = iOS;
    _switchUI = switchUI;
  }
  final Key key;
  final bool android;
  final bool iOS;
  final bool switchUI;

  static bool _useMaterial;
  static bool _useCupertino;
  static bool _switchUI;

  @override
  Widget build(BuildContext context) {
    String title = 'Startup Name Generator';
    Widget home = HomePage(key: key);
    if (useCupertino) {
      return CupertinoApp(
        theme: CupertinoThemeData(
          primaryColor: Colors.white, // back icon ha
          // primaryContrastingColor: Colors.red,
          barBackgroundColor: Colors.blue, //bar color
          scaffoldBackgroundColor: Colors.cyan,
          textTheme: CupertinoTextThemeData(
            primaryColor: Colors.red,
            // navTitleTextStyle: TextStyle(color: Colors.white)
          )
        ),
        title: title,
        home: home,
      );
    } else {
      return MaterialApp(
        title: title,
        home: home,
      );
    }
  }

  // Use Material UI when explicitly specified or even when running in iOS
  static bool get useMaterial =>
      kIsWeb ||
      (_useMaterial && !_useCupertino) ||
      (Platform.isAndroid && !_switchUI && !_useCupertino) ||
      (Platform.isIOS && _switchUI);

  // Use Cupertino UI when explicitly specified or even when running in Android
  static bool get useCupertino =>
      (_useCupertino && !_useMaterial) ||
      (Platform.isIOS && !_switchUI && !_useMaterial) ||
      (Platform.isAndroid && _switchUI);
}

