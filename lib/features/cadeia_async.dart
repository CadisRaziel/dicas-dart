void main(){
  //callback hell
  func1()
  .then((value) {
    func2(value)
    .then((value) => print("1 => $value"));
  });
  

  //chamada em cadeia
  func1()
  .then((value) => func2(value))
  .then((value) => print("2 => $value"));
  //then/catcherror -> retorna um novo futuro

}
Future<String> func1(){
  return Future.delayed(Duration(seconds: 1), () => "parametro 1");
}

Future<String> func2(String parametro){
  //future instantaneo
  return Future.value('parametro recebido e processado: $parametro');
}

