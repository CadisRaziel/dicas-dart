import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/metadatas_anotations/todo.dart';

//?Mobx e modular usa bastante essas anotaçoes
@Todo(quem: 'Vitor fora da classe', oque: 'Tentando ler a anotação da classe')
class Pess {
  //?Posso fazer a anotação tanto fora quanto dentro da classe e com atributos

  @Todo(quem: 'Vitor dentro da classe', oque: 'Tentando ler o atributo')
  String? nome;

  @Todo(quem: 'Vitor no metodo da classe', oque: 'Tentando ler o metodo')
  void fazerAlgo() {}
}
