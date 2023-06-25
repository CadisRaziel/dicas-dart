// ignore_for_file: camel_case_types

void main(){
  //*Funções arrow => (ela não precisa do corpo{})
  print(somaInteiros(5, 5));  


  //*Funções anonimas (não tem nome)
  (){ //() -> o () aqui em cima é aonde eu coloco os parametros
    print('Função anonima');
  }(); //-> () aqui é para invocar a função anonima tipo um 'somaInteiros()', por ela ser anonima, colocando apenas o () no final ja invoca ela

  //*Posso atribuir uma função anonima a uma variavel (o famoso clousure)
  var funcaoQualquer = (){};
  //?runtimeType -> para ver o tipo que vai retornar
  print(funcaoQualquer.runtimeType);


  print(funcaoQualquer2());


  //* recebendoOutraFuncaoParametro -> será executada primeiro, logo em seguida a outra função anonima é executada
  recebendoOutraFuncaoParametro((nome) {
    if(nome.isEmpty){
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });



  //*Typedef
  recebendoTypedef((nome) {
    if(nome.isEmpty){
      print('Nome vazio');
    } else (
      print(nome)
    );
  });

  funy((nome, {q, x, y}) { });

}

var funcaoQualquer2 = (){
  print('Função anonima');
  return 2000;
};


//*Em uma função arrow eu não preciso colocar a expressão 'return'
//TODO utilizado para funções pequenas !! (funções de return de 1 linha !)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

//*Função recebendo outra função como parametro
void recebendoOutraFuncaoParametro(Function(String nome) aquiEuColocoONomeDaFunction){
  var calculo = 1+1;
  var nomeCompleto = 'Vitor Brussolo Zerbato';
  print('finalizando a primeira função $calculo');
  print('Iniciando a função anonima');
  aquiEuColocoONomeDaFunction(nomeCompleto);
}


//*Criando um typedef (cria um apelido pra uma função 'Basicamente da um nome a uma funcao anonima', porém e bom caso eu precise reaproveitar a funcao anonima)
typedef funcaoQueRecebeNome = void Function(String nome);

void recebendoTypedef(funcaoQueRecebeNome funcaoTypedef){
var calculo = 1+1;
  var nomeCompleto = 'VitorBz';
  print('finalizando a primeira função $calculo');
  print('Iniciando a função anonima');
  funcaoTypedef(nomeCompleto);
}


//*AO invez de fazer assim
void funx(String nome, {String? x, String? y, int? q}){

}

//*Posso fazer assim
typedef funcaoQueRecebeNomeComplexa = void Function(String nome, {String? x, String? y, int? q});
void funy(funcaoQueRecebeNomeComplexa funcComplexa){

}