import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World! My first app!'),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

/*
class Person {
  String name;
  int age;

  Person({this.name, this.age});
}

String helloWorld(String text) {
  return text;
}

int sum(int num1, int num2) {
  return num1 + num2;
}

double div(double num1, double num2) {
  return num1 / num2;
}

void printer(String text1, String text2) {
  print(text1 + text2);
}

//creating variables
var text1 = 3.2;
var text2 = 5.1;
double firstVar = div(text1, text2);

var p1 = Person(age:45, name: 'Diego');


void main() {
  var person1 = Person();
  print(helloWorld('Hello World!'));
  print(sum(4,5));
  print(div(8,3));
  printer('teste', ' porra');
  print(firstVar);
  print(person1.name);
  print(person1.age);
  var p2 = Person();
  p2.age = 32;
  print(p1.name);
  print(p1.age);
}*/
