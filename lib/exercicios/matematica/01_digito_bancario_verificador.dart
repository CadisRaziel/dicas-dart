//! Todo problema matematico tem uma entrada
//! todo problema matematico tem uma manipulação da entrada (Aqui é onde esta a lógica !)
//! todo problema matematico tem uma saida

//? O problema ->
/*
Cada numero que identifica uma agencia bancaria tem quatro digitos: N^1, N^2, N^3, N^4 mais um digito verificador N^5
N^1 N^2 N^3 N^4 - N^5
Todos esses digitos são numeros naturais pertencentes ao conjunto {0,1,2,3,4,5,6,7,8,9}.
Para a determinação de N^5, primeiramente multiplica-se ORDENADAMENTE os quatros primeiros digitos do numero da agencia por 5,4,3 e 2.
Respectivamente, somam-se os resultados e obtém-se S = 5N^1, 4N^2, 3N^3, 2N^4.
Posteriormente, encontra-se o resto da divisão de S por 11, denotando por R esse resto.
Dessa forma, N^5 é a diferença de 11 - R.
Considere o número de uma agencia bancaria cujos quatros primeiros digitos são 0100.
Qual é o digito verificador N^5 dessa agencia bancaria ?

A) 0
B) 6
C) 7
D) 8
E) 9
 */

//* Objetivo -> Realizar um código para resolução desse problema.
import 'dart:io';

void main() {
  // * Preciso de 4 entradas de numeros inteiros.
  print("Digite o primeiro digito:");
  int a = int.parse(stdin.readLineSync() ?? '');
  print("Digite o segundo digito:");
  int b = int.parse(stdin.readLineSync() ?? '');
  print("Digite o terceiro digito:");
  int c = int.parse(stdin.readLineSync() ?? '');
  print("Digite o quarto digito:");
  int d = int.parse(stdin.readLineSync() ?? '');

  // * Preciso multiplicar os 4 primeiros digitos por 5,4,3,2 respectivamente. 
  a *= 5;
  b *= 4;
  c *= 3;
  d *= 2;

  // * Preciso somar o resultado das multiplicações.
  int sum = a + b + c + d;

  // * Preciso encontrar o resto da divisão por 11. (lembrando a ordem dos numeros importa, se eu quero achar o resto de sum, então é sum % 11 e não 11 % sum !!)
  int r = sum % 11;

  // * Preciso encontrar o digito verificador N^5 que é a diferença de 11 - R.
  int result = 11 - r;

  // * Preciso mostrar o resultado.
  print("A diferença de 11 - R é: $result");

  // * Como eu ja sei a alternativa correta por se tratar de uma pergunta de prova de multiple escolha, eu posso fazer um switch case para mostrar a alternativa correta.
  switch (result) {
    case 0:
      return print("A) 0 (INCORRETA)");      
    case 6:
      return print("B) 6 (INCORRETA)");      
    case 7:
      return print("C) 7 (CORRETA)");      
    case 8:
      return print("D) 8 (INCORRETA)");      
    case 9:
      return print("E) 9 (INCORRETA)");      
    default:
      return print("Ocorreu um erro");
  }
}
