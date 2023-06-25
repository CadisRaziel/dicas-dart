//*Para sempre deixarmos a lista ordenada sem precisar ficar fazendo list.sort(compare etc...)
//*Nos fazemos essa extensão e tipamos ela com a classe com a e colocamos o metodo que ela exige que e 'compareTo'
class Cliente extends Comparable<Cliente> {
  String nome;
  String telefone;
  Cliente({
    required this.nome,
    this.telefone = '',
  });

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone)';

  @override
  int compareTo(Cliente other) {
    //*Com isso ele vai orderar em ordem alfabetica
    print('chamando compareTo de $this');
    return nome.compareTo(other.nome);
  }
}
