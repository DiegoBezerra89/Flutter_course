//funções sem retorno

import 'dart:math';
void main() {
 
  void somaComPrint(int a, int b) {
    print(a + b);
  }
  
  void somaDoisNumerosQuaisquer() {
    int n1 = Random().nextInt(11);
    int n2 = Random().nextInt(11);
    print('Os números sorteados foram : $n1 e $n2 .\nE a soma dos dois é:\n${n1 + n2}');
  }

  int a = 3;
  int b = 9;
  somaComPrint(4, 5);
  somaComPrint(a, b);
  somaDoisNumerosQuaisquer();
}