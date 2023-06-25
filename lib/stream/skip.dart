//Skip
Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //Skip -> Pular, não executar a ação
  //aqui eu estou dizendo que nao quero que execute os dois primeiros
  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
