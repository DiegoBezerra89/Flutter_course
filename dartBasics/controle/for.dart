void main() {
  for(int a = 100; a >= 0; a -= 4) {
    print('a = $a');
  }
  print('Fim');
  
  int b = 0;
  for( ; b <= 10; b++) {
    print('0 a 10 = $b');
  }

  List<double> notas = [9.8, 5.6, 7.8, 9.2];

  for(int a = 0; a < notas.length; a++) {
    print('notas: ${notas[a]}');
  }
}