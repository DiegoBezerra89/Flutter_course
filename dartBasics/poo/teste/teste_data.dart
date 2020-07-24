import '../modelo/data.dart';

void main() {
  Carro carro1 = Carro();
  carro1.acelerar();
  carro1.frear();
  var carro2 = new Carro(200);
  carro2.acelerar();
  carro2.frear();
}