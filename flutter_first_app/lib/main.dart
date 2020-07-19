import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;
  void _resetQuiz () {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;  
    });
  }
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color? ',
      'answers': [
        {'text': 'Red', 'score': 8,},
        {'text': 'Blue', 'score': 5,},
        {'text': 'Black', 'score': 3,},
        {'text': 'Green', 'score': 2,},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 8,},
        {'text': 'Eagle', 'score': 5,},
        {'text': 'Lion', 'score': 3,},
        {'text': 'Dog', 'score': 2,},
      ],
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Sushi', 'score': 8,},
        {'text': 'Hot-Dog', 'score': 5},
        {'text': 'Pizza', 'score': 3},
        {'text': 'Lasagna', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite game?',
      'answers': [
        {'text': 'Cs-go', 'score': 8,},
        {'text': 'God of War', 'score': 5},
        {'text': 'Fortnite', 'score': 3},
        {'text': 'Zelda', 'score': 2},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World! My first app!'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
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
