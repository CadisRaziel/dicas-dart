//*Operadores de teste e de tipo
//*is -> para saber se é um tipo ou não
//*is! -> nega a verificação, ou seja se for verdadeiro ele retorna como false
//*as -> ccast 


void main(){

  final numero = 0;
  print(numero is Object);
  print (numero is int);


  print(int is Object);   
  print(double is Object);   
  print(num is Object);   
  print(String is Object);   
  print(bool is Object);   

  //*quando eu coloco 'final' em uma instancia de classe, ele ja idenfitica os tipos de variaveis dentro dessa classe automaticamente
  final produto = Produto();
  print(produto.nome);

  //*Se eu colocar dynamic ele não identifica que tipo de variavel tem dentro da classe Produto
  //? caso eu tenha certeza do tipo de variavel que tem dentro dessa instancia Produto
  //? eu relizo o cast 'as', envolvo o 'produto2 as Produto' entre parenteses
  dynamic produto2 = Produto();
  print((produto2 as Produto).nome);


  //*Classes 'filhas' conseguem diretamente colocar atributos da classe 'pai' fazendo o cast assim:
  dynamic produto3 = Item();
  print((produto3 as Produto).nome);

}

class Produto {
  final nome = 'mouse';
}

class Item extends Produto{

}