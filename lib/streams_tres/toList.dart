Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*A stream vai guardar tudo dentro dela, ou seja 5 requisições como eu defini, e depois vai apresentar de uma vez no stream.toList()
  stream = stream.take(5);

  //*Imagique que eu não quero fazer o loop(um por um) dessa stream, e sim resgatar os dados de uma vez só
  final data = await stream.toList();
  print(data);

  //!com o to.List eu não preciso mais do for pois vamos pegar os dados todos de uma só vez
  // await for (var i in stream) {
  //   print(i);
  // }
}

int callBack(int value) {
  return (value + 1) * 2;
}
