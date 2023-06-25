import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/medico.dart';

class Anestesista extends Medico {
  @override
  void operar() {
    print('''
      Anestesista:
      preparar e esterelizar os equipamentos,
      anestesiar a paciente

      -------------------------------
    ''');
  }
}
