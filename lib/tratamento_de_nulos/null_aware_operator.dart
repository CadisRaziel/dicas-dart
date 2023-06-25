String? nome;

void main(){
  //*Promovemos a variavel para não nula!
  var nomeLocal = nome;
  if(nomeLocal == null){
    nomeLocal = 'Vitor';
  }else {
    nomeLocal = '';
  }
  print(nomeLocal);

  //? Porém podemos utilizar o null Aware operator que deixa tudo mais simples que fazer um if else
  //* ?? -> null aware operator

  var nomeSobrenome = 'Brussolo Zerbato';
  //*Se nome for nullo ele coloca 'Vitor', se não for nulo ele coloca o nome da variavel
  var nomeCompleto = (nome ?? 'Vitor') + nomeSobrenome;

  String? nomeCompleto2;
  print(nomeCompleto2 ?? 'Olá');
}