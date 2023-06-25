void main(){
  //*Paramentros simples obrigatorios por default ()
  print('A soma de 10 + 10 é = ${somaInteiros(10,10)}');


  //*Parametros nomeados
  print('A soma de 20.5 + 20.5 é = ${somaDouble(numero1: 20.5, numero2: 20.5)}');

  //*Parametros nomeados obritatorios
  print('A soma de 22.5 + 22.5 é = ${somaDoubleObrigarotios(numero1: 22.5, numero2: 22.5)}');


  //*Parametros nomeados obritatorios com um parametro que aceita nulo
  print('A soma de null + 22.5 é = ${somaDoubleObrigarotios2(numero1: null, numero2: 22.5)}');


  //*Parametros nomeados obritatorios com valor default
  print('A soma de numero1 default + numero2 default é = ${somaDoubleObrigarotiosDefault()}');
  print('A soma de numero1 default + numero2 default é = ${somaDoubleObrigarotiosDefault(numero1: 1)}');

  //*Parametros opcionais (repare que nao coloco o nome dos parametros)
  print('A soma de numero1 opcional + numero2 opcional é = ${somaIntOpcional()}');
  print('A soma de numero1 opcional + numero2 opcional é = ${somaIntOpcional(1)}');
  print('A soma de numero1 opcional + numero2 opcional é = ${somaIntOpcional(1,2)}');

  //*Mistura de paramentros normais com nomeados
  todosOsParametros(1, nome: 'Vitor', idade: 28);
  todosOsParametros2(1, 'Oriovaldo', 40);


}

int somaInteiros(int numero1, int numero2){
  return numero1 + numero2;
}

//*Por default eles aceitam nulo
double somaDouble({double? numero1, double? numero2}){

  //*promovendo eles para não nulos
  if(numero1 != null && numero2 != null){
  return numero1 + numero2;
  }
  return 0.0;
}


//*Parametros obrigatorios
double somaDoubleObrigarotios({required double numero1, required double numero2}){
  return numero1 + numero2;
  //*Não preciso promover para nulos
}


//*Parametros obrigatorios com nullo
double somaDoubleObrigarotios2({required double? numero1, required double numero2}){
  //*Preciso por um valor default no numero que aceita nulo
  //*OU seja se nao tiver valor ele atribui o 0, se tiver valor ele atribui o valor colocado
  numero1 ??= 0;
  return numero1 + numero2;
  //*Não preciso promover para nulos
}

//*Parametros defaults (se nao vier valor ele atribui o 0, se vir valor ele atribui o valor que vier)
double somaDoubleObrigarotiosDefault({double numero1 = 0, double numero2 = 0}){
  return numero1 + numero2;
  //*Não preciso promover para nulos
}

//*Parametros opcionais e não nomeados
int somaIntOpcional([int numero1 = 0, int numero2 = 0]){
  return numero1 + numero2;
}


//TODO ao misturar lembre-se os nomeados tem que ser os ultimos, eles não podem estar no inicio !!
//*Misturando todos os paramentros
void todosOsParametros(int numero, {required String nome, required int idade}){
  
}
//*Misturando todos os paramentros
void todosOsParametros2(int numero, [String? pai, int? idade]){
  
}