Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*skip -> não executar uma ação, no exemplo abaixo eu coloquei 2, ou seja, eu quero que ele não execute as duas primeiras requisições
  //lembre-se que começa no 0
  stream = stream.take(5).skip(2);

  await for (var i in stream) {
    print(i);
  }
}

int callBack(int value) {
  return (value + 1) * 2;
}
