void main() {
  isPalindrome("Madam");
}

bool isPalindrome(String x) {
  x = x.toLowerCase();
  String reverse = x.split('').reversed.join('');
  if (x == reverse) {
    print('Its A Palindrome');
    return true;
  } else {
    print('Its A Not Palindrome');
    return false;
  }
}
