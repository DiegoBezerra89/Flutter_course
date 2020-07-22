import 'dart:math';
void main() {
  var nota = Random().nextInt(11);

  switch(nota){
    case 10:
      print('Nota máxima: $nota');
      break;
    case 9: 
      print('Quadro de honra: $nota');
      break;
    case 8:
    case 7:
    case 6:
      print('Aprovado: $nota');
      break;
    case 5:
    case 4:
      print('Recuperação: $nota');
      break;
    default:
      print('REPROVADO: $nota');
  }
}