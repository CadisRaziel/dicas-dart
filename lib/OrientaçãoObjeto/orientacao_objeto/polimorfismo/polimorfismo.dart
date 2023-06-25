import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/anestesista.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/medico.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/obstetra.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/pediatra.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/residente_anestesista.dart';

void main() {
  //parto !!

  var medicos = <Medico>[
    ResidenteAnestesista(),
    //?Como eu fiz um super no ResidenteAnestesista com extends de Anestesista, eu nao preciso instanciar o Anestesista
    //?Pois o residente chamou um super e ele vai apresentar o seu conteudo e o conteudo do anestesista
    //Anestesista(),
    Obstetra(),
    Pediatra(),
  ];

  //realizar um parto
  for (var medico in medicos) {
    medico.operar();
  }
}
