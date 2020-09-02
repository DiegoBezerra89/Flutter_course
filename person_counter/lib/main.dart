import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Contador de Pessoas",
      home: Home(),
    ),
  );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _status = 'Pode Entrar!';

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if(_people < 0) {
       _status = "Mundo invertido?"; 
      } else if(_people <= 10) {
        _status = "Pode Entrar!";
      } else {
        _status = "Casa Lotada!";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/dedge.jpg",
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Pessoas: $_people',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(2),
                    child: FlatButton(
                      onPressed: () => {
                        _changePeople(1)
                      },
                      child: Text(
                        '+1',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    margin: EdgeInsets.all(2),
                    child: FlatButton(
                      onPressed: () => {
                        _changePeople(-1)
                      },
                      child: Text(
                        '-1',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.purple,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$_status',
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}