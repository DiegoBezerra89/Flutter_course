import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }
  
  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color(test)?',
        'answers': ['Red', 'Yellow', 'Green', 'Black'],
        'colors': ['red',]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Tiger', 'Dog', 'Cat', 'Lion', 'Eagle'],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Sushi', 'Hot-Dog', 'Pizza'],
      },
      {
        'questionText': 'What\'s your favorite game?',
        'answers': ['Cs-go', 'Fortnite', 'Zelda'],
      },
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World! My first app!'),
        ),
        body: Container (
          child: Column (
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(answerQuestion, answer);
              }).toList()
            ],
          ),
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
