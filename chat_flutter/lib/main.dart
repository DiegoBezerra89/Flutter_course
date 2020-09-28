import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // FirebaseStorage.instance
  runApp(MaterialApp(
    home: Home(),
    title: "Chat Flutter",
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
        Center(
          child: Text('Teste'),
        )
      ),
    );
  }
}