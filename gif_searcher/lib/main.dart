import 'package:flutter/material.dart';
import './ui/homePage.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      title: "Buscador de Gifs",
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurpleAccent,
            ),
          ),
        ),
      ),
    ),
  );
}
