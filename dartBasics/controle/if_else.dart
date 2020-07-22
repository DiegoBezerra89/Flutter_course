import 'dart:math';
void main() {
  var nota = Random().nextInt(11);
  print('Nota final: $nota');
  print('STATUS:');

  if(nota == 10) {
    print('Você é foda!');
  } else if(nota >= 9) {
    print('Quadro de Honra!');
  } else if(nota >= 7) {
    print('Aprovado!');
  } else if(nota >= 5) {
    print('Recuperação!');
  } else if(nota >= 4) {
    print('Recuperação + trabalho!');
  } else {
    print('REPROVADO!');
  }
}