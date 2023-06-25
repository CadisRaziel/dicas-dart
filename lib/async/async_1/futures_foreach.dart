Future<void> main() async {
  var nomes = ['Vitor', 'nome1', 'nome2'];

  //para fazer um future de um foreach fazemos assim:
  await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  });

  //porém o que geralmente é feito é um for in (que vai da o mesmo efeito do foreach acima)
  for (var nome1 in nomes) {
    print(await saudacao(nome1));
  }

  //*Olha que interessante se meu future tem uma demora de 1 segundo, esse 1 segundo é para cada nome, ou seja 3 nomes 3 segundos
  //*Para corrigir isso podemos fazer um map como abaixo
  var nomesFuturo = nomes.map((nome) => saudacao(nome)).toList();
  //?wait -> vai executar os nomes no tempo de 1 segundo(indepentende se tiver 3 nomes) e nao 1 segundo por nome que daria 3 segundos(3 nomes)
  //!lembre-se que aqui ele retorna um array !!
  var saudacoes = await Future.wait(nomesFuturo);
  print(saudacoes);
}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Olá $nome';
  });
}
