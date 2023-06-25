import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/modificador_const/pessoa.dart';

void main() {
  //*Como o construtor da classe é 'const' aqui tambem precisamos por o 'const antes da instancia
  var p1 = const Pessoa(idade: 28, name: 'vitor');
  var p2 = const Pessoa(idade: 28, name: 'vitor');

  //*Olha que interessante, nós não fizemos o 'equals' porém quando eu comparo p1 com p2 ele da true poruqe isso?
  //*diferente de uma variavel normal o const nao viu a instancia, e sim apenas o 'const' e com isso ele percebeu que era igual
  //*com isso ele da true e evita de fazer o equals
  //*ou seja duas variaveis const igual aponta para a mesma referencia na memoria (repare no print do hashcode)
  print(p1.hashCode);
  print(p2.hashCode);
  print(p1 == p2);
}
