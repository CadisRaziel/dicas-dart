void main(){
  var numeros = List.generate(10, (index) => index);

  print('For in');
   for (var i = 0; i < numeros.length; i++) {
     if(i == 5){
       //*vai pular o 5
       continue;
     }
    print(numeros[i]);
  }

  //*Temos uma forma melhor de realizar o exemplo acima com os iterables (o where, assim como a list tem o  extend de iterable)
  //*O exemplo acima diz que vamos pular o numero 5, não queremos ele
  //? abaixo ainda faremos o encadeamento por conta do iterable que nos disponabiliza
  //? o exemplo abaixo vai fazer exatamente a mesma coisa que o for in ali em cima
  //? abaixo ele filtro com o where e fez um loop com o foreach para printar os numeros 
  print('where e foreach');
  numeros
  .where((numero) => numero != 5)
  .forEach((numero) => print(numero));
  
    //TODO o forEach só é utilizado quando não faz nenhuma ação assincrona !!! (async await)

  //*takeWhile -> faça até que
  print('takeWhile');
  final numerosAte7 = numeros.takeWhile((numero) => numero < 8);
  print(numerosAte7);


  print('skipWhile');
  //*skipWhile -> tudo que for menor que 6 ele não vai apresentar e remover !!
  final numerosRemoverAte5 = numeros
  .skipWhile((numero) => numero < 6)
  .toList();
  print(numerosRemoverAte5);

  //*fazendo com string
   final nomeAteDog = ['Vitor', 'Giovanna', 'Dog', 'Rosana', 'Monique']
  .skipWhile((nome) => nome != 'Dog')
  .toList();
  print(nomeAteDog);

  //TODO o takeWhile e o where transforma a lista em um ITERABLE !! e não em uma list
  //TODO porém os ITERABLE sua propriedades após o ponto são diferentes de uma lista
  //TODO porém o ITERABLE nos podemos encadear igual o .where .foreach
  //TODO é interessante que podemos colocar um .toList() abaixo do .foreach e transformar em uma LISTA !!!


  //*Map -> vai pegar uma lista, e transformar em outra lista fazendo o que ele quer
  //*Eu peguei uma lista de inteiros (lembre-se da variavel var numeros la em cima) e transformei em uma lista de String
  print('map');
  var numeroStrList = numeros.map((numero){
    return 'numero é $numero';
  }).toList();
  print(numeroStrList);

  //TODO map é feito pra transformar uma lista para outra ou uma lista pra uma lista com regra de negocio etc...


  print('reversed');
  //*reversed -> inverte a ordem do maior para o menor (ou seja era de 0 a 10, agora é de 10 a 0)
  final numeroRevertido = numeros.reversed.toList();
  print(numeroRevertido);

  //TODO sempre converta um ITERABLE para .toList()
}