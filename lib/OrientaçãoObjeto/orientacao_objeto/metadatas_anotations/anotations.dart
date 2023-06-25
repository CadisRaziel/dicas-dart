import 'dart:mirrors';

import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/metadatas_anotations/pess.dart';
import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/metadatas_anotations/todo.dart';

void main() {
  //? Metadatas(anotações) -> são aquilo que inicia com '@'

  final p1 = Pess();

  //?para fazer a leitura dessa instancia eu uso o mirros
  InstanceMirror instanceMirror = reflect(p1);

  //?Isso vai me dar os metadatas da minha classe
  ClassMirror classMirror = instanceMirror.type;

  //?agora podemos varrer os metadatas(o metadata me da todas as anotaçoes com @ na minha classe Pess como eu instanciei ali)
  // classMirror.metadata.forEach(print);

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Todo) {
      print(instanceAnnotation.quem);
      print(instanceAnnotation.oque);
      print(
          '|-----------------------------------------------------------------|');
    }
  });

  //?para ler o metadata de dentro da classe com atributo
  classMirror.declarations.values.forEach((declarationMirro) {
    if (declarationMirro is VariableMirror) {
      //? se for a variavel'atributo'
      declarationMirro.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Todo) {
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
          print(
              '|-----------------------------------------------------------------|');
        }
      });
    } else if (declarationMirro is MethodMirror) {
      //?se for um metodo
      declarationMirro.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Todo) {
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
          print(
              '|-----------------------------------------------------------------|');
        }
      });
    }
  });
}
