String reverseWords(String str) {
  List<String> words = str.split(' ');
  print(words);
  words = words.reversed.toList();
  print(words);
  String revString = words.join(' ');
  print(revString);
  return revString;

  /*
  Or
  // Give extra space on split & join string
  var revString = str.split(' ').reversed.join(' ');
  return revString;
  */
}

void main() {
  var input = "Hello World";
  String revStr = reverseWords(input);
  print(revStr);
}
