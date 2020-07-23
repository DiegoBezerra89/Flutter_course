void main() {
  var adicao = (int a, int b) => a + b; //funcoes arrow, uma função que executa apenas uma sentença de código
  var subtracao = (int a, int b) => a - b;
  var multiplicacao = (int a, int b) => a * b;
  var divisao = (int a, int b) => a / b;

  print(adicao(3,4)); //7
  print(subtracao(5,3)); //2
  print(multiplicacao(4,7)); //28
  print(divisao(8,2)); //4
}