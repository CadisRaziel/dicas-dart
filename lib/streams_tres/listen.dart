Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  stream = stream.take(10);

  //*ao invez de ficar com o programa parado esperando ele executar como o 'await for', nós podemos ficar escutando a stream
  //*listen -> uma stram que vai ficar ativa escutando todas nossas requsições
  //Ele não fica esperando como o 'await for'
  //ele escuta e executa, escuta e executa
  stream.listen((numero) {
    print('listen value: $numero');
  });
}

int callBack(int value) {
  return (value + 1) * 2;
}
