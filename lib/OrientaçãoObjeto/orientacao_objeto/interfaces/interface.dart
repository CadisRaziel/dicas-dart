import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/carro.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/gol.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/interfaces/uno.dart';

void main() {
  var uno = Uno();
  var gol = Gol();

  print(uno.velocidadeMaxima());
  print(gol.velocidadeMaxima());
  print('-----------------------------------------');
  printarDadosDoCarro(gol);
  printarDadosDoCarro(uno);
}

void printarDadosDoCarro(ICarroClasseAbstrada carro) {
  print('''
    Carro:
      tipo: ${carro.runtimeType}
      portas: ${carro.portas}
      rodas: ${carro.rodas}
      motor: ${carro.motor}
      velocidade Máxima: ${carro.velocidadeMaxima()}
  ''');
}
