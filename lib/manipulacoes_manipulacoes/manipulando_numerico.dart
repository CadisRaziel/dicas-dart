void main(){
  final idade = 28;
  print('Sua idade é $idade');

  //*Quando eu faço um if e coloco a variavel . aparece algumas propriedades para nós conferir se o numero é tal coisa ou não 
  final valor = -20;
  if(valor.isNegative){
    print(valor);
  }


  final valorDouble = 10.5;
  //*round -> arredonda para um inteiro, exemplo 10.5 ele vai arredondar para 11(repare que é um inteiro)
  print(valorDouble.round());

  //*rountToDouble arredonda para double, exemplo 10.5 ele vai arredondar para 11.0(repare que é um double)
  print(valorDouble.roundToDouble());

  //*Conversão de texto para numeros
  final valorCertoString = '30';  
  final valorERRADOtring = '30a';  
  //*parse -> vai pegar nossa string e converter em um inteiro
  //*Porém cuidado se ele tentar converter uma string e tiver letra '30a' ou 'vitor2' ele vai dar erro
  //*Resumindo se a string não tiver apenas NUMERO ele da erro na conversão
  final valorInt = int.parse(valorCertoString);
  print(valorInt);


  //*Ja o tryParse se ele achar letras perto do numero '30a' ou 'vitor2' ele NÃO VAI DAR ERRO !!
  //* ele apenas vai retornar um null
  //*Resumindo se a string não tiver apenas NUMERO, não tem problema ele nao da erro de conversão ele traz apenas NULL
  final valorInt2 = int.tryParse(valorERRADOtring);
  print(valorInt2);
  //? assim como o int o doduble tambem tem parse e tryparse


  final precoCamiseta = 30.278645;
  //*toStringAsFixed -> para apresentar somente 2 casas decimais após a virgula ou ponto
  print(precoCamiseta.toStringAsFixed(2));


}