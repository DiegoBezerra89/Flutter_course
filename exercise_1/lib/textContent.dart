import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {
  final String textContent;

  TextContent(this.textContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        textContent,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
