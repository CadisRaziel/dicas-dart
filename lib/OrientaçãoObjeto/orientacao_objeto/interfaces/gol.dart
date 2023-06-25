import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/carro.dart';

//?Ao inves de um 'extends' a interface nós precisamos utilizar a palavra 'implements'
class Gol implements ICarroClasseAbstrada {
  @override
  double motor = 2.0;

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 200;
  }
}
