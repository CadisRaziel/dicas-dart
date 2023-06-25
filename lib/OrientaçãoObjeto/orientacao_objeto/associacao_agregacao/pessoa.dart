//*  Endereco endereco = Endereco(); -> Associação por meio de Composição
//* Composição/Associação -> algo que não pode existir sem algo, exemplo: Uma pessoa não pode existir sem cpf
//* Agregação -> algo que pode existir sem algo, exemolo> celular pode existir sem camera !

class Pessoa {
  String? nome;

  //? Composição/Associação (não pode viver sem)
  Endereco endereco = Endereco();
  CPF? cpf;

  //? agregação (pode viver sem)
  Telefone? telefone;
}


class Endereco {}

class Telefone {}

class CPF {}