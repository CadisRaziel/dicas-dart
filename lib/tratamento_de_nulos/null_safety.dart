//------------------------------------------VARIAVEL DE NIVEL SUPERIOR--------------------------------------------------------
//*VARIAVEL DE NIVEL SUPERIOR (FICA FORA DE UMA FUNCTION OU CLASSE)
//*Ou ela deve ser inicializada ou deve ser nula '?'
//? Fora do escopo de uma função essas variaveis não podem ser promovidas
String? nomeCompletoSuperior;
String nomeCompletoSuperior2 = '';
//----------------------------------------------------------------------------------------------------------------------------

void main() {
//------------------------------------------CHECAR SE A VARIAVEL È NULA--------------------------------------------------------
  //*Imagine que vamos pegar dados de algo externo e não sabemos se esta nullo ou não
  //*Para isso precisamos sempre verificar se esta nulo ou não
  //? Forma correta de realizar as nullSafety, isso evita o '!'
  String? nomeCompleto = null;
  if (nomeCompleto != null) {
    print(nomeCompleto.length);
  }
//----------------------------------------------------------------------------------------------------------------------------



//-------------------------------OPERADOR QUE INFORMA QUE A VARIAVEL NÃO É NULA------------------------------------------------
  //*Podemos garantir para o dart que a variavel não é nula '!'
  //? Tome cuidado pois voce esta garantindo que a variavel não será nula !
  //! evite a utilização desse operador
  String? nomeCompleto2;
  print(nomeCompleto2!.length);
//----------------------------------------------------------------------------------------------------------------------------



//---------------------------------PROMOÇÃO DE TIPO DE NULA PARA NÃO NULA------------------------------------------------------
  //*Promovendo uma varaivel de nula para não-nula dentro do escopo da função
  //? reatribuindo ela com valor ela é promovida a nao nula !!
  //*Acontece somente para as variaveis locais !!!
  String? naoNula;
  naoNula = '';
//----------------------------------------------------------------------------------------------------------------------------



//------------------------------------------ESCOPO DE INICIALIZAÇÃO-----------------------------------------------------------
  //*Tudo que é criado dentro de uma função é uma VARIAVEL LOCAL
  //*Ou seja ela não precisa ser inicializada ou nula!
  String nome;
  //*Porém ela precisa ser inicializada antes de usa-la, ou seja, devemos reatribui-la antes de colcoar no código !
//----------------------------------------------------------------------------------------------------------------------------
}
