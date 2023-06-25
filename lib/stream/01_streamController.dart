import 'dart:async';

Future<void> main() async {
  //criando a stream
  final streamController = StreamController<int>.broadcast();

  //entrada (enviar dado pra stream)
  final inStream = streamController.sink;

  //saida (dados que a stream vai enviar)
  final outStream = streamController.stream;

  outStream
      //aqui no where só vai passar o que for par
      .skip(1)
      .where((event) => event % 2 == 0)
      .map((event) => "o valor par enviado é $event")
      .listen((strConvertida) {
    print("String recebida");
    print(strConvertida);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }

  //FECHANDO A STREAM
  await streamController.close();
}

Future<void> main2() async {
  //criando a stream
  final streamController = StreamController<int>.broadcast();

  //entrada (enviar dado pra stream)
  //!POSSO OMITIR O SINK E MANDAR UM ADD DIRETO
  // final inStream = streamController.sink;

  //saida (dados que a stream vai enviar)
  final outStream = streamController.stream;

  outStream
      //aqui no where só vai passar o que for par
      .skip(1)
      .where((event) => event % 2 == 0)
      .map((event) => "o valor par enviado é $event")
      .listen((strConvertida) {
    print("String recebida");
    print(strConvertida);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    //!AQUI EU PASSO O ADD DIRETO !
    streamController.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }

  //FECHANDO A STREAM
  await streamController.close();
}
