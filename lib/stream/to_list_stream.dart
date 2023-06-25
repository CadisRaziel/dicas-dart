//aqui veremos como ler todos os dados que chegar na stream de uma só vez

Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(5);

  //ao inves de eu fazer um loop pra pega um dado de cada vez
  //podemos pegar todos de uma vez só
  /*
  await for (var i in stream) {
    print(i);
  }
  */

  //aqui podemos pegar todos os dados de uma unica só vez em uma lista !!
  //ou seja, quando tudo tiver pronto, eu quero receber tudo !
  final data = await stream.toList();
  print(data);
}

int callback(int value) {
  print("Callback vaor que chegou é $value");
  return (value + 1) * 2;
}
