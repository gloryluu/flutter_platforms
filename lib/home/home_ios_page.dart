import 'package:flutter/cupertino.dart';

class HomeIOSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // backgroundColor: Color(0xffffbf00),
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        middle: Text('Home Page iOS'),
      ),
      child: Center(
        child: CupertinoButton(child: Text('Click me'), onPressed: () {})
      ),
    );
  }
}
// cupertino list
// https://gist.github.com/Andrious/2035e0a28ae8cf7b2349f339a86b8e4d