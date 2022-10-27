import 'dart:convert';
import 'index.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please the arguments');
    return;
  }
  Map<String, dynamic> argument = jsonDecode(arguments.first);
  dynamic output = 'Invalid input';
  try {
    switch (argument['solution'] as int) {
      case 4:
        output = SolutionNo4().findMedianSortedArrays([2, 3], [1]);
        break;
      case 8:
        output = SolutionNo8().myAtoi('-4193 with words');
        break;
      default:
        print('No such method');
    }
    print('Actual Output: $output');
    if (argument['output'] != null) {
      print('Expected Output: ${argument['output']}');
    }
  } on Exception catch (e) {
    print("Please input a valid json string");
    print(e);
  }
}
