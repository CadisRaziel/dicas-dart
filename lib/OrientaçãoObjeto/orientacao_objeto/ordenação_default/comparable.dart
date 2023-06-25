import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/ordena%C3%A7%C3%A3o_default/cliente.dart';

void main() {
  //*Como definir dentro da nossa classe uma ordenação defaul caso queremos usar dentro de uma lista
  var c1 = Cliente(nome: 'Vitor', telefone: '123');
  var c2 = Cliente(nome: 'Luana', telefone: '123');
  var c3 = Cliente(nome: 'laura', telefone: '123');
  var c4 = Cliente(nome: 'nathalia', telefone: '123');

  var lista = [c1, c2, c3, c4];
  //*Implementei o metodo toString la na classe para aparecer o nome e telefone e não o 'instance of Cliente'
  print(lista);
  lista.sort();
  print(lista);
}
