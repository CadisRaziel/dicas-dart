//SkipWhile
Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);

  //SkipWhile -> vai pular algo conforme a condição que a gente fizer
  stream = stream.take(5).skipWhile((numero) {
    return numero < 5;
  });

  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
