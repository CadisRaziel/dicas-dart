Future<void> main() async {
  //*Não podemos instanciar uma stream diretamente

  //Para criar uma stream precisamos de um controllador 'StreamController'

  //periodic -> posso trabalhar sem a neessidade de um 'StreamController' (ele sózinho ja faz o controller e as estruturas)
  //periodic -> aceita 2 parametros o primeiro é o tempo, o segundo é uma função de callback
  //Aqui a cada 2 segundos ele vai fazer algo ()
  final interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callBack);

  //Não podemos usar um await normal, com isso usamos um 'for await'
  //Lembre-se em quanto ele ta parado ele não usa nada de processamento
  //*await for -> vai deixar em um loop que fica esperando a stream receber um valor, ai sim ele executa e faz o que tem que fazer
  await for (var i in stream) {
    print(i);
  }
}

int callBack(int value) {
  return (value + 1) * 2;
}
