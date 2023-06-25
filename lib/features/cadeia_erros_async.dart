void main() {
  //! se nao tratarmos os erros corretamente dessa cadeia tudo para.
  //! aqui colocamos apenas um erro generico
  /*
  func1()
      .then((value) => func2())
      .then((value) => func3())
      .then(print) //o resultado da func3 sera printado aqui
      .catchError((error) => print("erro em alguma das chamadas"));
    */


  //? no try catch a gente não consegue ter essa flexibilidade de 'voltar para a cadeia'
  //!Tratando corretamente os erros de cada uma das chamadas
  func1()
      .then((value) => func2())
      .then((value) => func3(), onError: (error) {
        print("tratando erro da func2");
        return func3();
      })
      .then(print) //o resultado da func3 sera printado aqui
      .catchError((error) => print("erro em alguma das chamadas"));
      //como eu tratei o erro do func2 na func3 no "onError" e coloquei um retorno
      //ele não vai mais cai nesse "catchError"
}

Future<String> func1() {
  print("func1");
  return Future.value("Fazendo algo func1");
}

Future<String> func2() {
  print("func2");
  return Future.error("Fazendo algo func2");
}

Future<String> func3() {
  print("func3");
  return Future.value("Fazendo algo func3");
}
