import 'package:flutter/material.dart';

import './textContent.dart';

class TextControl extends StatelessWidget {
  final String textContent;

  TextControl(this.textContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextContent(
        textContent
      ),
    );
  }
}
