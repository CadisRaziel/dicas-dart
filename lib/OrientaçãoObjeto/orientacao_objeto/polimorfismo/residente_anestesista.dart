import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/polimorfismo/anestesista.dart';

class ResidenteAnestesista extends Anestesista {
  @override
  //*Sobrescrevendo o que um anestesista faria, repare no extends
  void operar() {
    //*? Fazendo esse super ele vai juntar o Anestesista e o ResidenteAnestesista e com isso eu nao preciso instanciar o Anestesita na main !!! (somente o Residente)
    super.operar();
    print('''
      Residente Anestesista:
      preparar e esterelizar os equipamentos,

      -------------------------------
    ''');
  }
}
