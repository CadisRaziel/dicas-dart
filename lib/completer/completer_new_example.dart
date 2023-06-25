//!Exemplo -> imagine que eu quero salvar um usuario e que ao salvar com sucesso eu quero ser notificado
import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarUser((sucess) {
    print("Sucesso $sucess");
  }, (error) {
    print("Error $error");
  });

  //usando completer
  try {
  final sucesso = await usuario.salvarUserCompleter();
  print("sucesso completer $sucesso");
} catch (e) {
  print("error completer $e");
}
}

class UsuarioRepository {
  void salvarUser(void Function(String) callbackSucesso,
      void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        callbackSucesso("usuario salvo com sucesso");
      } catch (e) {
        callbackError("Error");
      }
    });
  }

  //com o completer
  Future<String> salvarUserCompleter() {
    final completer = Completer<String>();
    Timer(Duration(seconds: 2), () {
      try {
        completer.complete("usuario salvo com sucesso");
      } catch (e) {
        completer.completeError("Error");
      }
    });
    return completer.future;
  }
}
