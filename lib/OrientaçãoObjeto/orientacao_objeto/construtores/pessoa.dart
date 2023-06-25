class Pessoa {
  String? nome;
  int? idade;
  String? sexo;

  //*Required -> ao instanciar a classe é obritarório passar os required
  //*Construtor default
  Pessoa({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  //*Construtor nomeado
  //*Posso usar construtor nomeado quantas vezes eu quiser, é só alterar o nome
  Pessoa.nomeado({
    required this.nome,
    required this.idade,
    required this.sexo,
  });

  Pessoa.semnome({
    required this.idade,
    required this.sexo,
  });

  Pessoa.vazia();

  //*Construtor Factory (ele não precisa ser nomeado, porém quando uso factory não podemos ter o construtor default)
  //*Vou fabricar uma instancia de pessoa
  //*è utilizado pois podemos fazer uma regra de negocio antes de criar o construtor
  //* Exemplo: vou abrir uma conexão com o database, porém quero saber se tem uma conexão aberta !!
  //* ou seja ao invés de abrir a conexão novamente, eu somente irei verificar sem tem alguma aberta !!
  //* e se existir conexão aberta é só da um return nela
  factory Pessoa.fabrica(String nome2) {
    var nome = nome2 + '_fabrica';

    //*Aqui eu crio a instancia do construtor que eu quero
    var pessoa = Pessoa.vazia();
    pessoa.nome = nome;
    return pessoa;
  }
}
