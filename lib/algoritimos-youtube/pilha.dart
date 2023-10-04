import 'package:collection/collection.dart';


///Desafio era criar esses metodos para uma pilha em dart
//Create *
//Destroy *
//isFull *
//isEmpty *
//Push *
//Pop *
//top *



void main() {
  var x = create([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  print("CREATE -> $x");

  // print("===========================");

  // destroy();

  print("===========================");

  isFull();

  print("===========================");

  isEmptyList();

  print("===========================");

  top();

  print("===========================");

  // push(5);
  push();

  print("===========================");

  // var y = pop();
  var y = pop(5);
  print("Add last top position (push) $y");
}
// List<int> adicionarPilha = List.generate(10, (index) => index);
// List<int> listIsFull = List.generate(10, (index) => index);

///Criando minhas listas
List<int> adicionarPilha = [];
List<int> listIsFull = [];

///DeepCollectionEquality -> para comparar duas listas atraves do hashCode (collection dart)
Function deepEq = const DeepCollectionEquality().equals;

///Criando meu metodo de pilha
List<int> create(List<int> pilha) {
  for (int i = 0; i < pilha.length; i++) {
    adicionarPilha.add(pilha[i]);
    listIsFull.add(pilha[i]);
  }
  return adicionarPilha;
}

///Criando meu metodo para destruir a pilha
// void destroy() {
//   adicionarPilha.clear();
//   print("DESTROY -> $adicionarPilha");
// }

///Criando meu metodo para ver se minha pilha esta cheia
void isFull() {
  //? o metodo deepEq eu poderia subistituir comparando assim adicionarPilha.lenght == listIsFull.lenght
  if (deepEq(adicionarPilha, listIsFull)) {
    print("a lista esta cheia |METHOD isFull|");
  } else {
    print("a lista não esta cheia |METHOD isFull|");
  }
}

///Criando meu metodo para ver se minha pilha esta vazia
void isEmptyList() {
  if (adicionarPilha.isEmpty) {
    print("a lista esta vazia |METHOD isEmptyList|");
  } else {
    print("a lista esta cheia |METHOD isEmptyList|");
  }
}

///Criando metodo para ver quem esta no topo da lista
void top() {
  var x = adicionarPilha.last;
  print("The top element -> $x");
}

///Criando metodo para tirar o primeiro elemento da pilha
void push() {
  print("Pilha antes do push ->$adicionarPilha");
  if (adicionarPilha.isNotEmpty) {
    var y = adicionarPilha.removeLast();
    print("Remove last top position (push) $y");
    print("Pilha depois do push ->$adicionarPilha");
  }
}

///Metodo do professor (prefiro o meu)
// int push(int add) {
//   print("Antes de push: $adicionarPilha");
//   if (adicionarPilha.isNotEmpty) {
//     var removedElement = adicionarPilha.removeLast();
//     adicionarPilha.add(add);
//     print("Depois de push: $adicionarPilha");
//     return removedElement;
//   }
//   return -1; // Retorne um valor apropriado para indicar erro se a pilha estiver vazia.
// }

///Criando metodo para implementar um elemento no topo da pilha
int pop(int add) {
  print("Pilha antes do pop ->$adicionarPilha");
  if (adicionarPilha.isNotEmpty) {
    adicionarPilha.add(add);
    print("Pilha depois do pop ->$adicionarPilha");
  }
  return add;
}

///Metodo do professor (prefiro o meu)
// int pop() {
//   if (adicionarPilha.isNotEmpty) {
//     var removedElement = adicionarPilha.removeLast();
//     return removedElement;
//   }
//   return -1; // Retorne um valor apropriado para indicar erro se a pilha estiver vazia.
// }