void main() {
  var notas = [2.3, 4.3, 5.6, 6.7, 7.8, 9.1, 4.3, 10.0];
  var total = notas.reduce(somar);
  var nomes = ['Diego', 'Renata', 'Bethania', 'Lourdes', 'Elizabete'];
  var todosOsNomes = nomes.reduce(juntar);
  var times = ['Palmeiras', 'Corinthians', 'São Paulo', 'Santos', 'Red Bull'];
  var todosTimes = times.reduce((value, element) { //com a função inserida no reduce
    print('$value, => $element');
    return '$value, $element';
  });
  print(total);
  print(todosOsNomes);
  print(todosTimes);
}


double somar(double acumulador, double elemento) {
  print('$acumulador, => $elemento');
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  print('$acumulador, => $elemento');
  return "$acumulador, $elemento";
}