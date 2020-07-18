import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {
  final Function answerHandler;
  final String buttonText; 
  var blue = 'blue';
  Answer(this.answerHandler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(buttonText),
        onPressed: answerHandler,
      )
    );
  }
}