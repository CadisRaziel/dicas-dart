//listener (escutando a stream)

Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  stream = stream.take(10);

  stream.listen((numero) {
    //stream ativa estutando todas requisições
    //ele nao fica esperando igual o await for
    //tipo um streambuilder(streambuilder fica ouvindo e atualiza um bloco de código)
    print("Listen value: $numero");
  });
}

int callback(int value) {
  print("Callback vaor que chegou é $value");
  return (value + 1) * 2;
}
