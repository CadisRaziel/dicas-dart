import 'dart:math';

//! Até 10.000 elementos, o Merge Sort é mais rápido que o Merge Sort


void main() {
  List<int> numbers = generateRandomList(200000);
  print('Lista gerada: ${numbers.sublist(0, 10)}...');

  // Ordenar usando insertion sort e calcular o tempo de execução
  Duration insertionSortTime =
      calculateExecutionTime(insertionSort, List.from(numbers));
  print('Lista ordenada pelo Insertion Sort: ${numbers.sublist(0, 10)}...');
  print(
      'Tempo de execução do Insertion Sort: ${insertionSortTime.inMilliseconds} ms');

  // Recriar a lista para restaurar a ordem original
  numbers = generateRandomList(200000);

  // Ordenar usando merge sort e calcular o tempo de execução
  Duration mergeSortTime =
      calculateExecutionTime(mergeSort, List.from(numbers));
  print('Lista ordenada pelo Merge Sort: ${numbers.sublist(0, 10)}...');
  print('Tempo de execução do Merge Sort: ${mergeSortTime.inMilliseconds} ms');
}

List<int> generateRandomList(int length) {
  Random random = Random();
  List<int> list = List.generate(length, (_) => random.nextInt(200000));
  return list;
}

void insertionSort(List<int> list) {
  int n = list.length;
  for (int i = 1; i < n; i++) {
    int key = list[i];
    int j = i - 1;

    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j];
      j = j - 1;
    }
    list[j + 1] = key;
  }
}

void mergeSort(List<int> list) {
  if (list.length <= 1) return;

  int middleIndex = list.length ~/ 2;
  List<int> leftList = list.sublist(0, middleIndex);
  List<int> rightList = list.sublist(middleIndex);

  mergeSort(leftList);
  mergeSort(rightList);

  _merge(leftList, rightList, list);
}

void _merge(List<int> leftList, List<int> rightList, List<int> list) {
  int leftIndex = 0, rightIndex = 0, listIndex = 0;

  while (leftIndex < leftList.length && rightIndex < rightList.length) {
    if (leftList[leftIndex] <= rightList[rightIndex]) {
      list[listIndex++] = leftList[leftIndex++];
    } else {
      list[listIndex++] = rightList[rightIndex++];
    }
  }

  while (leftIndex < leftList.length) {
    list[listIndex++] = leftList[leftIndex++];
  }

  while (rightIndex < rightList.length) {
    list[listIndex++] = rightList[rightIndex++];
  }
}

Duration calculateExecutionTime(
    void Function(List<int>) function, List<int> arguments) {
  Stopwatch stopwatch = Stopwatch()..start();
  function(arguments);
  stopwatch.stop();
  return stopwatch.elapsed;
}
