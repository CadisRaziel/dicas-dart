import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/carro.dart';

class Uno implements ICarroClasseAbstrada {
  @override
  double motor = 1.0;

  @override
  int portas = 2;

  @override
  int rodas = 4;

  @override
  int velocidadeMaxima() {
    return 320;
  }
}
