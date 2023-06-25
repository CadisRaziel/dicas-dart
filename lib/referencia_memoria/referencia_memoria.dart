
void main(){
  var lista = ['Vitor'];
  print(lista);
  funcao(lista);
  print(lista);


  //*variaveis dentro de função ganha um novo numero de memoria(ou seja são diferentes)
  String nome = 'Vitorbz';
  print(nome);
  print(nome.hashCode);
  funcao2(nome);
  print(nome);
  print(nome.hashCode);


  var list = ['Batman2'];
  print(list);
  addList(list);
  print(list);
}

//TODO quando passamos uma lista pra uma função ela será igual a lista que recebemos em uma variavel
//TODO tera o mesmo numero de memoria
//TODO ou seja imageina que estamos usando a lista em mais de um lugar, a memoria dela é a mesma em todos lugares, e fizemos uma função
//TODO na função vamos adicionar algo ou alterar algo enfim.... se não criarmos uma nova lista, a lista original sera alterada EM TODOS LUGARES !!
void funcao(List<String> nome){
  //*Não altere uma lista dentro de uma função !!!!
  //*Porém fazer varredura, coisas que não altera ela ai é tranquilo
  nome.add('BZ');
}


void funcao2(String nome){
  nome += 'Academia do flutter';
  print(nome);
  print(nome.hashCode);
}


//? O correto a se fazer em função com listas
List<String> addList(List<String> nomees) {
  var novoNomes = [...nomees];

  novoNomes.add('Batman');
  return novoNomes;
}