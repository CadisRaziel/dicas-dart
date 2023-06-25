void main(){
  //* Futures podem ter 3 estados
  //! 1º -> incompleto
  //! 2º -> completo com sucesso
  //! 3º -> completo com erro

  //Future tem anatomia de um callback 
  //! then -> Quando o future executar e objtiver sucesso ele executa o que tem no then
  var valor = Future(() {
    //função assincrona
  }).then((value) {
    //registrando função que será executada quando o future ser completado com sucesso
    print(value);
  }).catchError((error) {
    //registrando funcao que sera executada quando o future for completado com erro
    print(error);
  }).whenComplete(() {
    //registrando a função que será executada sempre (com erro ou sucesso !!)
  });

  
  
}