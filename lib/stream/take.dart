//Parando uma stream com Take
Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //Take -> Estipulamos quantos valores ele vai receber
  //ou seja aqui estamos falando que ele vai receber somente 5 requisições e depois vai mata essa stream
  stream = stream.take(5);

  //ou seja ele vai executar somente o numero de requisições que queremos e depois ele mata a stream

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
