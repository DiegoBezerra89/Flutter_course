void main() {
  int a = 2;
  int b = 3;

  int Function(int, int) soma = somaFn; //  soma recebe somaFn
  print(soma(a, b)); //5

  int Function(int, int) soma2 = (x, y) { //  soma recebe uma função anônima
    return x + y;
  };

  a = 10;
  b = 4; 
  print(soma2(a,b)); //14

  var soma3 = ([int x = 2, int y = 4]) { //inferência dos tipos de parâmetros, determinados como "dynamic". com parametros default
    return x + y;
  };

  print(soma3()); //6
  print(soma3(5)); //9
}

int somaFn(int a, int b) {
  return a + b;
}