void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Vitor', 'Rosana', 'Monique', 'Michele'];

  //*For padrão (varre a lista do inicio até o final dela(length))
  print('Imprimindo numeros com for');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo numeros com for in');
  //*For in (vai pegar todos os numeors, fazer um loop e jogar cada indice para a variavel 'numero')
  //*ele da o mesmo resultado de for, porém repare que não precisei colocar nenhum indice, não precisei falar de onde ele começa e onde termina
  for (var numero in numeros) {
    print(numero);
  }
  print('Imprimindo nomes com for in');
  //*For in (vai pegar todos os numeors, fazer um loop e jogar cada indice para a variavel 'numero')
  //*ele da o mesmo resultado de for, porém repare que não precisei colocar nenhum indice, não precisei falar de onde ele começa e onde termina
  for (var nome in nomes) {
    print(nome);
  }

  //*For convencional e break (break vai parar a execução na condição break que eu defini)
  print('Imprimindo nomes com for e break');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
    if (numeros[i] == 5) {
      break;
    }
  }

  //* O break funciona tambem com o for in
  print('Imprimindo nomes com for in e break');
  for (var numero in numeros) {
    print(numero);
    if (numero == 7) {
      break;
    }
  }

  //*For convencional, break e continue (continue -> a hora que chegar no 5 como eu defini, ele vai pular, não vai apresentar e vai pro 6,7,8)
  print('Imprimindo nomes com for , break e continue');
  for (var i = 0; i < numeros.length; i++) {
    //*Repare que posso pular quantos eu quiser
    if (i == 5 || i == 6) {
      continue;
    }
    print(numeros[i]);
  }

  //*Repetindo esse exemplo porém agora com loopin
  //*Collection for
  //*Repare que colocamos um 'For In'
  var listInts = [1, 2, 3];
  var listaStrings = ['#0', for (var i in listInts) '#$i'];
  print(listaStrings);

  //? Resumindo o for
  //? Se qusier trabalhar com indices use o FOR se quiser varrer tudo em uma variavel utilize o FOR IN
}
