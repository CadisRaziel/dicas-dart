void main() {
  final diaDaSemana = 0;
  var diaDaSemanaString = '';

  if (diaDaSemana == 0) {
    diaDaSemanaString = 'Segunda feira';
  } else if (diaDaSemana == 1) {
    diaDaSemanaString = 'Terça feira';
  } else {
    diaDaSemanaString = 'Não identificado';
  }

  //*Podemos substituir a condição 'if else' para 'switch'
  //? Sempre que fazer um if else somente com igualdade '==', procure utilizar o switch, pois ele atende bem nesse quesito

  //*O switch sempre utiliza o operador '==' (porém ele nao apresenta visualmente esse ==)
  switch (diaDaSemana) {
    case 0:
      diaDaSemanaString = 'Domingo';
      //? podemos colocar mais códigos aqui
      break;
    case 1:
      diaDaSemanaString = 'Segunda feira';
      break;
    default:
      diaDaSemanaString = 'O default seria o else';
  }

  //? podemos juntar duas condições tambem
  final idade = 18;

  switch (idade) {
    case 18:
    case 19:
      print('Maior de idade');
      break;
    default:
      print('menor de idade');
      break;
  }
}
