void main() {
  //*Operadores lógicos

  final sexo = "M";
  final idade = 18;

  //*Fariamos assim (repare como ficaria confuso)
  if (sexo == 'M') {
    if (idade >= 18) {
      print('pode entrar');
    } else {
      print('não pode entrar');
    }
  } else {
    print('não pode entrar');
  }

  //*Utilizando &&
  //? &&(e) -> AS DUAS condições precisam ser veradeiras: True && True (para poder dar a condição verdadeira)
  if (sexo == 'M' && idade >= 18) {
    print('pode entrar');
  } else {
    print('não pode entrar');
  }

  //*Utilizando ||
  //? ||(ou) -> UMA DAS condições precisam ser verdadeira para a condição ser verdadeira:
  //? True || False 
  //? True || True 
  //? False || true
  if (sexo == 'M' || idade >= 18) {
    print('pode entrar');
  } else {
    print('não pode entrar');
  }

//*Utilizando !
//? Inversão de um valor, ou seja true fica false e vice versa
//? colocando o ! como abaixo, eu vou querer saber quem NÂO é maior de 18
//? utilizado para saber se não é alguma coisa (se não é masculino, se não é maior de 18, se não é azul etc...)
if(!(idade >= 18)){

}

}
