Future<void> main() async {
  print("inicio main");
  final nomes = ["Vitor", "Ariella", "Rosana", "monique", "michelle", "oriovaldo"];

  //!o ASYNC - AWAIT não respeita o forEach !!  
  //!ele o deixa assincrono
  nomes.forEach((nome) async {
    final saudacaoNome = await saudacao(nome);
    print(saudacaoNome);
   });


  //!para reparar isso faça com um laço FOR (com o for ele deixa sincrono !)
  for(var nome in nomes ) {
    await tratarSaudacao(nome); 
  }


  //!Ou podemos fazer o event loop trabalhar sozinho com o
  //!Future.forEach, pois é possivel usar processos asincrono dentro dele
  await Future.forEach(nomes, (nome) async {
    await tratarSaudacao(nome);
  });

  //!ou podemos usar um Future.await para ele fazer o mesmo que o Future.forEach porém retornando a lista
  //!porém lembre-se o wait vai espera todo mundo fazer seu papel e depois que todos concluirem ai sim ele é executado
  final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  final nomesProcessados = await Future.wait(nomesFuture);
  print(nomesProcessados);


  print("fim main");
}
  //!vamos tratar o metodo saudacao antes
  Future<void> tratarSaudacao(String nome) async {
    final saudacaoNome = await saudacao(nome);
    print(saudacaoNome);
  }

Future<String> saudacao(String nome) {
  print("inicio saudacao: $nome");
  return Future.delayed(Duration(seconds: 1), () {
    print("fim saudacao nome: $nome");
    return "olá $nome";
  });
}