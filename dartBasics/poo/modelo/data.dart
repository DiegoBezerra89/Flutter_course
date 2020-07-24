class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual;
  Carro([this.velocidadeMaxima = 320]);
  
  bool estaNoLimite(int velocidade, int limite){
    return velocidade == limite ? true : false;
  }

  acelerar(){
    print('Acelerando...');
    while(velocidadeAtual < velocidadeMaxima){
      if (velocidadeAtual + 5 >= velocidadeMaxima) {
        velocidadeAtual = velocidadeMaxima;
      }
      velocidadeAtual += 5;
    }
    print('atingiu a velocidade máxima!');
    var limite = estaNoLimite(velocidadeAtual, velocidadeMaxima);
    return velocidadeAtual;
  }

  frear(){
    print('freando...');
    for(int i = velocidadeMaxima; i >= 0; i -= 5){
      print('$i km/h...');
    }
    print('O carro está parado!');
  }
}