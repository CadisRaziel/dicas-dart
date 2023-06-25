class EqualsPessoa {
  String nome;
  String email;
  EqualsPessoa({
    this.nome = '',
    this.email = '',
  });

  //?aqui vamos resolver isso
  //? vamos implementar o equals para que independente da referencia de memoria EU quero definir que os objetos serão iguais(como eles serão iguais)
  bool operator ==(Object other) {
    //*Se for igual retorna true
    if (identical(this, other)) return true;

    //*Se nao for igual
    if (other is EqualsPessoa) {
      if (other.nome == nome) {
        //*se for igual
        if (other.email == email) {
          //*se for
          return true;
        } else {
          //*se nao
          return false;
        }
      } else {
        //*Se os nomes for diferentes a istancia ja não é a mesma
        return false;
      }
    } else {
      //*Se nao for pessoa nem perco tempo validando
      return false;
    }
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
