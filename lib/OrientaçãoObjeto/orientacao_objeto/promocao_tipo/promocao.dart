import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/carro.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/gol.dart';

void main() {
  //? Colocando uma variavel nula dentro de um if e fazendo a comparação se ela for diferente de null,
  //? eu to auto promovendo ela para não nula !!
  String? nome;
  if (nome != null) {
    nome.toLowerCase();
  }

  ICarroClasseAbstrada golCarro = Gol();
  //*Promovendo a classe ICarroClasseAbstrada para a classe Gol
  if (golCarro is Gol) {
    //?Com a promoção de tipo agora é desnecessario realizar CAST como abaixo !!
    // (golCarro as Gol).velocidadeMaxima();
    golCarro.velocidadeMaxima();
  }
}

//! Lembre-se o 'is' só funciona com variaveis dentro do escopo !!, fora do escopo ela não é valida !7
//! Para realizar com variaveis fora do escopo é necessario realizar o cast 'as'
