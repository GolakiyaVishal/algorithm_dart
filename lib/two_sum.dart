
/// Problem:
///   Find the first match positions from given array for give number sun, do not use same element 
/// input: array [2,7,11,15] , sun 9
/// output: [0, 1]

class TwoSum {

  /// [array] -> array of the numbers 
  /// [target] -> sum of the element
  static List<int> getSum(List<int> array, int target){

    /// if the array length is shorter then 2, than throw error
    if(array.length < 2) {
      throw 'Array length must be greater then 1';
    }

    /// check for each element for matching the subarray
    /// this will take O(n* n-1) time 
    for(var i = 0; i < array.length; i++) {
      for(var j = i+1; j < array.length; j++) {
        if((array[i] + array[j]) == target){
          return [i, j];
        }
      }
    }
    return [];
  }
}