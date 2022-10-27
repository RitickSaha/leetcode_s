import 'package:leetcode_dart/no8_leetcode.dart';
import 'package:test/test.dart';

void main() {
  group(
    '8. String to Integer (atoi)',
    () {
      test(
        'Normal number',
        () {
          expect(
            SolutionNo8().myAtoi('42'),
            equals(42),
          );
        },
      );
      test(
        'Negitive number',
        () {
          expect(
            SolutionNo8().myAtoi('-42'),
            equals(-42),
          );
        },
      );
      test(
        'Number with words',
        () {
          expect(
            SolutionNo8().myAtoi('4193 with words'),
            equals(4193),
          );
        },
      );
      test(
        'Negitive number with words',
        () {
          expect(
            SolutionNo8().myAtoi('-4193 with words'),
            equals(-4193),
          );
        },
      );
      test(
        'Number at the end of the string',
        () {
          expect(
            SolutionNo8().myAtoi('words and 987'),
            equals(0),
          );
        },
      );
      test(
        'Empty space with negetive number',
        () {
          expect(
            SolutionNo8().myAtoi('   -42'),
            equals(-42),
          );
        },
      );
      test(
        'Empty space with number',
        () {
          expect(
            SolutionNo8().myAtoi('   42'),
            equals(42),
          );
        },
      );
      test(
        'More than 32-bit integer',
        () {
          expect(
            SolutionNo8().myAtoi('-91283472332'),
            equals(-2147483648),
          );
        },
      );
      test(
        'Large set of number',
        () {
          expect(
            SolutionNo8().myAtoi('20000000000000000000'),
            equals("20000000000000000000".length > 10
                ? 2147483647
                : int.parse("20000000000000000000")),
          );
        },
      );
      test(
        'Way bigger negetive number with zeros',
        () {
          expect(
            SolutionNo8()
                .myAtoi('-000000000000000000000000000000000000000000000000001'),
            equals(-1),
          );
        },
      );
      test(
        'Way bigger number',
        () {
          expect(
            SolutionNo8().myAtoi('9223372036854775808'),
            equals(2147483647),
          );
        },
      );
    },
  );
}
