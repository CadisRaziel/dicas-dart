import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/medico.dart';

class Pediatra extends Medico {
  @override
  void operar() {
    print('''
      Pediatra
      Examinar a criança pos parto

      -------------------------------
    ''');
  }
}
