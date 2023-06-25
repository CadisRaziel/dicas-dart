abstract class Animal {
  String? tamanho;
  final int idade;

  Animal({
    this.tamanho,
    required this.idade,
  });

  //*Repare nesse metodo, quero deixar apenas a carcaça dele criada aqui, porém o conteudo quem vai colocar é quem extender dessa classe
  //*Para isso preciso usar o 'abstract' antes do 'class'
  int calcularIdadeHumana();
}
