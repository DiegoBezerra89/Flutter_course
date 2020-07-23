/*
###################
CASO 1
###################

funcao(p1, p2) {
  //10s -> p1
  sentenca 01# 
  sentenca 02# 
  sentenca 03# 

  //1s -> p2
  sentenca 04# 
  sentenca-05#
}

funcao(3, 2) //11s
funcao(3, 45) //11s
funcao(3, 72) //11s

total: 33 Segundos
########################

########################
CASO 2
########################
funcaoFora(p1) {
  //10s -> p1
  sentenca 01# 
  sentenca 02# 
  sentenca 03# 

  return (p2) {
    //1s -> p2
    sentenca 04# 
    sentenca-05# 
  }
}

var funcaoForaComParam3 = funcaoFora(3); //10s 
### funcaoFora é atribuída a uma variavel, e retorna uma função, 
    logo funcaoForaComParam3 = funcaoFora(3)(esperando um parâmetro);
    funcaoForaComParam3 possui uma funcao que recebe um parametro, podendo ser chamada a qualquer hora.

funcaoForaComParam3(2) // 1 seg
funcaoForaComParam3(45) // 1 seg 
funcaoForaComParam3(72) // 1 seg

total: 13 Segundos
*/

void main() {
  Function calc (num num1,num num2) {
    return (String factor) {
      switch(factor) {
        case '+':
          return num1 + num2;
        break;
        case '-':
          return num1 - num2;
        break;
        case '*':
          return num1 * num2;
        break;
        case '/':
          return num1 / num2;
        break;
        default:
          return 0;  
      }
    };
  }
  var calculator = calc(3,4);
  print(calculator('+'));
  calculator = calc(5, 7);
  print(calculator('*'));
  calculator(7,3);
  print(calculator('/'));
}