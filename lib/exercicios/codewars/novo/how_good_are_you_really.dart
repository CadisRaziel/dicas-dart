void main() {
  betterThanAverage([6, 6], 5);
//   List<int> classPoints = [6, 6];
//   int yourPoints = 5;
//   int result = classPoints.fold<int>(
//       yourPoints, (previousValue, element) => previousValue + element);
//  double average = result / (classPoints.length + 1);
//  print("A média é: $average");
}

bool betterThanAverage(List<int> classPoints, int yourPoints) {
  int result = classPoints.fold<int>(
      yourPoints, (previousValue, element) => previousValue + element);
  double average = result / (classPoints.length + 1);
  return yourPoints > average;
}