import 'package:algorithm_dart/subarray_sum_zero.dart';
import 'package:test/test.dart';

void main() {
  test('Sub array sum 0 test 1', () {
    final ans = SubArraySumZero.getSubArray([3, 4, -7, 3, 1, 3, 1, -4, -2, -2]);
    expect(ans, [[3, 4, -7], [4, -7, 3], [-7, 3, 1, 3], [3, 1, -4]]);
  });

  test('Sub array sum 0 test 2', () {
    final ans = SubArraySumZero.getSubArray([4, -6, 3, -1, 4, 2, 7]);
    expect(ans, [[4, -6, 3, -1], [-6, 3, -1, 4]]);
  });
}