void main() {
  saudarPessoa(nome: 'Diego', idade: 30);
  saudarPessoa(idade: 24, nome: 'Renata');
  saudarPessoa2();
  saudarPessoa2(nome: 'Dunha', idade: 69);
}

void saudarPessoa({int idade, String nome}) { //parâmetros nomeados não necessitam de serem declarados em ordem
  print('Olá $nome, não parece que vc tem $idade anos.');
}

void saudarPessoa2({int idade = 45, String nome = 'Fulano'}) { //parâmetro nomeado prédefinido
  print('Olá $nome, não parece que vc tem $idade anos.');
}