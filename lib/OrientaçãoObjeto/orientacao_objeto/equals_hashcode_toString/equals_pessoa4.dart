//*Aqui faremos a mesma coisa da classe equals_pessoa2.dart porém data class generator (plugin do vscode)

class EqualsPessoa4 {
  String nome;
  String email;
  EqualsPessoa4({
    this.nome = '',
    this.email = '',
  });

  //Ao realizar o CTRL + . em cima da 'EqualsPessoa4' ele vai mostrar 'Generate Equaly' é só clicar e pronto, ele fez todo código abaixo
  //Porém lembre-se ele não gerou o código de hashcode !!
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is EqualsPessoa4 && other.nome == nome && other.email == email;
  }

  //Repare que o hashcode eu tive que gerar manualmente
  //? para gerar automatico eu precisei entrar nas configuraões do plugin e deixa true essa opção
  //! Dart_data_class_generator › Hash Code: Enabled If true, generates a hashCode function for a data class.
  @override
  int get hashCode {
    return nome.hashCode ^ email.hashCode;
  }

  //*Aqui é para que quando fizermos isso print(p1) ele não apareça 'Instance of EqualsPessoa'
  //!para gerar é só clicar com o CTRL + . em cima do nome da classe e clicar no 'Genetator toString'
  @override
  String toString() => 'EqualsPessoa4(nome: $nome, email: $email)';
}
