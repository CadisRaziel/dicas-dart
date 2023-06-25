void main() {
  //? .then -> sempre envolva em um try catch (pois são erros que acontece no metodo future)
  //? .catchError -> erros tratatos depois do .then
  //? .onError -> faz a mesma função do .catchError porém é tratado junto com o .then (porém não trata o erro da função FUTURE)

  //! catchError e onErro -> vai tratar os erros de um FUTURE
  //! o then é responsabilidade do programador para tratar então sempre envolva em um try catch

  print('inicio P1');
  processo2();

  //?quando eu retorno algo, eu preciso colocar uma callback 'then' (se não ele não finaliza)
  processo3().then((mesage) {
    print(mesage);
  });

  processo4().then((mesage) {
    print('Mensagem do P4 $mesage');
  }).catchError((error) {
    //! Com o catchError nós conseguimos tratar as Exception (é o mesmo que try catch)
    print('Erro ao executar o P4');
  }).whenComplete(() => print('finalizou com error o P4'));

  processo4().then((mesage) {
    print('Mensagem do P4 $mesage');
    //! Com o onError vai fazer exatamente a mesma coisa do catchError (porém eu to adicionando no proprio then essa tratamento de erro)
  }, onError: (error) {
    print('Tratando o erro do P4 pelo onError');
  });

  //!Quando eu tenho erro diretamente no 'then' o onError e o catchError não ira resolver !!!
  //!para resolver tudo dentro do 'then' em um try catch !!
  processo3().then((message) {
    try {
      throw Exception();
    } catch (e) {
      print('Erro tratado com try catch no P3');
    }
  });

  //!whenComplete é exatamente igual o 'finally' do try catch (lembre-se que o try catch tem o finally)
  //!ou seja não interessa se foi concluido ou deu erro ele sempre vai apresentar o que colocarmos no 'whenComplete'
  processo3()
      .then((value) => print(value))
      .whenComplete(() => print('finalizou com sucesso'));

  print('fim P1');
}

//? lembre-se sempre que tiver void eu preciso colocar o 'async'
Future<void> processo2() async {
  print('inicio P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 0;
    while (i < 5) {
      print(i);
      i++;
    }
    print('fim P2');
  });
}

//?quando eu retorno algo, não necessariamente eu preciso colocar o 'async'
Future<String> processo3() {
  print('inicio P3');
  return Future.delayed(Duration(seconds: 2), () {
    return 'fim P3';
  });
}

//?retornando um erro !
Future<String> processo4() {
  print('inicio P4');
  return Future.delayed(Duration(seconds: 3), () {
    throw Exception();
  });
}
