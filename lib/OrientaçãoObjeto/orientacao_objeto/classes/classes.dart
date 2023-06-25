import 'package:academi_flutter/dart_fundamentos/orientacao_objeto/classes/camiseta.dart';

//Modificadores
//publico -> todos tem acesso
//privado -> define quem tem acesso

void main() {
  //*Quando eu instancio asism é para pegar os atributos de instancia
  var camisetaNike = Camiseta();
  var camisetaAddidas = Camiseta();

  //*Quando eu insancio assim é para pegar atributos de classe
  //*Metodo static
  //*Repare que não preciso instanciar a classe(se eu tirar os exemplos acima ele ainda funciona !)
  print(Camiseta.nome);
  print(Camiseta.recuperarNome());
  //? Obs: atributos static se eu reatribuir, ele altera em todo local que ele esta
  //Camiseta.nome = 'oi' -> Isso é possivel, porém todo local que tiver Camiseta.nome será alterado !
  //*Resumindo static é 1 unico codigo para todo sistema, exemplo uma conexão com database, faço um static pois ele nao muda !
  //!Sempre coloque static const !!!!
  //*Para evitar a reatribuição !

  camisetaNike.cor = 'Preta';
  camisetaNike.tamanho = 'P';
  camisetaNike.marca = 'Nike';

  print(''' 
  Camiseta:
    Marca: ${camisetaNike.marca},
    Cor: ${camisetaNike.cor},
    Tamanho: ${camisetaNike.tamanho}  
    Tipo de lavagem: ${camisetaNike.tipodeLavagem()}
    Gola: ${camisetaNike.gola = 'V'}
  ''');

  camisetaAddidas.cor = 'Branca';
  camisetaAddidas.marca = 'Adiddas';
  camisetaAddidas.tamanho = 'M';

  print(''' 
  Camiseta:
    Marca: ${camisetaAddidas.marca},
    Cor: ${camisetaAddidas.cor},
    Tamanho: ${camisetaAddidas.tamanho}  
    Tipo de lavagem: ${camisetaAddidas.tipodeLavagem()}
    Gola: ${camisetaAddidas.gola = 'normal'}
  ''');
}
