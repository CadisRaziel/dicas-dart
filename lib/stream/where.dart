Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  //skipWhile e where é praticamente a mesma coisa
  //aqui eu vou dizer com o where que eu quero somente os numeros divisiveis por 6 e vou pegar só os 3 primeiro com take
  //6 == 0 -> se o resto da divisão for igual a 0 ele passa
  //obs: aqui o skipeWhile seria 6 != 0 (só isso mudaria, pois o skipwhile precisa ser falso)
  stream = stream.where((num) => num % 6 == 0).take(3);

  stream.listen((numero) {
    print("Listen value: $numero");
  });
}

int callback(int value) {
  print("Callback vaor que chegou é $value");
  return (value + 1) * 2;
}
