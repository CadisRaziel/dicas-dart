import 'dart:async';

//! A partir do momento que colocamos um async await o main deixou de ser uma microtask
//*Processos sincronos são microtask
//*Processos assincronos (async await) são events
//! Quando colocamos 'await' estamos pedindo para nosso programa esperar
//! ou seja quando dizemos que algo é await o programa vai esperar executar esse await para ai sim ir para o proimo passo !!
Future<void> main() async {
  print('inicio main');
  scheduleMicrotask(() => print('microtask1'));
  await Future.delayed(Duration(seconds: 1), () {
    print('Future #1 1 segundo de delay');
  });
  await Future(() {
    var i = 0;
    while (i < 3) {
      print(i);
      i++;
    }
    print('Future #2');
  });
  await Future(() => print('Future #3'));
  scheduleMicrotask(() => print('microtrask2'));
  print('fim main');
}
