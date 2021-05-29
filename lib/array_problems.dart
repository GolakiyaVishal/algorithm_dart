class ArrayProblems {


  /// [findDuplicateInArray] to find the duplicate values from limited range array
  static List<int> findDuplicateInArray(List<int> array) {
    /// this solution required O(n) time and O(n) extra space

    final returnable = <int>[]; // List<int>
    final visited = <int>{}; // Set<int>

    array.forEach((element) {
      if(visited.contains(element)){
        returnable.add(element);
      } else {
        visited.add(element);
      }
    });

    return returnable;
  }

  /// [findLongestSubarrayForGivenSum] to find longest subarray from array for given sum
  static List<int> findLongestSubarrayForGivenSum (List<int> array, int sum) {
    var returnable = <int>[];

    for(var i = 0; i <= array.length - 1; i++) {
      for (var j = i+1; j <= array.length; j++ ) {
        var tSum = 0;
        final sArray = array.sublist(i, j);
        sArray.forEach((element) {
          tSum += element;
        });
        if(sum == tSum && returnable.length < sArray.length) {
          returnable = sArray;
        }
      }
    }

    return returnable;
  }

}