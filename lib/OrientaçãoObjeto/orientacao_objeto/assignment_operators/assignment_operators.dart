String? nome;
void main() {
  // = -= /= %= >>= ^=
  // += *= ~/= <<= &= |=

  var numero = 1;
  print(numero);
  numero += 2;
  //? ao invez de fazer assim \/ com os assignment operators podemos fazer assim /\
  // numero = numero + 2;
  print(numero);

  var numero2 = 2.0;
  numero2 /= 1.0;
  print(numero2);

  //? o mais utilizado e importante é esse
  print(nome); //aqui ele vai entregar um nulo
  //*fariamos uma checagem tradicional
  // if (nome == null) {
  //   nome = 'vitor';
  // }
  // print(nome);

  //*Porém podemos usar o assignment operators para deixar mais facil
  //* esse operador ??= faz exatamente a mesma coisa que o if acima !!
  //*aqui esta fazendo o seguinte, se a variavel vier nula ela atribui o 'vitor2' se ela nao for nula, ela atribui o valor dela normal
  nome ??= 'vitor2';
  print(nome);
}
