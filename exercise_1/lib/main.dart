import 'package:flutter/material.dart';

import './textControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var buttonText = 'Press Me';
  var mainText = 'This text will change...';
  var buttonTextReset = 'Reset';
  var flagButton = false;

  void resetText() {
    setState(() {
      buttonText = 'Press Me';
      mainText = 'This Text will change...';
      flagButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    void changeText() {
      setState(() {
        buttonText = 'Outch!!';
        mainText = 'I warned you!';
        flagButton = true;
      });
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Exercise'),
          ),
          body: Column(
            children: <Widget>[
              TextControl(mainText),
              Container(
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: changeText,
                  child: Text(buttonText),
                ),
              ),
              if (flagButton)
                Container(
                  child: RaisedButton(
                    color: Colors.yellow[800],
                    textColor: Colors.white,
                    onPressed: resetText,
                    child: Text(buttonTextReset),
                  ),
                )
              else
                Text(' '),
            ],
          )),
    );
  }
}
