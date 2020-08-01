import 'package:flutter/material.dart';
import './Question.dart';
import './Resposta.dart';

class Questions extends StatelessWidget {
  final List <Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  Questions({this.perguntas, this.perguntaSelecionada, this.responder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;
    
    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, responder)).toList()
      ],
    );
  }
}
