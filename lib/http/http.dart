import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> main() async {
  // await buscarCep();
  // await buscarPost();
  // await buscarCepComErro();
  // await salvarPost();
  await atualizarPost();
}

//aqui a api retorna uma lista
Future<void> buscarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var responseData = jsonDecode(response.body);
    //Se a api retorna uma lista noa podemos fazer um map como abaixo, devemos fazer um foreach ou um for
    if (responseData is List) {
      responseData.forEach((element) {
        print(element['id']);
      });
    }
  }
}

//Aqui a api retorna um map normal
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

//aqui vamos simular um erro de um cep que não existe
Future<void> buscarCepComErro() async {
  var url = 'https://viacep.com.br/ws/9999999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    //Se retornar 200, eu quero pegar os dados da aplicação
    // Map<String, dynamic> objetoRetorno = jsonDecode(response.body);
    var objetoRetorno = jsonDecode(response.body);
    print(objetoRetorno['cep']);
    print(objetoRetorno['logradouro']);
    print(objetoRetorno['bairro']);
  } else {
    //? Tratando erro !!
    print('Ocorreu um erro ${response.reasonPhrase} ${response.statusCode}');
  }
}

//metodo post, criando um novo dado
Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  //*convertendo uma string pra um tipo json
  var mapRequest = {
    'title': 'Post novo',
    'body': 'Descrição post',
    'userId': 1
  };

  //*O post nos precisamos por um 'body'
  var response = await http.post(Uri.parse(url), body: jsonEncode(mapRequest));

  print(response.statusCode);
  print(response.body);
}

//metodo put para atualizar dado
Future<void> atualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';

  //*convertendo uma string pra um tipo json
  var mapRequest = {
    'id': 1,
    'title': 'Post alterado',
    'body': 'Descrição post',
    'userId': 1
  };

  //*O post nos precisamos por um 'body'
  var response = await http.put(Uri.parse(url), body: jsonEncode(mapRequest),
      //headers -> mapa de string, string
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      });

  print(response.statusCode);
  print(response.body);
}

//! O http o corpo da reposta dele vem sempre como uma string, por isso devemos converter ela na mão com 'jsonDecode'4
//! Essa conversão pode retornar uma lista ou um map


//Para que o proprio dart faça a checagem de qual status sera retornado, aqui é um exemplo de status 200
//? response.statusCode >= 200 && response.statusCode < 300
