import 'dart:math';
void main() {
  var minhaFnPar = () => print('Valor par');
  var minhaFnImpar = () => print('Valor ímpar');

  executar(fnImpar: minhaFnImpar, fnPar: minhaFnPar);
}

void executar({Function fnPar, Function fnImpar}) {
  var resultado = Random().nextInt(11);
  print('numero sorteado: $resultado');
  resultado % 2 == 0 ? fnPar() : fnImpar();
}

