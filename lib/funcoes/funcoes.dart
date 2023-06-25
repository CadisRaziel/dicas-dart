
//*Funcoes 
//* void -> tipo do retorno
//* main -> nome da funcao
//* () -> parametros da função se ela vai ter ou não
//* {} -> corpo da função
void main(){
  final valorCalculado = somaInteiros(5, 5);
  print(valorCalculado);
}


//*funçoes de niveis superirores (funcão dentro de um arquivo, fora de uma classe)
int somaInteiros(int numero1, int numero2){
  print('Executando a soma de inteiros ($numero1 + $numero2)');
  return numero1 + numero2;
}