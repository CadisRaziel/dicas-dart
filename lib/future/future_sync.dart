void main(){
  print("INICIANDO MAIN");

  //!o que acontece nesse future normal
  //!o print("INICIANDO MAIN") e o print("FINALIZANDO MAIN")
  //!serão executados primeiro e depois vem a future abaixo.
  // Future<String>(() {
  //   print("Função executada");
  //   return "Resultado Future";
  // }).then(print);


  //!Agora com a Future.sync
  //!esse future ele é executado depois do o print("INICIANDO MAIN"), como se fosse na ordem correta
  //!Porém ele só apresenta o "resultado future" após o print("FINALIZANDO MAIN")
  //!porque ?
  //!o sync vai executar a função sincronamente porém o "then" agurda o event loop
  //?resumindo o completar com erro ou sucesso é feito somente na proxima interação do event loop(e nao sincronamete)
      Future<String>.sync(() {
    print("Função executada");
    throw Exception(); 
    //Caso der uma exception antes do return
    //ele executa a função sincronadamente ainda, porém o erro aguarda o event loop
    return "Resultado Future";
  }).then(print);

  Future.sync(() => null);

  print("FINALIZANDO MAIN");
}