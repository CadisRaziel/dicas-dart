import 'dart:async';

Future<void> main() async {
  //*Assim estanciamos uma streamController, repare que ja podemos colocar broadcast
  final streamController = StreamController<int>.broadcast();

  //?Obs: o Stream.periodic fazia essa parte do in e out que fiz abaixo !!

  //*Aqui é a porta de entrada da stream, ou seja, sempre que eu quero enviar um dado pra stream eu faço por essa variavel
  final inStream = streamController.sink;

  //*Agora com o out eu tenho a stream na minha mão, é a porta de saida
  final outStream = streamController.stream;

  //*no out eu posso colocar minhas condiçoes (aqui no exemplo eu quero que só passe numeros par)
  //*lembre-se do skip que só vai fazer 1 requisição
  outStream
      .skip(1) // -> numero de requisições
      .where((numero) =>
          numero % 2 == 0) // -> condição para validar o tipo de requisição
      .map((num) =>
          'o valor par enviado é $num') // -> para transforma em uma string
      .listen((strConvertida) {
    print('String recebida e validada');
    print(strConvertida);
  }); // -> para apresentar a string

  var numeros = List.generate(20, (index) => index);
  for (var num in numeros) {
    //*aqui colocamos nossa variavel de porta de entrada da stream
    inStream.add(num);

    //eu poderia nao ter o inStream e criar o streamController diretamente (não é uma boa pratica)
    // streamController.add(num);

    //*Só para ver aqui no exemplo de uma forma mais lenta
    await Future.delayed(Duration(microseconds: 500));
  }

  //?FECHANDO A STREAM !! IMPORTANTE
  await streamController.close();
}
