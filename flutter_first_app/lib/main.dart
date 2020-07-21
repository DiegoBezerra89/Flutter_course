import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp()); //the main function

class MyApp extends StatefulWidget { //MyApp herda de um StatefulWidget
  @override //aqui eu demonstro ao Dart que quero realmente sobrescrever essa classe
  State<StatefulWidget> createState() { //State<StatefulWidget> é o tipo do createState()
    // TODO: implement createState
    return _MyAppState();//retorna um construtor para MyAppState
  }
}

class _MyAppState extends State<MyApp> { //MyAppState herda um tipo state de MyApp
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz () { //seta o estado inicial da aplicação
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;  
    });
  }
  final _questions = const [ //final, trata de uma variavel que muda em tempo de compilação, mas não em tempo de execução | o const a frente da lista quer dizer que é uma lista com valores constantes
    {
      'questionText': 'What\'s your favorite color? ', //'questionText' é a key desta "linha da lista" ao se referir por ela use a key 'questionText'
      'answers': [ //'answers' é a key de uma lista: _questions[0]['answers'][0]['text'] = 'Red'
        {'text': 'Red', 'score': 8,}, //'text' é a key de uma propriedade de 'answers
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
      print(_questions[0]['answers']);
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
