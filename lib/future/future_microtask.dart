void main() {
  print("INICIANDO MAIN");

  Future<String>(
    () => "Future normal",
  ).then(print);

  //!microtask -> estamos agendando um schedule microtask
  //! cria um evento dentro do event loop com prioridade
  //!vantagem, conseguimos pegar um erro com catchError / retornar valores / executar algo depois
  //!igual o scheduleMicrotask (porém o schedule não tem como fazer isso "catchError / retornar valores / executar algo depois")
  Future<String>.microtask(
    () => "Future microtask",
  ).then(print).catchError(print);

  print("FINALIZANDO MAIN");
}
