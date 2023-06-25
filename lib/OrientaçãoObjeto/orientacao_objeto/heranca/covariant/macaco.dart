import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/covariant/banana.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/covariant/mamifero.dart';

class Macaco extends Mamifero {
  @override
  //? Para que a fruta interaja com o tipo, é necessario fazer um covariant
  void comer(Banana fruta) {
    print(fruta.tipo);
  }
}
