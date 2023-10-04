void main(){
  print(isPalindrome(121));
}

 bool isPalindrome(int x) {
    return x.toString() == x.toString().split('').reversed.join('');
  }