//!usando callback padrão (isso que nem tem tratamento de erro)
Future<int> buscarId() async => 80;
Future<String> buscarNome(int id) async => "Vitor($id)";
Future<String> buscarNomeUsuario() {
  return buscarId().then((id) {
    return buscarNome(id).then((nome) {
      return "usuario $nome";
    });
  });
}

//!usando Future async await
Future<String> buscarNomeUsuarioAwaut() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return "usuario $nome";
}

Future<void> main() async {
  print("inicio");

  //aqui vai printar
  //inicio
  //fim
  //return da função "buscarNomeUsuario"
  buscarNomeUsuario().then(print);

  //colocando o await aqui ele retorna de uma forma sincrona
  //ou seja vai printa 
  //"inicio"
  //o return da função "buscarNomeUsuarioAwaut"
  //fim
  final nome = await buscarNomeUsuarioAwaut();
  print(nome);
  print("fim");
}
