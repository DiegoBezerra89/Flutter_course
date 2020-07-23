import 'dart:math';

void main() {
  int numeroAleatorio = aleatorio();
  print(numeroAleatorio);

  int numeroAleatorio2 = aleatorio(50);
  print(numeroAleatorio2);

  print(imprimirData(21, 11, 1989)); // 21 / 11 / 1989

  print(imprimirData2(21));// 21 / 1 / 1970

}

int aleatorio([int a = 11]){ //parâmetro opcional com valor padrão definido
  return Random().nextInt(a);
}

String imprimirData([int dia = 1, int mes = 1, int ano = 1970]) { //todos os parametros são opcionais, e possuem um valor padrão
  return '$dia / $mes / $ano';
}

String imprimirData2(int dia , [int mes = 1, int ano = 1970]) { //mes e ano são opcionais, e possuem um valor padrão, dia é obrigatório
  return '$dia / $mes / $ano';
}

