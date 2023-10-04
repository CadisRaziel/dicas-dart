void main() {
  List<int> um = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> par = [];
  List<int> impar = [];

  for (var i = 0; i < um.length; i++) {
    if (i % 2 == 0) {
      par.add(i);
    } else if (i % 2 != 0) {
      impar.add(i);
    }
  }
  print("Impar: $impar");
  print("Par: $par");

  print("//===========================================\\\\");


   List<int> tabuata = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
   for (var i = 0; i <= tabuata.length; i++) {
      int tabuata2 = i * 2;
      print("$i x 2 = $tabuata2");
   }


   print("//===========================================\\\\");
    List<int> itens = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    itens.sort((a,b) => b.compareTo(b)); 
    //se eu comparar com o "a" eu faço do maior pro menor
    //se eu comparar com o "b" eu faço do menor pro maior
    print(itens);
  
}
