void main() {
  print('Teste');
  executarPor(10, print, ('Show'));
}

void executarPor(int qtde, Function(String) fn, String valor) {
  for(int i = 0; i <= qtde; i++) {
    print('$i');
    fn(valor);
  }
}