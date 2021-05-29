import 'package:algorithm_dart/two_sum.dart';
import 'package:test/test.dart';

void main() {
  test('two sum test 1', () {
    final out = TwoSum.getSum([2, 7, 11, 15], 9);
    expect(out, [0, 1]);
  });

  test('two sum test 2', () {
    final out = TwoSum.getSum([3, 2, 4], 6);
    expect(out, [1, 2]);
  });

  test('two sum test 3', () {
    final out = TwoSum.getSum([3, 3], 6);
    expect(out, [0, 1]);
  });
}
