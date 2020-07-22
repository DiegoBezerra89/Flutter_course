void main() {
  List<double> notas = [9.3, 6.7, 8.4, 3.5];

  for(var nota in notas) {
    print('Nota final: $nota');
  }

  var coordenadas = [
    [9, 4],
    [5, 7],
    [12, 45],
    [22, 56],
  ];

  for(var coordenada in coordenadas) {
    for(var ponto in coordenada) {
      print('Valor do ponto: $ponto');
    }
  } 
}