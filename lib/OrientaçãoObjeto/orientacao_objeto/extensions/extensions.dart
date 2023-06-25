import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/extensions/saudacao_string_extension.dart';

void main() {
  //? Extension -> A capacidade como eu programador pode ter de adicionar funções dentro de classes que eu nao tenho o código fonte

  //?exemplo, no dart existe a classe String
  var nome = 'Vitor';

  print(nome.saudacao());
}
