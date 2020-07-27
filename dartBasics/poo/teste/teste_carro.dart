import '../modelo/carro.dart';

void main() {
  var carro1 = new Carro(320);

  while(!carro1.estaNoLimite()){
    print('Velocidade atual: ${carro1.acelerar()} km/h');
  }

  print('O carro está na sua velocidade máxima! ${carro1.velocidadeAtual}');
  
  while(!carro1.estaParado()){
    print('Velocidade atual: ${carro1.frear()} km/h');
  }
  
  print('O carro está parado!');
}