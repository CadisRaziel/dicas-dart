void main(){
  String value = smash(["hello", "world"]);
  print(value);
}

String smash(List<String> words) {
  return words.join(' ');
}