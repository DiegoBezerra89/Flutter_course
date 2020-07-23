//funcoes que retornam algo
import 'dart:math';
void main() {
  int resultado = somar(2,3);
  print('O resultado é $resultado');
  resultado *= 2;
  print('O dobro do resultado é $resultado');

  int aleatorio = random();
  print(aleatorio);
}

int somar(int a, int b) { //recebem parametros Posicionais, necessitam de ser declarados em ordem, e retornam algo
  return a + b;
}

int random() {
  return Random().nextInt(11); //não recebe parametros e retorna algo
}