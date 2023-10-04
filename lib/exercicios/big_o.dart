void main() {
  int sum = sum_char_code("abcdefghijklmnopqrstuvwxyz");
  print(sum);

  int sums = sum_char_codes("abcdefghijklmnopqrstuvwxyz");
  print(sums);
}

int sum_char_code(String n) {
  int sum = 0;
  for (var i = 0; i < n.length; i++) {
    sum += n.codeUnitAt(i);
  }

  return sum;
}


int sum_char_codes(String n) {
  int sum = 0;
  for (var i = 0; i < n.length; i++) {
    sum += n.codeUnitAt(i);
  }
  for (var i = 0; i < n.length; i++) {
    sum += n.codeUnitAt(i);
  }

  return sum;
}


