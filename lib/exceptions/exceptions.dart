void main() {
  var idade = '28 anos';
  String? nome;

  //? As Exceptions 'On' devem sempre vir primeiros que as genericas 'err'
  //? pois ele vai vendo as execçoes em nivel hierarquico, ou seja se o erro nao cair na exeecão
  //? 'FormatException', ele vai para a debaixo ou para a generica 'err'

  //*finally -> è sempre executado indepentende se der um erro ou não
  //*s -> stackTrace retorna por onde passou dentro do dart e mostra exatamente onde iniciou o problema(vai aparecer em mais claro)
  //* catch -> é opcional, ele aceita 2 variaveis, geralmente colocamos o (e,s)

  try {
    int.parse(idade);
    nome!.toLowerCase();

    var idadeParse = int.parse(idade);
    //*Podemos forçar uma exeção
    if (idadeParse == 38) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    print(s);
    print('Erro ao converter idade');
  } on TypeError {
    print('Repare que podemos passar as estruturas ON, diretamente sem o ()');
  } catch (err) {
    print('Erro ao executar o programa');
  } finally {
    print('mesmo dando erro ou não, ele vai aparecer');
    //*Aqui colocamso fechamando da conexão com banco de dados !!
  }
}
