import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/null_safety/pessoa.dart';

void main() {
  //*1º Aqui nao vai dar erro se eu executar
  var pessoa = Pessoa(nome: 'Vitor');

  //*3º para ele nao dar erro eu preciso atribuir ele antes de executa-lo igual o exemplo 2º
  pessoa.nome = 'vitor';

  //*4º porém se eu reatribuir ele, ai da um erro novamete (caso a variavel seja final)
  pessoa.nome = 'BZ';

  //*2º aqui ele da um erro !!!
  print(pessoa.nome);
}
