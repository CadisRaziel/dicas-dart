void main() {
  print("INICALIZANDO MAIN");

  var f1 = Future.delayed(Duration(seconds: 1), () => print("f1"));
  var f2 = Future.delayed(Duration(seconds: 1), () => print("f2"));
  var f3 = Future.delayed(Duration(seconds: 3), () => print("f3"));
  var f4 = Future.delayed(Duration(seconds: 4), () => print("f4"));

  //!any -> o primeiro que executar com sucesso ou erro ele me retorna para eu mostra pro usuario
  //!ele não cancela os outros !!! ele apenas ignora(e executam em background mesmo assim)
  Future.any([f1, f2, f3, f4]).then(print).catchError(print);


  //*uma utilidade, temos varias fonte de dados de diferentes lugares que vai traze o mesmo resultado
  //*porém queremos mostrar a mais rapida(a que executar primeiro)
  //*o future.any é uma excelente opção pra isso
  print("FINALIZANDO MAIN");
}
