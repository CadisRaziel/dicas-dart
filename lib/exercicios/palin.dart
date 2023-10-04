void main() {
  // print(solution('abba'));

  const string = 'abbs';
  final splitted = string.split(''); //[a, b, b, a]
  print(splitted);
  final splitted2 = splitted.reversed.join(); // sbba
  print(splitted2);
  final splitted3 = splitted2 ==
      string; // true or false (vai comparar pra ve se é igual a string original)
  print(splitted3);
}

bool solution(String inputString) {
  return inputString.split('').reversed.join() == inputString;
}
