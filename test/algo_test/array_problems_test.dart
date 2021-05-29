import 'package:algorithm_dart/array_problems.dart';
import 'package:test/test.dart';

void main(){
  test('check find duplicate from limited range array', (){
    final ans = ArrayProblems.findDuplicateInArray([1,2,3,3,4,5,6,7,5,9,8,8,9]);
    expect(ans, [3,5,8,9]);
  });

  test('check longest subarray with given sum', (){
    final ans = ArrayProblems.findLongestSubarrayForGivenSum([5, 6, -5, 5, 3, 5, 3, -2, 0 ], 8);
    expect(ans, [-5, 5, 3, 5]);
  });

}