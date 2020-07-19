import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get getResult {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'Wow you are a good person!';
    } else if (resultScore <= 12) {
      resultText = 'We have an interesting person here!';
    } else if (resultScore <= 16) {
      resultText =
          'Be careful with the darkness, this could turns you into a monster!';
    } else {
      resultText = 'Run to the mountains, the beast is unleashed!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResult,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.deepPurple,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
