class Produto {
  final int _id;
  final String nome;
  final double _preco;

  //*Quando temos atributos privados e precisamos fazer o construtor, fazemos dessa forma !!
  Produto({
    required int id,
    required this.nome,
    required double preco,
  })  : _id = id,
        _preco = preco;

  //*Factory não pode ter 'this'
  factory Produto.fabrica({
    required int id,
    required String nome,
    required double preco,
  }) {
    return Produto.fabrica(id: id, nome: nome, preco: preco);
  }
}
