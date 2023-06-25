import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/animal.dart';

class Cachorro extends Animal {
  //*Repare que criei um construtor default com um 'required' em 'Animal'
  //? e com isso eu preciso por um construtor aqui tambem !!
  //? Repare que utilizamos o 'super' para buscar a variavel required na classe Animal
  Cachorro({required int idade}) : super(idade: idade);

  @override
  int calcularIdadeHumana() {
    //? Quando eu faço uma verificação se é nullo eu posso colocar o operador '!' sem medo !!
    //if (idade != null) {
    //return idade! * 7;
    //}
    //return 0;
    return idade * 7;
  }
}
