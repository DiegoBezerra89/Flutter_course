import 'package:flutter/material.dart';

import './Result.dart';
import './Questions.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'vermelho', 'pontuacao': 8},
        {'texto': 'verde', 'pontuacao': 5},
        {'texto': 'azul', 'pontuacao': 2},
      ]
    },
    {
      'texto': 'Qual é o seu carro favorito?',
      'respostas': [
        {'texto': 'Peugeot', 'pontuacao': 2},
        {'texto': 'New Beetle', 'pontuacao': 5},
        {'texto': 'Fusca', 'pontuacao': 10},
        {'texto': 'BMW', 'pontuacao': 8},
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 5},
        {'texto': 'Gato', 'pontuacao': 8},
        {'texto': 'Cobra', 'pontuacao': 10},
        {'texto': 'coelhinho', 'pontuacao': 2},
      ]
    },
  ];
  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
    print('Pergunta selecionada: $_perguntaSelecionada, $_pontuacaoTotal');
  }

  void reset() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
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
            : Result(
                text: 'Parabéns, sua pontuacao foi:',
                pontuacao: _pontuacaoTotal,
                resetQuiz: reset,
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
