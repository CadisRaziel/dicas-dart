import 'dart:async';

void main() {
  print('inicio main');
  scheduleMicrotask(() => print('microtask1'));
  Future.delayed(Duration(seconds: 1), () {
    print('Future #1 1 segundo de delay');
  });
  Future(() => print('Future #2'));
  Future(() => print('Future #3'));
  scheduleMicrotask(() => print('microtrask2'));
  print('fim main');
}



/**
 * MicroTask
 * print(inicio main) -> 1º
 * print(fim main) -> 2º
 * scheduleMicrotask #1 -> 3º
 * scheduleMicrotask #2 -> 4º
 */


/**
 * Event
 * Future.delayed -> 5º (inicou porém como tem 1 segundo, so terminou 1 segundo depois)
 * Future #2 -> 6º
 * Future #3 -> 7º
 */