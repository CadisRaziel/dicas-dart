import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/covariant/banana.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/heranca/covariant/macaco.dart';

void main() {
  var macaco = Macaco();
  macaco.comer(Banana('nanica'));
}
