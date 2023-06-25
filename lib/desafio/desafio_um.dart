void main() {
  //! Detalhe sobre a String
  //*                                    0     1      2            3
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  print('Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (final paciente in pacientes) {
    //? vamos retirar os '!'
    final pacienteDados = paciente.split('|');

    //?Pegamos o indice 1, aonde contem as idades, porém precisamos converter para inteiro pois o split retornou uma lista
    //? sempre use o tryParse e se ele não tiver idade eu coloco um ?? 0, para se ele não tiver ele atribui o 0
    final idade = int.tryParse(pacienteDados[1]) ?? 0;

    //? agora o dart libera para o condicional
    if (idade > 20) {
      //? porque [0]? para printar o nome do paciente
      print(
          'O paciente: ${pacienteDados[0]} é maior de 20 anos e sua idade é: ${pacienteDados[1]}');
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print(
      'Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');

  final desenvolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalistas = [];

  for (var paciente2 in pacientes) {
    //? vamos retirar os '!'
    final pacienteDados1 = paciente2.split('|');

    //?variavael para pegar o nome
    final nome = pacienteDados1[0];

    //?Achando a profissão (lembra que o 2 eu separei tudo la em cima !!)
    final profissao = pacienteDados1[2].toLowerCase();
    //TODO lembre-se comparação == mantenha tudo toLowerCase ou UperCase

    
    if(profissao == 'desenvolvedor'){
      desenvolvedores.add(nome);
    } else if (profissao == 'estudante'){
      estudantes.add(nome);
    } else if (profissao == 'dentista'){
      dentistas.add(nome);
    } else if (profissao == 'jornalista'){
      jornalistas.add(nome);
    } 
  }


  //?agora faremos um for in para apresenta-los
  for (var dev in desenvolvedores) {
    print('Os desenvolvedores são: $dev');
  }  
  for (var alunos in estudantes) {
    print('Os alunos são: $alunos');
  }
  for (var dentis in dentistas) {
    print('Os dentistas são: $dentis');
  } 
  for (var jorna in jornalistas) {
    print('Os jornalistas são: $jorna');
  }
 

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('Apresente a quantidade de pacientes que moram em SP');

  for(var pacientesss in pacientes){
     //? vamos retirar os '!'
    final pacienteDados2 = pacientesss.split('|');

    //? vamos pegar o estado do paciente
    final estado = pacienteDados2[3].toLowerCase();
    //TODO lembre-se comparação == mantenha tudo toLowerCase ou UperCase

    //? agora faremos as verificações
    if(estado == 'sp'){
      print('O ${pacienteDados2[0]} é de ${pacienteDados2[3]}');
    } else if( estado == 'mg') {
      print('O ${pacienteDados2[0]} é de ${pacienteDados2[3]}');
    }
  }
}
