void main(){
    final aguardando = inserindoAlgoBemLento();
    print(DateTime.now().toIso8601String());
    //!timeout -> vai colocar um tempo que eu quero aguardar de execução desse futire
    //!ou seja eu quero que esse future termine em 1 segundo
    //!caso nao termine em 1 segundo eu quero ser informado
    //*porém lembre-se ele não cancela a função futuro(inserindoAlbemLento) ela ainda sim depois de 3 segundos vai executar
    aguardando.timeout(Duration(seconds: 1))
    .catchError((erro) {
      print("terminou com erro: $erro");
    })
    ;
  }

Future<void> inserindoAlgoBemLento(){
  return Future.delayed(Duration(seconds: 3), () {
    print("terminou o insert");
    print(DateTime.now().toIso8601String());
  });
}