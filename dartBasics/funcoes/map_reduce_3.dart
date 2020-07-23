void main() {
  var alunos = [
    {'nome': 'Diego', 'nota': 9.3},
    {'nome': 'Renata', 'nota': 8.7},
    {'nome': 'Leo', 'nota': 5.4},
    {'nome': 'Bete', 'nota': 9.7},
    {'nome': 'Bernardo', 'nota': 7.5},
  ];

  var notasFinais = alunos
    .map((aluno) => aluno['nota'])
    .map((nota) => (nota as double))
    .where((nota) => nota >= 6);

  print(notasFinais);
  print(notasFinais.length);

  var total = notasFinais.reduce((value, element) => value + element);
  
}