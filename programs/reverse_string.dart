String reverseString(String str) {
  var revString = str.split('').reversed.join('');
  return revString;
}

void main() {
  var input = "Hello World";
  String revStr = reverseString(input);
  print(revStr);
}
