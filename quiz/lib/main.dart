import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  Function() responder(int number) {
    return (){
      print('Pergunta respondida: $number');
    }; 
  }

  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
      'Qual o seu carro favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: () => print('Resposta 1'),
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2');
              },
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder(3),
            ),
          ],
        ),
      ),
    );
  }
}
