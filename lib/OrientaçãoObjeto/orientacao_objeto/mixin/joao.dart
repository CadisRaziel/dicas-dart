import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/mixin/artista.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/mixin/dancar_mixin.dart';

//? with -> mixin
//*Ele fica logo depois do 'extends'
//*Só pode ser usando junto a um 'extends'
//? Se eu remover o 'on' ai sim eu posso utilizar sem o 'extends'
//? o 'on' significa que só pode ser usada na classe que especificarmos
//! o 'with' aceita tando 'with' mixins, quanto classes abstract
//! ou seja se eu quiser colocar 'with Dancar, Cantar(classe abstract) eu posso !!
class Joao extends Artista with Dancar {}

//*O mixin fica entre o extends e o implements
// class Joao extends Artista with Dancar implements IArtista {}
// abstract class IArtista {}
