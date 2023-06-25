import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/callable%20_class/enviar_email.dart';

void main() {
  var enviarEmail = EnviarEmail();

  //? A ideia da callable class é criar duas funçoes(olha no 'enviar_email.dart')
  //? repare que ao colocar uma função dentro de outra a hora que eu chamo aqui eu nao preciso fazer 'enviarEmail.enviar
  //? eu apenas faço 'enviarEmail'
  enviarEmail('');

  enviarEmail.enviar('vitorbrussolo@gmail.com');
}
