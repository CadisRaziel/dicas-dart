class Classpessoa {
  //?com o get e set eu deixarei o atributo privado
  String? _nome;

  //? fazer isso direto não tem sentido sem uma regra de negócio(abaixo estamos fazendo direto)
  //? Lembre-se se não houver uma regra de negócio não faz sentido ter get e set
  // String? getNome() => _nome;
  // void setNome(String? nome) {
  //   _nome = nome;
  // }

  //?Para fazer com regra de neógico faremos assim:
  //*com o get nos conseguimos acessar ele no void main, ou seja (pessoa.nome)
  String? get nome => _nome;

  //*com o set nos conseguimos alterar o valor dele no void main (pessoa = 'vitor')
  set nome(String? nome) {
    //regra de negocio
    if (nome != null && nome.length > 3) {
      nome = _nome;
    }
  }
}
