//*Aqui faremos a mesma coisa da classe equals_pessoa.dart porém de uma forma mais elegante

class EqualsPessoa2 {
  String nome;
  String email;
  EqualsPessoa2({
    this.nome = '',
    this.email = '',
  });

  //*Repare como ficou mais facil de entender do que no primeiro exemplo em equals_pessoa.dart
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    var isEquals = false;
    if (other is EqualsPessoa2) {
      if (other.nome == nome) {
        if (other.email == email) {
          isEquals = true;
        }
      }
    }
    return isEquals;
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
