void main(){
  int value2 = findSmallestInt([78, 56, 232, 12, 8]);
  print(value2);
}

int findSmallestInt(List<int> arr) {
 return arr.reduce((value, element) => value < element ? value : element);  
}