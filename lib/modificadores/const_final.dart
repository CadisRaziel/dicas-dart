void main(){
  //*final -> depois da variavel ser criada, o final não vai deixar ela ter o valor alterado caso tente reatribuir 
  //*const -> depois da variavel ser criada, o final não vai deixar ela ter o valor alterado caso tente reatribuir 
  //? o const precisa estar com os dados prontos em momento de 'compilação'(compilado para rodar)
  //? o final é compilada em tempo de 'execução', momento que o usuario utiliza

  //? ou seja se eu criar um final e fazer isso:
  var nomeCompleto1 = 'oi';
  final nomeCompleto = 'Vitor';
  final nomeCompleto2 = nomeCompleto;
  //? A hora que compila o código isso não vai dar erro, vai dar erro na hora que o USUARIO utilizar !


  //? se eu criar um const e fazer isso:
  const nomeCompleto3 = 'Vitor';
  const nomeCompleto4 = nomeCompleto;
  //? Repare que ele não deixa, pois ele esta em tempo de COMPILAÇÃO !!! 
  //? com isso ele ja identificou o erro antes do USUARIO !!
  //* uma const só pode receber valor de outra const


  //TODO Use final sempre que puder
  //TODO Use const em itens que você tem certeza absoluta que não sera alterado (em widgets por exemplo)

}