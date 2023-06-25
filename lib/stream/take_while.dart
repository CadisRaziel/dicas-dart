//Parando uma stream com TakeWhile
Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //TakeWhile -> faz a mesma coisa que o take, porém ele recebe uma condição (faça ou pare enquanto faz algo)
  //ou seja aqui eu digo se o numero for menor que 10 continua executando
  stream = stream.takeWhile((int numero) => numero < 10);

  //ou seja ele vai sempre matar a stream conforme a condição(ele vai sempre analizar a saida)

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
