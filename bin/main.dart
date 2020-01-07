
void main() {
  print(rugCount([
    "AAAAAAAAAAA",
    "AABBBBBBBAA",
    "AABCCCCCBAA",
    "AABCAAACBAA",
    "AABCADACBAA",
    "AABCAAACBAA",
    "AABCCCCCBAA",
    "AABBBBBBBAA",
    "AAAAAAAAAAA"
  ])) ;
}

String chopShop(String input){
  if (input == ''){return input;}
  List<String> inputList;
  inputList = input.split('').toList();
  String target;
  target = inputList[0];
//  print(inputList);
  while(inputList.isNotEmpty && inputList[0] == target ){
    inputList.removeAt(0);
  }
  while(inputList.isNotEmpty && inputList.last == target ){
    inputList.removeLast();
  }
//  print(inputList);
  return inputList.join('');
}

List<String> processList (List<String> inputList){
  inputList = inputList.map((String word) => word = chopShop(word)).toList();
  inputList.removeWhere((String word) => word == '');
  return inputList;
}

int rugCount(List<String> inputList){
  int count;
  count = 0;
  while(inputList.isNotEmpty){
  inputList = processList(inputList);
  ++count;
}
//print(inputList);
  return count;
}