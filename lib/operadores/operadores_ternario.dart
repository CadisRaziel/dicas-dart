void main(){
  //*Simplificação do if else
  final idade = 12;
  if(idade >= 18){
    print('Maior de idade');
  }else {
    print('menor de idade');
  }

  //*Ternario (condição'variavel') ? veradeira : falsa
  final eMaiorDeIdade = idade >= 18 ? true : false;
  print('É maior de idade true or false? -> $eMaiorDeIdade');
}