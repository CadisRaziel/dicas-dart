class Pessoa {
  late final String nome;

  //*Late -> vai ser inicializado depois
  //*O dart entende que uma hora ele sera inicializado
  //? è muito perigoso porque ele não da erro em tempo de compilação e sim de execução(hora que o usuario mexe)
  //? Evite ao maximo (ele ignora final)

  Pessoa({
    required this.nome,
  });
}
