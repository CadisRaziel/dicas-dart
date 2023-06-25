// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

Future<void> main() async {
  //criando a stream
  final streamController = StreamController<Pessoa>.broadcast();

  //entrada (enviar dado pra stream)
  final inStream = streamController.sink;

  //saida (dados que a stream vai enviar)
  final outStream = streamController.stream;

  outStream.listen((pessoa) {
    print("Seja bem vindo ${pessoa.nome}");
    print(pessoa);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    inStream.add(Pessoa(nome: "Vitor $numero"));
    await Future.delayed(Duration(milliseconds: 500));
  }

  //FECHANDO A STREAM
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
