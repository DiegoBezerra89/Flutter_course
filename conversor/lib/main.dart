import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart' as async;
import 'dart:convert';

const request = 'https://api.hgbrasil.com/finance?format=json&key=bf21e0fb';
void main() async {
  return runApp(MaterialApp(
    title: 'Conversor',
    theme: ThemeData(
      hintColor: Colors.amber,
      primaryColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
        hintStyle: TextStyle(color: Colors.amber),
      ),
    ),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double dollar;
  double euro;

  final realController = TextEditingController();
  final dollarController = TextEditingController();
  final euroController = TextEditingController();

  void _realChanged(String text) {
    if(text.isEmpty){
      _resetApp();
    }
    double real = double.parse(text);
    dollarController.text = (real / dollar).toStringAsFixed(2);
    euroController.text = (real / euro).toStringAsFixed(2);
  }

  void _dollarChanged(String text) {
    if(text.isEmpty){
      _resetApp();
    }
    double dollar = double.parse(text);
    realController.text = (dollar * this.dollar).toStringAsFixed(2);
    euroController.text = (dollar * this.dollar / this.euro).toStringAsFixed(2);
  }

  void _euroChanged(String text) {
    if(text.isEmpty){
      _resetApp();
    }
    double euro = double.parse(text);
    realController.text = (euro * this.euro).toStringAsFixed(2);
    dollarController.text = (euro * this.euro / this.dollar).toStringAsFixed(2);
  }

  void _resetApp() {
    realController.text = '';
    dollarController.text = '';
    euroController.text = '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            'Conver\$or de moeda\$',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: Text(
                    'Carregando dados...',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.amber,
                    ),
                  ),
                );
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Erro ao carregar dados...',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.amber,
                      ),
                    ),
                  );
                } else {
                  dollar = snapshot.data['results']['currencies']['USD']['buy'];
                  euro = snapshot.data['results']['currencies']['EUR']['buy'];

                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Icon(
                          Icons.local_atm,
                          size: 120.0,
                          color: Colors.amber,
                        ),
                        buildTextField(
                            'Real R\$', 'R\$ ', realController, _realChanged),
                        buildTextField('Dollar USD', 'US\$ ', dollarController,
                            _dollarChanged),
                        buildTextField(
                            'Euro €', '€ ', euroController, _euroChanged),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 50,
                            child: RaisedButton(
                              color: Colors.amber,
                              child: Text(
                                'Nova consulta',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              onPressed: _resetApp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
            }
          },
        ));
  }
}

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return json.decode(response.body);
}

Widget buildTextField(String currencyLabel, String currencyPrefix,
    TextEditingController c, Function f) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      keyboardType: TextInputType.number,
      controller: c,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: currencyLabel,
        prefixText: currencyPrefix,
        labelStyle: TextStyle(
          color: Colors.amber,
          fontSize: 22,
        ),
      ),
      style: TextStyle(
        color: Colors.amber,
        fontSize: 22,
      ),
      onChanged: f,
    ),
  );
}
