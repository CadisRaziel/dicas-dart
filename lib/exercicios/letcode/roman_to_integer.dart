void main() {
  print(romanToInt("IV"));
}

int romanToInt(String s) {
  // Crie um mapa para associar os numerais romanos aos valores inteiros correspondentes.
  Map<String, int> romanToInteger = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int result = 0;
  int previousValue = 0;

 

  // Percorra a string de trás para a frente.
  //for de tras pra frente
  for (int i = s.length - 1; i >= 0; i--) {
    //concatena as strings (tipo somando XX ou IV)
    int currentValue = romanToInteger[s[i]]!;
    print("currentValue -> $currentValue");

    //se o valor atual(da direita) for maior que o previousValue(da esquerda) exemplo IV -> I(esquerda) V(direta) - currentValue(V) previousValue(I)
    if (currentValue >= previousValue) {
      //valor da direita
      result += currentValue;
    print("result += -> $result");
    } else {
      //valor da esquerda
      result -= currentValue;
    print("result -= -> $result");
    }

    previousValue = currentValue;    
  }

    print("resultado final -= -> $result");
  return result;
}
