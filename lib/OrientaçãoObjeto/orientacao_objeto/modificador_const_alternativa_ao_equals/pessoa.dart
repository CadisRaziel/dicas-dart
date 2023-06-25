class Pessoa {
  final String name;
  final int idade;

  //*construtor 'const'
  // const no construtor -> primeiro as variavies precisam ser 'final',
  const Pessoa({
    required this.name,
    required this.idade,
  });
}
