void main() {
  print("INICIALIZANDO MAIN");

  var f1 = Future.delayed(Duration(seconds: 1), () => print("f1"));
  var f2 = Future.delayed(Duration(seconds: 1), () => print("f2"));
  var f3 = Future.delayed(Duration(seconds: 3), () => print("f3"));
  var f4 = Future.delayed(Duration(seconds: 4), () => print("f4"));

  var f5 = Future.delayed(
      Duration(seconds: 4), () => Future.error("Erro para teste"));


  //!eagerError -> quando acontecer um erro ele não espere a execução de todo mundo, ele ja execute o catError
  //!por default ele vem false
  //!resumindo quando der erro ja quero receber de cara
  //?cleanUp -> executa para as funções que nao deram problema
  //?mesmo se tiver função com erro, ele vai completar as que nao tiverem erro (ajuda a responder pro usuario os caras que deram sucesso)
  //?e se nao tiver erro nenhum ele nao executa o cleanUp, ou seja o cleanUp é uma excelente garantia para o future,await nao der problema
  //?lembre-se ele executa na ordem que ele conseguir executar, ou seja se tem 4 segundos de delay ele respeita isso
  //*Obs usando future.await com eageError e cleanUp é a forma do sucesso garantido
  Future.wait([f1, f2, f3, f4, f5], eagerError: true, cleanUp: (successValue) {
    print("Completou $successValue");
  },).then((arrayValues) {
    print(arrayValues);
  });

  print("FINALIZANDO MAIN");
}
