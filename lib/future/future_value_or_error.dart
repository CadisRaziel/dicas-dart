void main(){
  //retornando valores ou erros


  print("INICIALIZANDO MAIN");

  Future(() => print); // Incompleto vai ser executado ainda para ver value and error


  //Esses dois ja estão completos! o event loop não precisa fazer nada
  Future.value(); // sucesso
  Future.error((error) => print); //error

  

    print("FINALIZANDO MAIN");
}

//poderiamos utilizar no retorno de funções
Future<String> func1(){
  //!não posso retornar uma string assim pois a string abaixo não é do tipo futuro
  //!geralmente para resolver isso colocariamos um async await !!
  // return "Qualquer falor de sucesso";

  //? ou seja o async await é basicamente isso abaixo
  //? colocamos o Future.value para retornar um sucesso, ou seja agora podemos retornar a string
  return Future.value("Retorando a função");

  //*Geralmente usamos mais o async await para deixar o dart resolver, ou por preguiça.
}