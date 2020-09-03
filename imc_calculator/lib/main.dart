import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'IMC calculator',
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  String _infoText = "Informe seus dados";

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _refreshFields() {
    _weightController.text = "";
    _heightController.text = "";
    setState(() {
      _infoText = "Informe seus dados";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _calculateImc() {
    setState(() {
      double weight = double.parse(_weightController.text);
      double height = double.parse(_heightController.text) / 100;
      double imc = weight / (height * height);
      print(height);
      if (imc < 18.6) {
        _infoText = "Abaixo do peso ideal (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.6 && imc < 24.9) {
        _infoText = "Peso ideal (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 24.9 && imc < 29.9) {
        _infoText =
            "Levemente acima do peso ideal (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 29.9 && imc < 34.9) {
        _infoText = "Obesidade grau 1 (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 34.9 && imc < 39.9) {
        _infoText = "Obesidade grau 2 (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 40) {
        _infoText =
            "Atingiu o nível: Gordão!!! (${imc.toStringAsPrecision(3)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.refresh,
              size: 30,
            ),
            onPressed: _refreshFields,
          ),
        ],
        title: Text("IMC Calculator"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(Icons.person_outline, size: 120.0, color: Colors.green),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _weightController,
                  decoration: InputDecoration(
                    labelText: 'Peso (Kg)',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[800], fontSize: 20.0),
                  validator: (value) {
                    if(value.isEmpty){
                      return "Insira seu peso";
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _heightController,
                  decoration: InputDecoration(
                    labelText: 'Altura (cm)',
                    labelStyle: TextStyle(color: Colors.green),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[800], fontSize: 20.0),
                  validator: (value) {
                    if(value.isEmpty){
                      return "Insira sua altura!";
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                  child: Container(
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                        if(_formKey.currentState.validate()){
                          _calculateImc();
                        }
                      },
                      color: Colors.green,
                      child: Text(
                        'Calcular',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '$_infoText',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
