import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final String text;

  Resultado(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.green,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
