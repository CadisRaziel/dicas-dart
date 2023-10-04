void main(){
  List<int> numeros = pertence( [-1, 0, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  // print(numeros);
}

List<int> pertence(List<int> pertence){
  for (var i = 0; i < pertence.length; i++) {
    if (pertence[i].isNegative) {
      print("Não pertence -> ${pertence[i]}");
    } else {
      print("pertence -> ${pertence[i]}");
    }
  }
  return pertence;
}