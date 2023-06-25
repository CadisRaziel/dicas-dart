class Cliente {
  String? nome;
  String? cpf;

  String? razaoSocial;
  String? cnpj;

  //fazendo o assert no construtor (ele precisa sempre ser true)
  //: assert(nome != null, 'Nome não pode ser nulo'); -> com isso se na hora deu instanciar a classe eu nao colocar o nome ele vai dar erro e vai apresentar a mensagem
  Cliente({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
    //*Repare que eu posso fazer as validações direto aqui
    //*Usada para caso a variavel for nula String?
  })  
  //: assert(nome != null, 'Nome não pode ser nulo'),
  //       assert(cpf != null, 'Cpf Obrigatório');

  //*Validação para saber se é uma pessoa fisica ou juridica
  : assert(
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            'Vocé é uma pessoa fisica'),
        assert(
            (cnpj != null)
                ? razaoSocial != null && nome == null && cpf == null
                : true,
            'Vocé é uma pessoa juridica');
}
