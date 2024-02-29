class SolutionNo8 {
  int myAtoi(String s) {
    s = s.trimLeft();
    final regx = RegExp(r'^([+-]\d+)|^(\d+)');
    String numbers = regx.allMatches(s).map((e) => e.group(0)).toList().join();
    int isNegitiveNumber = numbers.indexOf('-');
    if (isNegitiveNumber > -1) {
      numbers = numbers.substring(1);
    }
    int? parsedInt;
    parsedInt = int.tryParse(numbers);
    if (parsedInt == null && numbers.length > 16) {
      numbers = numbers.substring(0, 16);
      parsedInt = int.tryParse(numbers);
    }
    return ((parsedInt ?? 0) * (isNegitiveNumber > -1 ? -1 : 1))
        .clamp(-2147483648, 2147483647);
  }
}
// TEST
