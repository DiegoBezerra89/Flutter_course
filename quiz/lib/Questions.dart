import 'package:flutter/material.dart';
import './Question.dart';
import './Answer.dart';

class Questions extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questions({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['texto']),
        ...respostas
        .map((resp) {
          return Answer(
            resp['texto'],
            () => responder(resp['pontuacao']),
          );
        }).toList(),
      ],
    );
  }
}
