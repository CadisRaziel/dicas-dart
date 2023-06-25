Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*takeWhile -> faz a mesma coisa que o take, porém ele recebe uma condição ou seja o while é (NAO PARE ENQUANTO FOR ALGO)
  //ele faz enquanto a condição for falsa, ou seja enquanto ser menor que 10 ele fica executando, chegou em 10 ele mata a stream
  stream = stream.takeWhile((int numero) => numero < 10);

  await for (var i in stream) {
    print(i);
  }
}

int callBack(int value) {
  return (value + 1) * 2;
}
