import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/equals_hashcode_toString/equals_pessoa.dart';

//Resumindo, quando instanciamos uma classe e se as variavies forem iguais, e fizermos esse if abaixo, ele nao vai dar como iguais(mesmo sendo iguais!!)
//para isso precisamos fazer o equals igual fizemos la na classe equals_pessoa.dart para que a instancia identifique a igualdade
//ou seja, estamos dando um estado para essas variaveis
void main() {
  //? equals -> '=='

  var p1 = EqualsPessoa(nome: 'Vitor', email: 'vitorBrussolo@gmail.com');
  var p2 = EqualsPessoa(nome: 'Vitor', email: 'vitorBrussolo@gmail.com');

  //? uma coisa curiosa, mesmo depois que realizar o equals, aqui os hashs serão diferentes
  //? depois de fazer o tratamento de hashcode na classe EqualsPessoa, repare que agora eles são iguais
  //! se nao fizer esse tratamento de hashcode teremos problemas em list, maps etc..
  print(p1.hashCode);
  print(p2.hashCode);

  //?Repare que ao fazer essa comparação ele fala que 'não é igual' porém eles são exatamente iguais !!
  //? p1 e p2 não estão na mesma referencia de memoria !!
  //? porém se eu fizer isso:
  //p1 = p2; (ele vai falar que é igual !!), porque? porque ele apontou a p1 para a instancia de p2 que é igual !!
  //? por isso são iguais, eles estão na mesma Instancia(mesma referencia)
  //! repare que eu fiz na classe EqualsPessoa, eu diferenciei as intanacias (os estados dela !!), por isso agora da igual
  if (p1 == p2) {
    print('é igual');
  } else {
    print('não é igual');
    ;
  }
}
