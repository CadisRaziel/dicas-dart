import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  buscarCep();
}

Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/01001000/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode >= 200 && response.statusCode < 300) {
    //Se retornar 200, eu quero pegar os dados da aplicação
    // Map<String, dynamic> objetoRetorno = jsonDecode(response.body);
    var objetoRetorno = jsonDecode(response.body);
    print(objetoRetorno['cep']);
    print(objetoRetorno['logradouro']);
    print(objetoRetorno['bairro']);
  }
}
