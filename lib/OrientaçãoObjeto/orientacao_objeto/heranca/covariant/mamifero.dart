import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/covariant/fruta.dart';

abstract class Mamifero {
  //? covariant -> diz pro dart o seguinte: deixa o dev implementar aonde ele quiser, porém desde que seja meus filhos !!
  void comer(covariant Fruta fruta);
}
