void main(){
  var notas = [3.4, 5.6 ,7.8, 8.1, 9.8, 10, 3.5, 2.0];
  var notasBoas = [];

  for(var nota in notas) {
    if(nota >= 7) {
      notasBoas.add(nota);
    }
  }

  print(notas);
  print(notasBoas);
}