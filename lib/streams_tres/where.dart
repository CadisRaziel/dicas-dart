Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*where -> faz a mesma coisa que o skipwhile
  //aqui a condição é que só vai passar os numeros que são dividos por 6, e o take 3 para ele receber só 3 requisiçõse de sucesso
  stream = stream.where((numero) => numero % 6 == 0).take(3);

  //? Diferença entre skipewhile e where
  //? skipewhile a condição precisa ser falso (quando quero descartar quem não faz sentido)
  //? o where a condição precisa ser verdadeiro (o where é mais comum ser usado) (quando quero filtrar os dados)

  stream.listen((numero) {
    print('listen value: $numero');
  });
}

int callBack(int value) {
  return (value + 1) * 2;
}
