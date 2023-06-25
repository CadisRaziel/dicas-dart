String? nomeCompleto;
void main(){
  var nomeCompletoLocal = nomeCompleto;
  if(nomeCompletoLocal != null){
    print(nomeCompletoLocal.toUpperCase());
  } else{
    print('Nome não preenchido');
  }

  //* ou

  var nomeCompletoLocal2 = nomeCompleto ?? 'Nome não Preenchido';
  print(nomeCompletoLocal2.toUpperCase());

//----------------------------------------------------------------------------------------------------------------------------------------------

  //*Utilizando o conditional property operation -> '?' (repare que ele da o mesmo resultado com os itens acima, porém de uma forma mais facil)
  //? colocando o '?' ele vai realizar uma checagem, se ele for diferente de nulo, executa o toLowerCase() se for nulo não faz nada
  print(nomeCompleto?.toLowerCase());

  //*Podemos junta-la com o null aware operator
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');

  //! ELE É TOTALMENTE DIFERENTE DO OPERADOR '!'
  //! PROCURE UTILIZAR ? EM VERIFICAÇÕES

}