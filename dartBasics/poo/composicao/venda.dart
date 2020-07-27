import './cliente.dart';
import './venda_item.dart';

class Venda {
  Cliente cliente;
  List<VendaItem> itens;

  Venda({this.cliente, this.itens = const []}); //com o const é possivel inicializar uma lista vazia

  double get valorTotal {
    return itens
      .map((item) => item.preco * item.quantidade)
      .reduce((total, atual) => total + atual);
  }
}