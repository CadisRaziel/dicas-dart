class Todo {
  final String quem;
  final String oque;

  //?Para eu fazer um 'Metadata' o constructor tem que ser const
  const Todo({
    required this.quem,
    required this.oque,
  });
}
