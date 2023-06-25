//? Adicionando uma função a classe String (uma classe que eu não tenho o codigo fonte)
extension SaudacaoStringExtension on String {
  String saudacao() {
    //?this -> é a a variavel que eu criei em extension 'nome'
    return 'Ola $this, bora estudar bastante hoje';
  }
}
