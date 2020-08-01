import 'package:flutter/material.dart';
import './Resultado.dart';
import './Questions.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        'Preto',
        'vermelho',
        'verde',
        'azul',
      ]
    },
    {
      'texto': 'Qual é o seu carro favorito?',
      'respostas': [
        'Peugeot',
        'New Beetle',
        'Fusca',
        'BMW',
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        'Cachorro',
        'Gato',
        'Cobra',
        'coelhinho',
      ]
    },
  ];
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    return print('Pergunta selecionada: $_perguntaSelecionada');
  }

  void reset() {
    setState(() {
      _perguntaSelecionada = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Boa do time'),
        ),
        body: temPerguntaSelecionada
            ? Questions(
                perguntaSelecionada: _perguntaSelecionada,
                perguntas: _perguntas,
                responder: _responder,
              )
            : Column(
                children: [
                  Resultado('PARABÉNS!'),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.purple,
                      onPressed: reset,
                      child: Text('Reset'),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
