Future<void> main() async {
  //as stream dever ter apenas 1 ouvinte
  //porém podemos dividi-la para ela nofiticar mais de um ouvinte

  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //pode ter varios ouvintes !!
  //exemplo tem mais de uma tela que depende dessa stream, ou seja tem mais de um streambuilder
  //com o broadcast varios streambuilder pode usa essa mesma stream
  stream = stream.asBroadcastStream();

  stream = stream.where((num) => num % 6 == 0).take(3);

  stream.listen((numero) {
    print("Listen 1 value: $numero");
  });

  stream.listen((numero) {
    print("Listen 2 value: $numero");
  });
}

int callback(int value) {
  print("Callback vaor que chegou é $value");
  return (value + 1) * 2;
}
