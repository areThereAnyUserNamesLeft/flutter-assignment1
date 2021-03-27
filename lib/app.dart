import 'package:flutter/material.dart';
import './text-control.dart';
import './text-display.dart';

class App extends StatelessWidget {
  final String titleText;
  final String text;
  final Function callback;

  App(this.titleText, this.text, this.callback);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText),
        backgroundColor: Color.fromARGB(70, 70, 70, 245),
      ),
      body: Column(children: [
        Container(
          child: TextControl(callback),
          width: double.infinity,
          margin: EdgeInsets.all(15),
        ),
        Container(child: TextDisplay(text))
      ]),
    );
  }
}
