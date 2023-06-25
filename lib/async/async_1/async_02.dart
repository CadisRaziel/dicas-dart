import 'dart:async';

void main() {  
  //!Future.microtask || scheduleMicrotask -> Ambas são prioridades as duas executarao primeiro
  print("Inicio Main()");
   Timer.run(() {
    scheduleMicrotask
      (() => print("Time.run scheduleMicrotask 0"));
      print("Event Loop 0");   
  });
  Future.microtask(() => print("Future.microtask 4"));
  scheduleMicrotask(() => print("scheduleMicrotask 0"));
  Timer.run(() {
    scheduleMicrotask
      (() => print("Time.run scheduleMicrotask 1"));
      print("Event Loop 1");   
  });
  Future.microtask(() => print("Future.microtask 3"));
  Timer.run(() => print("Timer.run Event loop 2"));
  Timer.run(() => print("Timer.run Event loop 3"));

Future.microtask(() => print("Future.microtask 2"));
  scheduleMicrotask(() => print("scheduleMicrotask 1"));
  scheduleMicrotask(() => print("scheduleMicrotask 2"));

  Future.microtask(() => print("Future.microtask 1"));

  print("Fim Main()");
  Future.microtask(() => print("Future.microtask 0"));
}
