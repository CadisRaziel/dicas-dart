Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*skipWhile -> não executar uma ação, conforme a condição, ou seja aqui no exemplo não é para executar se for menor que 5 !!
  //*só executa após ser 5
  //lembre-se que começa no 0
  stream = stream.take(5).skipWhile((numero) {
    print('Numero que chegou na skipWhile $numero');
    return numero < 5;
  });

  await for (var i in stream) {
    print(i);
  }
}

int callBack(int value) {
  return (value + 1) * 2;
}
