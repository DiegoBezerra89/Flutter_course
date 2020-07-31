import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() handlerSelect;

  Resposta(this.text, this.handlerSelect);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(text),
        onPressed: handlerSelect,
      ),
    );
  }
}