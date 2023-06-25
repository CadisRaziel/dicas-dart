import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/mixin/artista.dart';

//*o 'on' significa que esse mixin só pode ser usado se quem usar herdar a classe Artista !!!
mixin Dancar on Artista {
  String dancar() {
    return 'Dança dos mixins';
  }

  //? NO mixin nós podemos sobrescrever os metodos da classe pai, porém tome muito cuidado
  //? se a classe pai for heradad em outros locais, esse metodo vai ser sobrescrito em todo lugar que ele estiver !
  @override
  String dancar2() {
    return 'dancei novamente';
  }
}
