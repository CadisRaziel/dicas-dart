Future<void> main() async {
  //! abaixo vemos o 'callbackHELL', porém o dart nos ajuda em relação a isso(para evitarmos isso usamos async await)
  processo1().then((value) {
    processo2().then((message) {
      print(message);
    });
    print('Mensagem é $value');
  });

  //! utilizando o async await (utilizando async await nao precisamos usar .then, pois automaticamente ele ja faz isso)
  //! lembre-se a função ou classe onde é executado esse await necessariamente tem que ter um async !
  var message = await processo3();
  print(message);
  //!tratando erro com o processo4 (usamos o try catch)
  try {
    await processo4();
  } on Exception catch (err) {
    print('Erro na chamada do processo4 $err');
  }
}

Future<String> processo1() {
  print('inicio P1');
  return Future.delayed(Duration(seconds: 2), () {
    return 'fim P1';
  });
}

Future<String> processo2() {
  print('inicio P2');
  return Future.delayed(Duration(seconds: 2), () {
    return 'fim P2';
  });
}

Future<String> processo3() {
  print('inicio P3');
  return Future.delayed(Duration(seconds: 2), () {
    return 'fim P3';
  });
}

Future<String> processo4() {
  print('inicio P4');
  return Future.delayed(Duration(seconds: 2), () {
    return throw Exception();
  });
}
