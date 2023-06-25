import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/medico.dart';

class Obstetra extends Medico {
  @override
  void operar() {
    print('''
      Obstetra:
      preparar o paciente,
      realizar o parto

      -------------------------------
    ''');
  }
}
