void main() {
  var alunos = [
    {'nome': 'Diego', 'nota': 4.5},
    {'nome': 'Renata', 'nota': 7.6},
    {'nome': 'Bernardo', 'nota': 8.9},
    {'nome': 'Leonardo', 'nota': 2.3},
    {'nome': 'Bete', 'nota': 9.1},
  ];

  String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  int Function(String) qtdLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) => numero * 2;

  var resultado = alunos.map(pegarApenasONome).map(qtdLetras).map(dobro);
  print(alunos.map(pegarApenasONome));
  print(alunos.map(pegarApenasONome).map(qtdLetras));
  print(alunos.map(pegarApenasONome).map(qtdLetras).map(dobro));
  print('resultado: $resultado');

}