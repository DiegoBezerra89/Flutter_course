class Data { // criação da classe Data
  int dia;
  int mes;
  int ano;

//basic constructor with named params 
/*
  Data({int dia, int mes, int ano}) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
*/

//optimized constructor with positional params, optionals, and with default values
Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

//Named constructor with named params
Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  //methods
  String obterFormatada() {
    return '$dia/$mes/$ano';
  }
  
  String toString() { //esse método será chamado sempre que a instância for citada sem atributos ou métodos print(dataLancamento); $'A class to instance a date.'
    return obterFormatada();
  }
}

void main() {
  Data dataCompra = Data(11, 21, 1989); //Data() é um construtor padrão de Data
  // dataCompra.dia = 25; // Instância da Classe Data //propriedade dia da instância dataCompra da classe Data
  // dataCompra.mes = 12;
  // dataCompra.ano = 2020;

  print('Data da compra: ${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}.');
  print(dataCompra.obterFormatada());
  print(dataCompra);

  Data dataLancamento = Data(28, 07, 1995);
  // dataLancamento.dia = 25; //modificando manualmente instâncias já criadas
  // //dataLancamento.mes = 01;
  // dataLancamento.ano = 2021;

  print('Data do Lançamento: ${dataLancamento.dia}/${dataLancamento.mes}/${dataLancamento.ano}.');
  print(dataLancamento.obterFormatada());
  print(dataLancamento);

  Data dataQualquer = Data(21, 12, 2089);
  print(dataQualquer.obterFormatada());

  print(new Data());
}