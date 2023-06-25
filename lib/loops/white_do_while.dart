
void main(){
  //*Diferente do for convencional que tem: incio, condição e incremento


  //* o While ele só tem a condição, então ele executa somente até a condição que voce definir FOR TRUE(bom para paginas de livros)
  var numero = 0;
  print('while convencional');
  while(numero <= 10){
    print(numero);
    numero++;
  }

  //*Do while
  print('do While');
  var indice = 0;
  //? Aqui o do while não sera executado, pois a condição é false o indicie não é maior que 0
  while(indice > 0){
    print(numero); 
    indice++;
  } do {
    //*Ou seja ele vai rodar o primeiro while vai dar false, porém ele vai chegar aqui no 'do'
    //*aqui no 'do' nõs incrementamos o indice e colocamos uma condição logo abaixo
    //*essa condição sera true pois o indice sera maior que 0 e ficará em um loop infinito pois não temos break
    print(indice);
    indice++;
  } while (indice > 0);

  //? a caracteristica do do while é executar pelo menos 1 vez independente do resultado


}