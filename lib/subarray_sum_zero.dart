
/// Problem:
///   Find subarrays from given array that sum is 0

class SubArraySumZero {

  static List<List<int>> getSubArray(List<int> array){

    var returnable = <List<int>>[];

    /// check for each element with rest of the array 
    /// this will take O(n * n-1) time
    for(var i = 0; i < array.length - 1; i++){
      for(var j = i + 1; j < array.length; j++){
        final arr = array.sublist(i, j);
        var sum = 0;
        arr.forEach((element) {
          sum += element;
        });
        if(0 == sum){
          returnable.add(arr);
        }
      }
    }
    print(returnable.toString());
    return returnable;
  }
}