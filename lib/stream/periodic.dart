//Stream.periodic
Future<void> main() async {
  //!periodic -> nao preciso de um streamcontroller
  final interval =
      Duration(seconds: 2); // -> a cada 2 segundos ele vai fazer algo
  final stream = Stream<int>.periodic(interval, callback);

  //stream fica recebendo dados infinitamente

  await for (var i in stream) {
    //await for fica como um loop infinito(loop toda hora) porém ele só vai funcionar quando a stream receber algum tipo de valor !!
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
