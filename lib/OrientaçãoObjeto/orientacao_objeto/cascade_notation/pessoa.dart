import 'package:academi_flutter/dart_fundamentos/tratamento_de_nulos/null_aware_operator.dart';

void main() {
  //? Modo convencional !
  // var pessoa = Pessoa();
  // pessoa.nome = 'vitor';
  // pessoa.email = 'vitor@email.com';
  // pessoa.site = 'vitor.com.br';

  //? Modo cascade
  Pessoa()
    ..nome = 'Vitor'
    ..email = 'vitor@email.com'
    ..site = 'vitor.com.br'
    ..printPessoa();

  var mapa = Map<String, String>()
    ..putIfAbsent('nome', () => 'Vitor')
    ..putIfAbsent('email', () => 'vitor@email.com')
    ..putIfAbsent('site', () => 'vitor.com.br');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa() {
    print('''
    Pessoa:
      Nome: $nome
      Email: $email
      Site: $site
  
  ''');
  }
}
