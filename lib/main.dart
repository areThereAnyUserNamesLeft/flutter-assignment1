// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './app.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _changableText = "Initial Text";
  @override
  Widget build(BuildContext ctx) {
    void _changeText() {
      print('this happened');
      setState(() {
        _changableText = "New text";
      });
    }

    return MaterialApp(
      home: App('Text change app', _changableText, _changeText),
    );
  }
}
