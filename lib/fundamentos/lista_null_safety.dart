void main(){
  //*Não aceita nulos
  var nomes = <String>[];

  //*Aceita a LISTA nula (precisamos tipar com List !!)
  List<String>? nomesNuloes;

  //*Valores internos nuloes Nulos
  var nomesInternosNulos = <String?>[null];

  //*Lista e valores internos nuloes
  List<String?>? aceitaTudoNulo;

  //? Quando a List pode ser numa, eu preciso colocar como List e não var
}