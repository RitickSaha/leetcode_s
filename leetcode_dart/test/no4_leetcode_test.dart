import 'package:leetcode_dart/no4_leetcode.dart';
import 'package:test/test.dart';

void main() {
  group(
    'Finding a median of 2 sorted array',
    () {
      test(
        'Same data in both array.',
        () {
          expect(
            SolutionNo4().findMedianSortedArrays(
              [1, 2],
              [1, 2],
            ),
            equals(1.5),
          );
        },
      );
      test(
        'Different data & length in both array.',
        () {
          expect(
            SolutionNo4().findMedianSortedArrays(
              [1, 3],
              [2],
            ),
            equals(2),
          );
        },
      );
      test(
        'Different data with same length.',
        () {
          expect(
            SolutionNo4().findMedianSortedArrays(
              [1, 2],
              [3, 4],
            ),
            equals(2.5),
          );
        },
      );
      test(
        'One Empty array.',
        () {
          expect(
            SolutionNo4().findMedianSortedArrays(
              [],
              [1],
            ),
            equals(1),
          );
        },
      );
      test(
        'Both Empty array.',
        () {
          expect(
            SolutionNo4().findMedianSortedArrays(
              [],
              [],
            ),
            equals(0),
          );
        },
      );
    },
  );
}
