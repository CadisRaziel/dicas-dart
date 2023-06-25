void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //*Como eu fiz
  final novaLista = [...pessoas];
  novaLista.toSet().forEach(print);

  //*Como o instrutor fez, ele ja aproveitou e colocou em uma variael para usar nos proximos exercicios
  final novaList2 = pessoas.toSet().map((e) => e.split('|')).toList();
  for (var pess in novaList2) {
    print(pess[0]);
  }

  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  final mapSexo = <String, List<String>>{};
  for (var pessoa in novaList2) {
    //*Precisamos primeiro transformar os sexos em minusculo para nao ter conflito de case sensitive
    final sexo = pessoa[2].toLowerCase();

    //*Depois criamos uma variavel e colocamos uma chave, se nao tiver essa chave retorna uma lista vazia
    final listaMasculino = mapSexo['M'] ?? <String>[];
    final listaFeminino = mapSexo['F'] ?? <String>[];

    //*aqui adicionamos as pessoas a lista de masculino ou feminino criado acima
    if (sexo == 'masculino') {
      listaMasculino.add(pessoa[0]);
    } else if (sexo == 'feminino') {
      listaFeminino.add(pessoa[0]);
    }

    //*sobrescrevendo a lista de map
    mapSexo['M'] = listaMasculino;
    mapSexo['F'] = listaFeminino;
  }

  //*Com a lista ja sobrescrita nos apresentamos ela
  final masculinos = mapSexo['M'] ?? <String>[];
  final femininos = mapSexo['F'] ?? <String>[];
  print('Masculinos -> ${masculinos.length}');
  print('Femininos -> ${femininos.length}');

  //*como ja sobrescrevi o map ali em cima eu posso fazer o print direto !!
  masculinos.forEach(print);
  femininos.forEach(print);

  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  final listaMaiorDe18 = novaList2.where((pessoinha) {
    final idade = int.tryParse(pessoinha[1]) ?? 0;
    return idade > 18;
  }).toList();
  print('Apenas um separador para listar as maiores de 18');
  for (var p in listaMaiorDe18) {
    print(p[0]);
  }

  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  //*Precisamos criar uma nova lista
  final listaPessoaOrdenada = [...novaList2];
  listaPessoaOrdenada.sort((p1, p2) {
    final idadeP1 = int.tryParse(p1[1]) ?? 0;
    final idadeP2 = int.tryParse(p2[1]) ?? 0;
    return idadeP2.compareTo(idadeP1);
  });

  final pessoaMaisVelha = listaPessoaOrdenada.first;
  print(
      'A pessoa mais velha é ${pessoaMaisVelha[0]} e tem ${pessoaMaisVelha[1]} anos');

  //*Aproveitando e pegando a pessoa mais nvoa
  final pessoaMaisNova = listaPessoaOrdenada.last;
  print(
      'A pessoa mais nova é ${pessoaMaisNova[0]} e tem ${pessoaMaisNova[1]} anos');
}
