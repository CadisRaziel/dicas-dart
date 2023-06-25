void main(){

  //!o que esta acontecendo aqui
  //?Passo 1 -> executou a main(porque tem prioridade, é quem estarta o isolate principal)
  //?e dentro do main executou isso "final totalAlunos = buscarTotalAlunos();"

  //?Passo 2 -> executou a função "Future<int> buscarTotalAlunos() async {}"
  //?executou o print que é sincrono, e depois ele foi pra proxima linha do metodo que é um await
  //?ou seja o dart indentificou que a função é assincrona e falou, tem um cara aqui que precisa ser resolvido e eu preciso aguardar ele ser resolvido, então
  //?ele registrou no event loop a função assincrona por conta do await
  //?então ele nao continuou executando, ele retornou para o nosso metodo main para o totalAlunos.then
  //?respondendo ja com um future incompleto, por isso que no terminal deu "Instance of 'Future<int>'"(é um cara que ainda seŕa executado)
  
  //?Passo 3 -> terminou de executar o main, o que ele vai falar
  //?event loop to livre, não tenho mais nada para executar então executa o proximo cara,
  //?o proximo cara é o "final buscandoTotalDeAlunos = await Future.value(887);"
  //?então ele foi e executou isso, após isso ele falo eu ja executei e esta resolvido o buscarTotalDeAlunos e ja tenho o valor
  //?então ele faz oq, da continuidade ao metodo "buscarTotalALunos()", que o proximo passo é
  //?"print("3º -> esse ponto do metodo é depois do await");"
  //?e depois disso retornou o "buscandoTotalDeAlunos" e depois ele volta e executa o callback o .then
  //?com isso foi resolvido o future incompleto o "2º"

  final totalAlunos = buscarTotalAlunos();
  totalAlunos.then((totalAlunosValue) => print("4º -> o total de alunos é $totalAlunosValue"));
  print("2º -> Resposta $totalAlunos");
}

Future<int> buscarTotalAlunos() async {
  print("1º -> Esse ponto do metodo é sincrono");
  //await funciona como se fosse um .then
  final buscandoTotalDeAlunos = await Future.value(887);
  print("3º -> esse ponto do metodo é depois do await");
  return buscandoTotalDeAlunos;
}

//!Considerações -> quando eu coloco um await ele não executa o que esta depois dele
//!ele aguarda a execução do await e pra quem chamou ele, ele vai responder sem return sem nada, um future incompleto (instance)

