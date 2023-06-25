//* Interface são os 'abstract'
abstract class ICarroClasseAbstrada {
  //*Como estamos em uma interface, não faz sentido nos inicializarmos as variaveis
  //*Quem tem que inicializar são as classes que vão herdar de 'ICarroClasseAbstrada'
  //?Para não precisarmos inicializar colocamos um 'abstract' antes da tipagem da variavel
  //?Com isso o dart entende que é uma interface e que as classes que vão herdar esse interface é quem tem que inicializar a variavel !!
  //?abstract seria tipo um required
  abstract int portas;
  abstract int rodas;
  abstract double motor;

  //*Nas interfaces eu nao preciso criar um corpo para uma função.
  //*Eu apenas posso criar o esqueleto dela
  //*O Conteudo quem vai colocar são as classes que vão herdar de 'ICarroClasseAbstrada'
  //!Lemnre-se o que define uma interface são os metodos criados porém sem conteudo, como o debaixo
  int velocidadeMaxima();
}

//*Aqui temos uma classe abstract normal, repare que o metodo tem um corpo ja definido{}
abstract class CarroClasseAbstradaSomente {
  void velocidadeMaxima() {}
}
