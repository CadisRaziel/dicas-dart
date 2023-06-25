void main(){

  final nome = metodoAssincronoSemAsync();
  nome.then((print)).catchError(print);
}

Future<String> metodoAssincronoSemAsync(){
  return Future.value("vitor");
}


//!async -> colocando essa palavra eu estou dizendo pro dart que em algum momento tera um processo assincrono
//!isso faz com que o dart cria uma estrutura em volta desse metodo para por dentro de um future
//*SEMPRE TIPE SEU FUTURE mesmo se for void, se nao voce corre o risco de receber a msg "Instance of "Future<dynamic>""
//*Tipando o compilador entende e nos da todos os metodos para disponiveis para essa função
Future<String> metodoAssincrono() async {
  return 'Vitor';
}