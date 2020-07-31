import '../composicao/cliente.dart';
import '../composicao/produto.dart';
import '../composicao/venda.dart';
import '../composicao/venda_item.dart';

main() {
  //venda, com um cliente, três produtos, produtos com preço / qtd / desconto
  //mostre o valor total
  var venda = Venda(
    cliente: Cliente(nome: 'Diego Bezerra', cpf: '385.902.698-41'),
    itens: [
      VendaItem(
        quantidade: 1,
        produto: Produto(
          codigo: 1,
          nome: 'PS5',
          preco: 5000.00,
          desconto: 0.0,
        ),
      ),
      VendaItem(
        quantidade: 2,
        produto: Produto(
          codigo: 2,
          nome: 'Xbox Series X',
          preco: 4500.00,
          desconto: 0.0,
        ),
      ),
      VendaItem(
        quantidade: 2,
        produto: Produto(
          codigo: 3,
          nome: 'The Last Of us',
          preco: 250.00,
          desconto: 0.45,
        ),
      ),
    ],
  );
  print('O valor total da venda foi de: R\$ ${venda.valorTotal}');
}
String clienteEx(venda) {
  return '${venda.cliente['nome']}, ${venda.cliente['cpf']}';
}
