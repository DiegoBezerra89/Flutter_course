void main() {

  /*
    - números: int, double e num
    - String
    - bool
    - List
    - Set 
    - Map
    - var
    - const
    - final
   */
  var number = 2;
  const dollar = '5 e pouco';
  var word = 'Test';
  final value = 'correct';
  int number1 = 10;
  double number2 = 10.0;
  num number3 = 21.8;
  bool top = false;
  List langs = ['Js', 'HTML', 'CSS',]; //indexados
  List<String> langs2 = ['Dart', 'Flutter', 'ReactJs', 'Dart'];
  Map<String, Object> person = {
    'Diego': 'Developer',
    'Diogo': 'Monstro',
  }; //person['Diego'] -> 'Developer'
  var person2 = {
    'Diego': 'Developer',
    'Natalia': 'Scrum master',
  };
  print(person['Diego']);
  Set teams = {'Palmeiras', 'Red Bull', 'São Paulo', 'Santos',};
  print(teams);
  teams.add('Corinthians');
  print(teams);
  print('Variáveis criadas: $number $dollar $word $value $number $number1 $number2 $number3 $top $langs $langs2 ${person['Diego']} ${person2['Natalia']}');
}