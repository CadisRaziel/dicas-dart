void main(){
  final nome = 'Vitor Brussolo Zerbato';

  //*substring para dizer em qual caracter ele vai começar a mostrar(ele conta espaços tambem)
  var subString = nome.substring(6);
  print(subString);

  //*para dizer que vai mostrar somente do caracter 0 até o 6 o restante ignora
  var subString2 = nome.substring(0,6);
  print(subString2);

  //TODO onde poderiamos usar substring
  //*Imagine que la no backend esta indo assim 'Masculino', com o substring podemos pegar somete o primeiro caracter 'M'
  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0,1);
  print(sexoSigla);
  sexo == 'M' ? print('Masculino') : print('Feminino');

  //*Posso fazer tambem com o 'startWish', se eu colocar 'Mas' ele tambem funciona
  if(sexo.startsWith('M')) {
    print('é masculino');
  }

  //*Contains -> verifica se tem a palavra que queremos dentro da string
  if(nome.contains('Vitor')) {
    print('tem vitor');
  } else {
    print('não tem vitor');
  }



  //*Split, retira algo que eu quero de uma string ou frase
  //?Porém cuidado pois ele transforma a string em uma List
  var paciente = 'Vitor Brussolo Zerbato|28|Aprendendo dart e flutter|SP';
  var dadospaciente = paciente.split('|');
  print(dadospaciente);


  //*Quando fazemos o split em uma lista, precisamos primeiro fazer um loop
  var pacientes = [
    'Vitor Brussolo Zerbato|28|Aprendendo dart e flutter|SP',
    'Frank Grilo |38|Ator|SP'
  ];

  for(var pacientess in pacientes){
    var dadosPaciente = pacientess.split('|');
    print(dadosPaciente);
    //*Podemos pegar o ultimo nome
    var nomeCompleto = dadosPaciente[0];
    var nomes = nomeCompleto.split(' ');
    print(nomes.last);
  }

}

 