import 'package:flutter/material.dart';
import './Question.dart';
import './Resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    return print('Pergunta selecionada: $_perguntaSelecionada');
  }

  final _perguntas = [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': ['verde', 'azul', 'vermelho', 'preto'],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': ['tigre', 'cachorro', 'gato', 'coelho'],
    },
    {
      'texto': 'Qual o seu carro favorito?',
      'respostas': ['Mercedes', 'Ferrari', 'Opala', 'BMW'],
    },
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: <Widget>[
                    Question(_perguntas[_perguntaSelecionada]['texto']),
                    ...respostas.map((t) => Resposta(t, _responder)).toList()
                  ],
                )
              : Center(
                  child: Text(
                    'Parabéns!',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
