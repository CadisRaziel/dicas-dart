import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/cachorro.dart';

void main() {
  //*Como eu defini no super idade: idade, aqui eu apenas passo o valor diretamente !
  var cachorro = Cachorro(idade: 10);

  //*Repare que como eu coloquei no 'super' idade : idade, eu não posso passar ela aqui mais !!
  //cachorro.idade = 10;
  cachorro.tamanho = 'Pequeno';
  print('''
    Cachorro:
      Tamanho: ${cachorro.tamanho},
      idade: ${cachorro.idade} 
      idade humana: ${cachorro.calcularIdadeHumana()}
  ''');
}
