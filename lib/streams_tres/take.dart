Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callBack);

  //*take -> siginifica que ele vai receber um numero determinado de requisições, depois ele mata a stream
  //No exemplo abaixo eu coloquei ele como 5 requisições, após as 5, ele mata a stream !!!
  stream = stream.take(5);

  await for (var i in stream) {
    print(i);
  }
}

int callBack(int value) {
  return (value + 1) * 2;
}
