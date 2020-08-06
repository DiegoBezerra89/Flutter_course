import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;
  final int pontuacao;
  void Function() resetQuiz;

  Result({this.text, this.pontuacao, this.resetQuiz});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns, vc é uma moça!';
    } else if (pontuacao < 15) {
      return 'Eh, sabe viver.';
    } else if (pontuacao < 25) {
      return 'Cuidado com essa fúria!';
    } else {
      return 'Eita porra, vc é foda!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28,
            ),
          ),
        ),
        RaisedButton(
          textColor: Colors.white,
          color: Colors.purple,
          onPressed: resetQuiz,
          child: Text('Reset'),
        ),
      ],
    );
  }
}
