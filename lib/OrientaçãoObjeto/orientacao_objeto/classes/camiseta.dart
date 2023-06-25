class Camiseta {
  //?abaixo temos atributo e metodos privado
  //*com isso eu nao consigo acessa-los fora daqui, para acessar eu preciso fazer um get set
  String? _gola;
  //*get e set para essa string privada ser acessada fora da classe
  String? get gola => _gola;
  set gola(String? gola) {
    gola = _gola;
  }

  String _tipodeLavagem2() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  //? tudo abaixo são atributos e metodos publicos, incluindo o static !!
  //*Representando uma camiseta(caracteristicas)
  //*Atributos:
  String? tamanho;
  String? cor;
  String? marca;

  //*Comportamentos é tudo aquilo que pode ser executado
  //*Funçoes denteo de classes são chamados de metodos
  String tipodeLavagem() {
    if (marca == 'Nike') {
      return 'Não pode lavar na maquina';
    } else {
      return 'Pode lavar na maquina';
    }
  }

  //*Atributos de classe
  //*Static -> é igual uma constante porém dentro de uma classe ela tem uma diferença
  //*Ao ser instanciado deve se fazer o seguinte 'NomeClasse.nome', somente isso !!
  //?Sempre procure adicionar const quando der
  static const String nome = 'oi';

  //*Metodos de classe
  static String recuperarNome() => nome;
}
