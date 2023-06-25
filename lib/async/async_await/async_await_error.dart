Future<void> main() async {
  print("inicio");
  final id = await buscarId();

  //?Formas de tratar um erro em um await

  //!1º -> catchError
  final nome = await buscarNome(id).catchError((error) {
    print("aconteceu um problema");
    return "outro nome";
    //!o return no catch error serve pra dar um resultado secundario
    //!tipo se fosse um ternario nome ?? return "outro nome"
  });

  //!2º -> try catch
  //!mesmo assim eu posso por um catchError ali pra retornar um outro valor se eu qusier
  try {
    final id1 = await buscarId();
    final nome1 = await buscarNome(id1);
    print("o nome é $nome1");
    print("fim try catch");
  } catch (e) {
    print("aconteceu um erro");
  }

  print("O nome é $nome");
  print("fim");
}

Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async {
  throw Exception();
  //return "vitor ($id)";
}
