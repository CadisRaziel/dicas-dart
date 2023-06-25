void main() {
  print("INICIALIZANDO MAIN");

  var f1 = Future.delayed(Duration(seconds: 1), () => print("f1"));
  var f2 = Future.delayed(Duration(seconds: 1), () => print("f2"));
  var f3 = Future.delayed(Duration(seconds: 3), () => print("f3"));
  var f4 = Future.delayed(Duration(seconds: 4), () => print("f4"));

  //!Caso em algum desses futures tiver um erro, ele não vai trazer o resultado de nenhum !!
  //!porém mesmo assim ele espera executar tudo para apresentar o erro !!
  var f5 = Future.delayed(Duration(seconds: 4), () => Future.error("Erro para teste"));

  //Wait -> Todos serao executados em paralelos, porém o resultado quero tudo de uma só vez
  Future.wait([f1, f2, f3, f4, f5]).then((arrayValues) {
    print(arrayValues);
  });

  print("FINALIZANDO MAIN");
}
