import 'package:flutter/material.dart';

class HomeAndroidPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Android Page'),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
          padding: EdgeInsets.all(8.0),
          splashColor: Colors.blueAccent,
          child: Text('Flat Button'),
          onPressed: () {},
        ),
      ),
    );
  }
}
