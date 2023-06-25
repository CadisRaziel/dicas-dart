import 'dart:async';

Future<void> main() async {
  //*Assim estanciamos uma streamController, repare que ja podemos colocar broadcast
  final streamController = StreamController<Pessoa>.broadcast();

  //?Obs: o Stream.periodic fazia essa parte do in e out que fiz abaixo !!

  //*Aqui é a porta de entrada da stream, ou seja, sempre que eu quero enviar um dado pra stream eu faço por essa variavel
  final inStream = streamController.sink;

  //*Agora com o out eu tenho a stream na minha mão, é a porta de saida
  final outStream = streamController.stream;

  //Repare que quando usamos uma classe nossa nos usamos apenas
  outStream.listen((pessoa) {
    print('Seja bem vindo ${pessoa.nome}');
  }); // -> para apresentar a string

  var pessoa = List.generate(20, (index) => index);
  for (var pess in pessoa) {
    //*aqui colocamos nossa variavel de porta de entrada da stream
    inStream.add(Pessoa(nome: 'Vitor Brussolo Zerbato $pess'));

    //eu poderia nao ter o inStream e criar o streamController diretamente (não é uma boa pratica)
    // streamController.add(num);

    //*Só para ver aqui no exemplo de uma forma mais lenta
    await Future.delayed(Duration(microseconds: 500));
  }

  //?FECHANDO A STREAM !! IMPORTANTE
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    this.nome = '',
  });
}
