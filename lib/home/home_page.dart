import 'package:flutter/material.dart';
import '../main.dart';
import 'home_android_page.dart';
import 'home_ios_page.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key key,
    this.useMaterial = false,
    this.useCupertino = false,
    this.switchUI = false,
  }) : super(key: key);
  final bool useMaterial;
  final bool useCupertino;
  final bool switchUI;

  @override
  Widget build(BuildContext context) {
    return MyApp.useMaterial ? HomeAndroidPage() : HomeIOSPage();
  }
}
