import 'dart:io';
void main() {
  var digitado = 'sair';

  while(digitado != 'sair') { //se 'sair', ele não executa
    stdout.write('Digite algo, ou sair: ');
    digitado = stdin.readLineSync();
  }
  print('FIM!');

  do {
    stdout.write('Do while | Digite algo, ou sair: '); //executa pelo menos uma vez
    digitado = stdin.readLineSync();
  } while(digitado != 'sair');
  print('FIM!');

}