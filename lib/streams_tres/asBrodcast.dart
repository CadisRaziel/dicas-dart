Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //* Só podemos ter 1 listen, porém podemos usar o broadcast para ter mais de 1 listen
  //* ela notifica todos os ouvintes, ou seja imagine que tenha mais de 1 widget que usa essa stream, então todos serão notificados
  //* Lmebre-se para notificar mais de 1 ouvinte precisamos ter o broadcast
  stream = stream.asBroadcastStream().take(10);

  stream.listen((numero) {
    print('listen 1 value: $numero');
  });
  stream.listen((numero) {
    print('listen 2 value: $numero');
  });

  //? Quando usar listen lembre-se de FECHAR A STREAM ! (no streamController veremos isso !)
}

int callBack(int value) {
  return (value + 1) * 2;
}
