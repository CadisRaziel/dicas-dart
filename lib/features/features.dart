import 'dart:math';

void main() {
  // print("Levando o carro para o mecanico");
  // Future<int>(() {
  //   //função assincrona que vai fazer o orçamento da manutenção do nosso carro!
  //   return 10 ~/ 2;
  // }).then((valorOrcamento) {
  //   print("mecanico ligou depois que olhou o carro falou que o orçamento ficou em \$$valorOrcamento");
  // });
  // print("Saindo da mecanica");

  // print("\n");
  // print("------------------------------");

  // print("fui viajar");
  // Future<String>(() {
  //   //indo para o USA compra um macbook
  //   return "macbook comprado";
  // }).then((comprado) {
  //   print("comprei meu macboock");
  // }).catchError((error) {
  //   print("o voo vai atrasar ou o voo caiu");
  // }).whenComplete(() => print("independente se der sucesso ou erro eu vou printar isso"));
  // print("Saindo da mecanica");

  Future<int>(() {
    // ~/ -> qualquer divisão sempre vai retornar um inteiro
    return 10 ~/ 2;
  }).then((value) {
    print("Valor calculado é $value");
  }, onError: (error) {
    //! onError -> utilizamos mais ele quando tem algum tipo de retorno 
    //! quando o onError é chamado todo esse future ignora o 'catchError'
    //! o catchError só não seria ignorado se der um erro dentro do 'onError'
    print("vai fazer o mesmo papel do catchError");
  });


  //!podemos ter varios tratamentos de erro em uma future callback igual o try catch
  Future<int>(() {
    // throw para simular o erro do test 2
    throw Exception("x");
    return 10 ~/ 2;
  })
    .then((value) => print("valor caldulado é $value"))
    .catchError(
      (error) {
        print("ocorreu um erro no catchError $error");
      },
      test: (error) => error is UnsupportedError,
    ).catchError(
      (error) {
        print("Ocorreu um error no catchError2 $error");
      },
      test: (error) => error is Exception 
    );
}
