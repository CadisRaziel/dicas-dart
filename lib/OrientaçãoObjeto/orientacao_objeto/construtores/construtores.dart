import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/construtores/pessoa.dart';

void main() {
  var pessoa = Pessoa(
    nome: 'Vitor',
    idade: 28,
    sexo: 'M',
  );
  print(pessoa.nome);

  //*Construtor nomeado
  var pessoaNomeado = Pessoa.nomeado(
    nome: 'BZ',
    idade: 28,
    sexo: 'M',
  );
  print(pessoaNomeado.nome);
}
