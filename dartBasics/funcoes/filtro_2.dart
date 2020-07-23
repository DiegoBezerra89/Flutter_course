main() {
  var notas = [3.4, 5.6, 7.8, 8.1, 9.8, 10.0, 3.5, 2.0];
  var notas2 = [3, 5, 7, 8, 9, 10, 3, 2];

  var notasBoasFn = (double nota) => nota >= 7.0; //true or false
  var notasMuitoBoasFn = (double nota) => nota >= 8.8; //true or false
  var notasBoasFn2 = (int nota) => nota >= 7;

  var notasBoas = notas.where(notasBoasFn);
  /*

  */
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);
  var notasBoas2 = notas2.where(notasBoasFn2);
  var test = notasBoas2;
  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
  print('inteiros: $notasBoas2');
  print(test);
}