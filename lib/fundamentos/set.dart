void main(){
  //*Set -> não permite numeros,nomes duplicados
  //*set tem todas as estruturas de um iterable

  var numeroList = <int?>[];
  numeroList.add(1);
  numeroList.add(2);
  numeroList.add(3);
  numeroList.add(3);
  numeroList.add(2);
  numeroList.add(1);
  print(numeroList);


  var numerosSet = <int?>{}; 
  numeroList.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(3);
  numerosSet.add(2);
  numerosSet.add(1);
  print(numerosSet);

  //*Posso transformar uma lista em um set
  print(numeroList.toSet());

  //*Set tem todas estruturas de um iterable
  numerosSet.forEach(print);


  //*difference eu consigo ver a diferença do set numeros1 do set numeros2 (ele traz somente o que não tem entre as duas linhas)
  var numeros1 = {1,2,3,4,5,6};
  var numeros2 = {1,3,3,4,7};
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));


  //*union -> Juntando dois sets e não permitindo duplicados
  print(numeros1.union(numeros2));

  //*intersection -> juntando os dois sets porém printa somente os duplicados
  print(numeros1.intersection(numeros2));

  //*lookup -> vai ver se existe o que colocarmos dentro do lookup e vai retornar isso, ou seja coloquei 5, 5 existe dentro de numeros1, então ele vai retornar isso
  //*se ele não encontrar nada ele retorna um null
  print(numeros1.lookup(5));
}