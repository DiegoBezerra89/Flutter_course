void main() {
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Eduarda': 9.6,
    'Diego Bezerra': 5.6,
    'Renata Almeida': 8.9
  };

  for(String nome in notas.keys) {
    print('$nome');
  }

  for(String nome in notas.keys) {
    print('$nome tirou: ${notas[nome]}');
  }

  for(var nota in notas.values) {
    print('nota: $nota');
  }

  for(var registro in notas.entries) {
    print('${registro.key} teve uma nota de: ${registro.value}.');
  }

}