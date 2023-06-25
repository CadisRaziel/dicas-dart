void main() {
  //* Um map é especificado por chave e valor, difente de um set
  //* Isso é um set !!!

  //?Map é representado por chave e valor 'chave' : 'valor'

  final paciente = <int>{};

  //*Definindo duas propriedades estamos dizendo que é chave e valor ! ISSO È UM MAP
  final paciente2 = <String, String>{};

  //*Chave nula
  var paciente3 = <String?, String>{null: 'vitor'};

  //*Valor nullo
  var paciente4 = <String, String?>{'nome': null};

  //*Chave e valor nullo
  var paciente6 = <String?, String?>{null: null};

  //*Map nulo
  Map<String, String>? nullsafety;

  //*Tudo nulo
  Map<String?, String?>? nullsafety2;

  var produtos = <String, String>{};
  //*Metodo que vai adicionar itens ao nosso map, ou seja se nao existir a chave 'nome' ele vai adicionar
  //*lembre-se se a chave nao existir ele adiciona, se ela existir ele não faz nada
  produtos.putIfAbsent('nome', () => 'Coca-cola');
  produtos.putIfAbsent('nome', () => 'Coca-cola');
  print(produtos);

  //*Update -> vai alterar o nome do valor que contiver a chave 'nome'
  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);

  //*Caso eu for alterar um valor pela chave e não existir esse valor, eu posso adicionar ele
  //*ifAbsent -> caso não exista faça isso
  produtos.update('nome', (value) => '10', ifAbsent: () => '10');
  print(produtos);

  //*Recuperando o valor
  print('O Produto é: ${produtos['nome']}');

  //*Varrendo todos os itens dentro de produto
  //*FOREACH NAO E UTILIZADO EM PROCESSOS ASYNC AWAIT
  produtos.forEach((key, value) {
    print('Chave: $key - Valor: $value');
  });

  //?Foreach é usado quando não utilizamos async await !!!!!
  //?For in é usado quando estamos usando async await !!!!!

  //*produtos.entries -> vai transformar nosso map em uma lista (aqui pega chave e valor o entries)
  //*FOR IN UTILIZADO PARA PROCESSOS ASYNC AWAIT
  for (var entry in produtos.entries) {
    print('Chave: ${entry.key} - Valor: ${entry.value}');
  }

  //*Pegando so minhas chaves
  for (var keys in produtos.keys) {
    print('Chave: $keys');
  }

  //*Pegando so meus valores
  for (var values in produtos.values) {
    print('Chave: $values');
  }

  //*Podemos transformar um map em outro map
  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry(key, value.toLowerCase());
  });
  print(novoMapaProdutos);

  //*Podemos criar mapa dentro de mapa
  var mapa2 = <String, Object>{
    'nome': 'Vitor',
    'Curso': [
      {
        'nome': 'Academia do flutter',
        'descricao': 'Melhor curso atualmente',
      },
      {
        'nome': 'Arquiteto flutter',
        'descricao': 'Dominando o flutter',
      },
    ]
  };
}
