void main() {
  var numeros = List.generate(10, (numeros) => numeros);

  //*print -> é uma função de elementos
  //*foreach -> é uma função de elementos
  //? ou seja, quanto passamos o print diretamente, ele diz para o foreach realizar o print
  numeros.forEach(nossaPrint);

  //*array bidimensional
  var lista = [
    [1, 2, 3, 4],
    [5, 6, 7, 8]
  ];

  //? para pegar o valor 4 veja como fazemos
  print(lista[0][3]);

  //?Podemos juntar as lista utilizando o Expand
  //*Expand -> para juntar as duas lista
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  //*Posso juntar duas listas assim tambem
  var listaNova2 = [...lista[0], ...lista[1]];
  print(listaNova2);

  //*Any -> verificação do itarable para buscar algo
  final listaBusca = ['Batman', 'Superman', 'Flash'];
  if (listaBusca.any((nome) => nome == 'Batman')) {
    print('Tem batman');
  } else {
    print('Não encontramos o nome');
  }

  //*Every -> a função tem que ser verdadeira para todos os itens da lista, ou seja se todos os itens não tiver F no nome, ele da false
  final listaBusca2 = ['Batman', 'Superman', 'Flash'];
  if (listaBusca2.every((nome) => nome.contains('F'))) {
    print('Todos os nomes tem a letra F');
  } else {
    print('Nem todos os nomes tem a letra F');
  }

  //*Sort -> cria listas odernada (coloca do menor para o maior, ordem alfabetica)
  final listaOrdenacao = [
    1,
    2,
    3,
    30532532,
    23532,
    2134236,
    6475680,
    900000000
  ];
  listaOrdenacao.sort();
  print(listaOrdenacao);

  final listaNomeOrdenacao = ['Batman', 'Superman', 'Flash'];
  listaNomeOrdenacao.sort();
  print(listaNomeOrdenacao);

  var listaPaciente = [
    'Batman|37',
    'Superman|105',
    'Lanterna Verde|40',
    'Flash|28'
  ];
  //*Para ordenar a idade e o nome (o sort recebe uma função anonima)
  var novaListaDePacientes = [...listaPaciente];
  novaListaDePacientes.sort((paciente1, paciente2) {
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //?se a idade do paciente1 for maior que a idade do paciente2 ele vai ser atribuido 1 e vai para o fim da lista
    if (idadePaciente1 > idadePaciente2) {
      return 1;
      //? se a idade dos pacientes for igual ele não vai jogar a ultima no final da fila, vai manter no indice dela
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPaciente);
  //TODO cuidado, diferente dos outros exemplos que fiz nesse arquivo, APENAS O SORT não retorna algo
  //TODO ele faz as alterações diretamente na lista
  //? para nao bagunçar a lista original podemos fazer isso
  print(
      'A nova lista de pacientes ordenada é: $novaListaDePacientes, repare que ela vai vir ordenada e a lista sem o sort vai vir desordenada');

  //*Sort com CompareTO
  var listaPacientes2 = [
    'Batman|37',
    'Superman|105',
    'Lanterna Verde|40',
    'Flash|28'
  ];
  
  listaPacientes2.sort((paciente1, paciente2) {
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //?CompareTO -> o dart que fara a logica de if else igual da lista acima !!!
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);

  //*Lista para a função criada !!!
  //*Dentro dessa função insereimos a mesma logica que a listaPaciente2
  var listaPacientes3 = [
    'Batman|37',
    'Superman|105',
    'Lanterna Verde|40',
    'Flash|28'
  ];
  print('Exebindo o print e função com a listaPacientes3 antes');
  print(listaPacientes3);
  funcaoQualquer(listaPacientes3);
  print('Exebindo o print e função com a listaPacientes3 depois');
  print(listaPacientes3);
  //? Repare que antes de entrar na função ele deixou a lista desordenada, depois que entro na função organizou porque?
  //? quando enviamos uma lista para uma função, não esta criando uma copia dela, é exatamente a mesma lista
  //? ou seja se fizermos qualquer coisa nessa lista dentro da função automaticamente estamos alterando a lista original È MUITO PERIGOSO !!!
}

//*Fazendo nosso proprio print
void nossaPrint(Object valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  //*Para evitar que a função altere a lista original, criaremos uma nova lista SEMPRE
  final localPacientes = [...pacientes];

  localPacientes.sort((paciente1, paciente2) {
    var pacienteDados1 = paciente1.split('|');
    var pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    //?CompareTO -> o dart que fara a logica de if else igual da lista acima !!!
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
