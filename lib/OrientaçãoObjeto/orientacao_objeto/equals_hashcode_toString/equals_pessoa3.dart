//*Aqui faremos a mesma coisa da classe equals_pessoa2.dart porém operador &&

class EqualsPessoa3 {
  String nome;
  String email;
  EqualsPessoa3({
    this.nome = '',
    this.email = '',
  });

  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EqualsPessoa3 && other.nome == nome && other.email == email;
  }

  //?Repare que o hashcode do p1 e p2 ainda sera diferente, e isso é um problema, para igualar precisamos fazer isso
  @override
  int get hashCode {
    //aqui retornamos os campos que estão na comparação do nosso equals  (aqui no caso é 'nome' e 'email')
    //se tivesse mais faria assim 'return nome.hashCode ^ email.hashCode ^ telefone.hashCode;
    return nome.hashCode ^ email.hashCode;
  }

  // ^ -> soma de bits
}
