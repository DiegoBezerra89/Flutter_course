void main() {
  var lista1 = [1.2, 2.3, 3.4, 5.6, 7.8, 8.5, 9.1, 10.0];
  var resposta = (double nota) => nota >= 7.0;
  var soNotao = filtrar<double>(lista1, resposta);
  print(soNotao);

  var nomes = ['Diego', 'Bete', 'Renata', 'Leonardo', 'Bernardo'];
  var nomesGrandes = (String nome) => nome.length > 5;
  print(filtrar(nomes, nomesGrandes));
}

List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for(E elemento in lista) {
    if(fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}